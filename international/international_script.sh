#!/bin/bash


# Ensure docker and docker compose are installed

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker before running this script."
    exit 1
fi

if ! command -v docker compose &> /dev/null; then
    echo "Docker Compose is not installed. Please install Docker Compose before running this script."
    exit 1
fi

if ! command -v unzip &>/dev/null; then
    tput setaf 1
    echo "unzip is not installed. Please install unzip before running this script."
    exit 1
fi

node_version=$(node -v)
if [[ $node_version =~ ^v([0-9]+)\. ]]; then
    node_major_version="${BASH_REMATCH[1]}"
    if [[ $node_major_version -lt 16 ]]; then
        tput setaf 1
        echo "node version must be >= 16. Please update node before running this script."
        exit 1
    fi
fi


# Set environment variables for d2-cluster-2380-core-1
DHIS2_HOME=/path/to/d2-cluster-2380_home
CATALINA_OPTS="-Dcontext.path='' -Dlog4j2.configurationFile=$DHIS2_HOME/log4j2.xml"
PATH=/usr/local/tomcat/bin:/usr/local/openjdk-11/bin:$PATH
JAVA_HOME=/usr/local/openjdk-11
LANG=C.UTF-8
JAVA_VERSION=11.0.15
CATALINA_HOME=/usr/local/tomcat
TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib

# Set environment variables for d2-cluster-2380-db-1
POSTGRES_USER=dhis
POSTGRES_PASSWORD=dhis
POSTGRES_DB=dhis2
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin:$PATH
GOSU_VERSION=1.16
LANG=en_US.utf8
PG_MAJOR=12
PG_VERSION=12.14-1.pgdg110+1
PGDATA=/var/lib/postgresql/data
POSTGIS_MAJOR=3
POSTGIS_VERSION=3.3.2+dfsg-1.pgdg110+1

# Set environment variables for d2-cluster-2380-gateway-1
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NGINX_VERSION=1.23.3
PKG_RELEASE=1
NJS_VERSION=0.7.9
NGINX_PROXY_VERSION=1.2.1-14-gabcef6b
DOCKER_GEN_VERSION=0.10.1
DOCKER_HOST=unix:///tmp/docker.sock

# Set environment variables for dhis_pss_international
PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
JAVA_HOME=/usr/local/openjdk-11
LANG=C.UTF-8
JAVA_VERSION=11.0.16

# Set environment variables for international_db
POSTGRES_DB=international_db
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH
LANG=en_US.utf8
PG_MAJOR=14
PG_VERSION=14.1
PG_SHA256=4d3c101ea7ae38982f06bdc73758b53727fb6402ecd9382006fa5ecc7c2ca41f
PGDATA=/var/lib/postgresql/data
dhis2_port=8080

# Start the services using docker compose
echo "Starting services using docker compose..."
docker compose up -d

# Wait for a while to allow containers to fully start
echo "Waiting for containers to start..."
sleep 10

# Display the running containers
echo "Running containers:"
docker ps

# check if the DHIS2 core server is running before proceeding
echo "Checking if the DHIS2 core server is running..."

while IFS= read -r line; do
    # skip comments
    if [[ $line =~ ^# ]]; then
        continue
    fi
    if [[ $line =~ ^DHIS2_CORE_PORT=(.*)$ ]]; then
        dhis2_port="${BASH_REMATCH[1]}"
    fi
done <./.env

DHIS2_URL="http://localhost:$dhis2_port"
HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $DHIS2_URL)


while [ $HTTP_RESPONSE -ne 200 ] && [ $HTTP_RESPONSE -ne 302 ]; do
    echo "DHIS2 core server is not running. Waiting for 10 seconds..."
    sleep 10
    HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $DHIS2_URL)
done

echo "DHIS2 core server is running."


echo "Seeding DHIS2 database..."
./scripts/seed.sh db/dhis2_backup_20231031.sql.gz

echo "Adding custom CSS..."




echo "Installing DHIS2 apps..."
echo "making sure the script is executable..."
sudo chmod +x ./scripts/webapps.sh
cd scripts && ./webapps.sh

echo "Seeding DHIS2 database..."
./seed.sh ../db/*.gz

echo "Deployment completed successfully!"
