# PSS-Insight-v2-Deployment

## Table of contents
<!-- TOC -->
* [PSS-Insight-v2-Deployment](#pss-insight-v2-deployment)
    * [Table of contents](#table-of-contents)
    * [Pre-requisites](#pre-requisites)
        * [Steps](#steps)
    * [Installation steps](#installation-steps)
        * [1. Deploy DHIS2](#1-deploy-dhis2)
        * [2. Deploy PSS Insight v2 Web Apps](#2-deploy-pss-insight-v2-web-apps)
            * [Pre-requisites](#pre-requisites-1)
            * [Run deployment script](#run-deployment-script)
<!-- TOC -->
## Pre-requisites

- OS Architecture: **linux/amd64. Preferably Ubuntu 20.04LTS and above**
- **Docker and Docker Compose**. Instructions for installing on an Ubuntu OS can be found here https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04
- **NodeJS - minimum version 14**: Instructions for installing NodeJS on an Ubuntu OS can be found here https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04
- **Yarn**: Instructions for installing Yarn can be found here https://classic.yarnpkg.com/lang/en/docs/install
- **Unzip**: You need to have unzip installed on your system.

### Steps
The installation process involves 2 stages:

1. Deploy DHIS2

2. Deploy PSS Insight v2 WebApps
## Installation steps
#### 1. Deploy DHIS2

- Clone this repository into to your local environment

```git clone https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Deployment-national.git```
- cd into the `international` folder
- Follow the instructions detailed [here](./international/README.md)

#### 2. Deploy PSS Insight v2 Web Apps

The following process will deploy the these custom web apps that are all part of the PSS V2 application:
- [PSS Insight v2 Configuration app](https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Intenational-Dhis2App)
- [PSS Insight v2 Data Import app](https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Data-Import-Admin)

##### Pre-requisites

- **DHIS2 Server instances**:
    - Ensure that your national instance of DHIS2 is running (This is the instance just installed).
    - Ensure that you have the URL to the international instance.
- Confirm that the following environment variables have been set correctly in the [.env](./international/.env) file

#### .env file setup
| Variable        | Description                                                                                                  |
|-----------------|--------------------------------------------------------------------------------------------------------------|
| SOURCE_USERNAME | URL Path to the national instance e.g.  http://pssnational.intellisoftkenya.com                              |
| SOURCE_PASSWORD | DHIS2 username: admin                                                                                        |
| SOURCE_URL      | DHIS2 Password: district                                                                                     |
| DHIS2_CONFIGURATION_RELEASE_URL | https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-International-Dhis2App/archive/refs/tags/v1.0.0.zip |
| DHIS2_DATA_IMPORT_RELEASE_URL | https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Data-Import-Admin/archive/refs/tags/v1.0.0.zip      |

> Note:

- You have to include the `http://` or `https://` protocol in the URLs
- The URLs should point to the zip files of the apps.
- Only add the urls for the apps you want to deploy. If you don't want to deploy an app, leave the field for that app blank.
- At least one app must be deployed. Failure to deploy at least one app will result in an error.

### Deploy


##### Run the app deployment script
- cd into the scripts folder. `cd scripts/`
- run `sudo chmod 755 ./webapps.sh` to make the script executable
- run `./webapps.sh` to deploy the apps to your DHIS2 instance
- Enter the required keys as prompted (You may not be prompted if the keys are found in the [.env](./national/.env) file)

*This process will take a few minutes to complete as the apps are built and deployed*

