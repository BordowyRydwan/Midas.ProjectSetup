#!/bin/bash
cd ..
echo 'Downloading template files...'

# TEMPLATES
mkdir templates
cd templates
git clone git@github.com:BordowyRydwan/Midas.Templates.AuthorizedMicroservice.git && \
git clone git@github.com:BordowyRydwan/Midas.Templates.BaseMicroservice.git && \
git clone git@github.com:BordowyRydwan/Midas.Templates.BaseMicrofrontend.git
cd ..

echo 'Template files downloaded'
echo 'Downloading service files...'

# SERVICES
mkdir services
cd services
git clone git@github.com:BordowyRydwan/Midas.Services.Authorization.git && \
git clone git@github.com:BordowyRydwan/Midas.Services.Users.git && \
git clone git@github.com:BordowyRydwan/Midas.Services.Families && \
git clone git@github.com:BordowyRydwan/Midas.Services.FileStorage.git && \
git clone git@github.com:BordowyRydwan/Midas.Services.Transactions.git
cd ..

echo 'Service files downloaded'
echo 'Downloading frontend files...'

# FRONTENDS
mkdir frontends
cd frontends
git clone git@github.com:BordowyRydwan/Midas.Frontends.Container.git && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Navigation.git && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Authorization.git && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Users.git && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Families.git && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.FileStorage.git && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Transactions.git && \
cd ../Midas.ProjectFiles

echo 'Service files downloaded'
echo 'All files downloaded'
