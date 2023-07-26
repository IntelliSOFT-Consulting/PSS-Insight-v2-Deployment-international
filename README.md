# PSS-Insight-v2-Deployment

## Deployment Instructions

### Pre-requisites

- OS Architecture: **linux/amd64**  
- Docker and Docker Compose should be installed on your system. Instructions for installing on an Ubuntu OS can be found here https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04

### Step 1: Clone the Repository

 - Clone this repository into to your local environment
 - cd into the `national` folder to start the network setup

### Step 2: Deployment via Docker
 - Follow the instructions detailed [here](./national/README.md)

### Step 3: Deploy custom apps

#### Pre-requisites

DHIS2 Server: You need to have a running DHIS2 instance accessible over the internet.
NodeJS: You need to have NodeJS V 14+ installed on your system. Instructions for installing NodeJS on an Ubuntu OS can be found here https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04
Yarn: You need to have Yarn installed on your system. Instructions for installing Yarn can be found here https://classic.yarnpkg.com/lang/en/docs/install

#### Required keys
| Field | Description | Example |
| --- | --- | --- |
| Enter the DHIS2 URL for the national instance | The URL of the DHIS2 instance you're deploying the app to | http://pssnational2.intellisoftkenya.com|
| Enter your DHIS2 username for the national instance | The username of the DHIS2 instance | admin |
| Enter your DHIS2 password for the national instance | The password of the DHIS2 instance | district |
| Enter the backend URL for national instance | The URL of the backend instance | https://pss-insight-backend-current.com |
| Enter the backend URL for the international instance | The URL of the backend of international instance | https://pss-insight-backend-international.com |

#### Deploy
- run `sudo chmod 755 ./webapps.sh` to make the script executable
- run `./webapps.sh` to deploy the apps to your DHIS2 instance
- Enter the required keys as prompted

