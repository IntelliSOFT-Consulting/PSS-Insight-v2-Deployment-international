#!/bin/bash

deploy_dhis2_app() {
    echo "Downloading the release..."

    # check if the release is a zip file
    if [[ ! $1 =~ \.zip$ ]]; then
        tput setaf 1
        echo "The release must be a zip file. Please check the release URL and try again."
        exit 1
    fi

    # download the release zip file
    curl -L -o app.zip "$1"

    # extract the zip file
    unzip -q app.zip

    # get the app folder name: check any folder that starts with PSS
    app_folder=$(find . -maxdepth 1 -type d -name "PSS*" -print -quit)

    echo "Extracted the release to $app_folder"

    # remove the zip file
    rm app.zip

    # change directory to the app folder
    cd "$app_folder" || exit
    rm yarn.lock
    # create a .env file
    echo "REACT_APP_SERVER_URL=$dhis2_url" >.env

    # install dependencies, build and deploy the app
    echo "Installing dependencies..."
    yarn install 2> >(grep -v warning 1>&2)

    echo "Building the app..."
    yarn build

    echo "Deploying the app..."
    yarn deploy $dhis2_url --username $username --password $password

    echo "Cleaning up..."
    cd ..
    rm -rf "$app_folder"
}

# initialize empty variables
dhis2_url=""
username=""
password=""

config_app_release=""
data_import_app_release=""

while IFS= read -r line; do
    # skip comments
    if [[ $line =~ ^# ]]; then
        continue
    fi
    if [[ $line =~ ^SOURCE_URL=(.*)$ ]]; then
        dhis2_url="${BASH_REMATCH[1]}"
        if [[ -z "$dhis2_url" ]]; then
            dhis2_url="https://global.pssinsight.org/api/events"
        else
            dhis2_url="${dhis2_url%/api/*}"
        fi
    elif [[ $line =~ ^SOURCE_USERNAME=(.*)$ ]]; then
        username="${BASH_REMATCH[1]}"
    elif [[ $line =~ ^SOURCE_PASSWORD=(.*)$ ]]; then
        password="${BASH_REMATCH[1]}"
    elif [[ $line =~ ^DHIS2_CONFIG_RELEASE_URL=(.*)$ ]]; then
        config_app_release="${BASH_REMATCH[1]}"
    elif [[ $line =~ ^DHIS2_DATA_IMPORT_RELEASE_URL=(.*)$ ]]; then
        data_import_app_release="${BASH_REMATCH[1]}"
    fi
done <./.env

# ask for the DHIS2 URL if it is not set in the .env file
if [[ -z $dhis2_url ]]; then
    read -p "Enter the DHIS2 URL: " dhis2_url
    if [[ ! $dhis2_url =~ ^https?:// ]]; then
        tput setaf 1
        echo "Invalid URL. Please enter a valid URL."
        exit 1
    fi
fi

# ask for the DHIS2 username if it is not set in the .env file
if [[ -z $username ]]; then
    read -p "Enter your DHIS2 username: " username
    if [[ -z $username ]]; then
        tput setaf 1
        echo "Username cannot be empty. Please enter a valid username."
        exit 1
    fi
fi

# ask for the DHIS2 password if it is not set in the .env file
if [[ -z $password ]]; then

    read -s -p "Enter your DHIS2 password: " password
    if [[ -z $password ]]; then
        tput setaf 1
        echo "Password cannot be empty. Please enter a valid password."
        exit 1
    fi
fi

# check if the credentials are correct
echo ""
echo "Checking credentials..."
response=$(curl -s -o /dev/null -w "%{http_code}" "$dhis2_url/api/me" --user "$username:$password")
if [[ $response -ne 200 ]]; then
    tput setaf 1
    echo "Invalid credentials. Please check your credentials and try again."
    exit 1
fi

# if all releases do not have a value, throw an error and exit
if [[ -z $config_app_release && -z $data_import_app_release ]]; then
    tput setaf 1
    echo "Please set the release URLs for the apps in the .env file."
    exit 1
fi

# only deploy the apps that have a release URL
if [[ ! -z $config_app_release ]]; then
    echo "Deploying Configuration app..."
    deploy_dhis2_app "$config_app_release"
fi

if [[ ! -z $data_import_app_release ]]; then
    echo "Deploying Data Import app..."
    deploy_dhis2_app "$data_import_app_release"
fi

tput setaf 2
echo "✨ All apps deployed successfully!"
