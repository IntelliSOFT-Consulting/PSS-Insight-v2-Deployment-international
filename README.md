# PSS-Insight-v2-Deployment

## Table of contents

<!-- TOC -->

* [Pre-requisites](#pre-requisites)
* [Basic Installation Steps](#basic-installation-steps)
* [Advanced Installation steps](#advanced-installation-steps)
  * [Environment variables](#environment-variables)
    * [1. Deploy DHIS2](#1-deploy-dhis2)
    * [2. Deploy PSS Insight v2 Web Apps](#2-deploy-pss-insight-v2-web-apps)
      * [Pre-requisites](#pre-requisites-1)
  * [Deploy](#deploy)
    * [Run the app deployment script](#run-the-app-deployment-script)

<!-- TOC -->

## Pre-requisites

For the installation process to run smoothly, ensure the following pre-conditions have been met. The installation script will check to ensure that all the pre-requisites have been met and will fail if one of them is not met.

- OS Architecture: **linux/amd64. Preferably Ubuntu 20.04LTS and above**
- **Docker and Docker Compose**. Instructions for installing on an Ubuntu OS can be found here
  
  Docker: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
  Docker-compose (v2): https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04. 

- **NodeJS - minimum version 14**: Instructions for installing NodeJS on an Ubuntu OS can be found here https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04
- **Yarn**: Instructions for installing Yarn can be found here https://classic.yarnpkg.com/lang/en/docs/install
- **Unzip**: You need to have unzip installed on your system. `sudo apt install unzip`
- **Git**: Ensure git is installed on your system by running `git -v`. If not installed, install it by running `sudo apt install git`

<!-- TOC -->

## Basic Installation Steps

The basic installation process below will use default parameters to perform the following actions under the hood:

* Deploy DHIS2
* Deploy PSS Insight v2 WebApps

The steps are outlined below:

1. Clone the project repository

   git clone https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Deployment-international.git
2. cd into the project directory

   cd PSS-Insight-v2-Deployment-international/international
3. Countercheck the environment variables have been set correctly. They can be found here on the [.env](./.env) file.

  (Refer to the advanced installation steps in the next section for details about the environment variables.) 


4. Make the installation script executable

   sudo chmod +x ./international_script.sh
5. Run the installation script


         sudo ./international_script.sh


*The process will run for a few minutes.*

Once the process concludes, the application will be accessible via the http://localhost:8080 link

## Advanced Installation steps


    This is an alternative installation process that allows you to install the PSS Insight v2 
    components one by one as you update the system parameters.
    
    System parameters are environment variables in the [.env](./international/.env) file. 

    Below is a description of the various environment variables:

### Environment variables

| Variable                        | Description                                                                                                                                                           |
| ------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| SOURCE_USERNAME                 | DHIS2 Password: district                                                                                                                                              |
| SOURCE_PASSWORD                 | DHIS2 username: admin                                                                                                                                                 |
| SOURCE_URL                      | URL Path to the national instance`` e.g.  http://pssnational.intellisoftkenya.com                                                                              |
| DHIS2_CONFIGURATION_RELEASE_URL | Path to the Configuration DHIS2 WebApp release.`` https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-International-Dhis2App/archive/refs/tags/v1.0.0.zip |
| DHIS2_DATA_IMPORT_RELEASE_URL   | Path to the Data Import DHIS2 WebApp release.`` https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Data-Import-Admin/archive/refs/tags/v1.0.0.zip        |

> Note for the DHIS2 WebApps release path environment variables i.e. DHIS2_CONFIGURATION_RELEASE_URL & DHIS2_DATA_IMPORT_RELEASE_URL:
>
> - You have to include the `http://` or `https://` protocol in the URLs
> - The URLs should point to the zip files where the WebApps have been released.
> - Only add the urls for the apps you want to deploy. If you don't want to deploy an app, leave the field for that app blank.
> - At least one app url must be specified. If none has been specified, the app deployment process will stop.

### 1. Deploy DHIS2

- Clone this repository into your local environment

  git clone https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Deployment-international.git
- cd into the `international` folder.

  cd international
- Follow the instructions detailed [here](./international/README.md)

### 2. Deploy PSS Insight v2 Web Apps


The following process will deploy these custom web apps that are all part of the PSS V2 application:

- [PSS Insight v2 Configuration app](https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Intenational-Dhis2App)
- [PSS Insight v2 Data Import app](https://github.com/IntelliSOFT-Consulting/PSS-Insight-v2-Data-Import-Admin)

#### Pre-requisites

- Ensure that your national instance of DHIS2 is running (This is the instance just installed).
- Ensure you have the PSS Insight v2 International instance URL.

### Deploy

#### Run the app deployment script

- cd into the scripts folder.

  cd scripts/
- run the following command to make the script executable

  sudo chmod +x ./webapps.sh
- run the webapps script to deploy the apps to your DHIS2 instance

      
      ./webapps.sh
- Enter the required keys if prompted. (You may not be prompted if all the environment variables were set in the [.env](./national/.env) file)

*This process will take a few minutes to complete as the apps are built and deployed.*


