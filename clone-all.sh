#!/bin/bash
cd ..
echo 'Downloading template files...'

# TEMPLATES
mkdir Midas.Templates
cd Midas.Templates
git clone git@github.com:BordowyRydwan/Midas.Templates.AuthorizedMicroservice.git AuthorizedMicroservice && \
git clone git@github.com:BordowyRydwan/Midas.Templates.BaseMicroservice.git BaseMicroservice && \
git clone git@github.com:BordowyRydwan/Midas.Templates.BaseMicrofrontend.git BaseMicrofrontend
cd ..

echo 'Template files downloaded'
echo 'Downloading service files...'

# SERVICES
mkdir Midas.Services
cd Midas.Services
git clone git@github.com:BordowyRydwan/Midas.Services.Authorization.git Authorization && \
git clone git@github.com:BordowyRydwan/Midas.Services.Users.git Users && \
git clone git@github.com:BordowyRydwan/Midas.Services.Families Families && \
git clone git@github.com:BordowyRydwan/Midas.Services.FileStorage.git FileStorage && \
git clone git@github.com:BordowyRydwan/Midas.Services.Transactions.git Transactions
cd ..

echo 'Service files downloaded'
echo 'Downloading frontend files...'

# FRONTENDS
mkdir Midas.Frontends
cd Midas.Frontends
git clone git@github.com:BordowyRydwan/Midas.Frontends.Container.git Container&& \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Navigation.git Navigation && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Authorization.git Authorization && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Users.git Users && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Families.git Families && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.FileStorage.git FileStorage && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Transactions.git Transactions && \
git clone git@github.com:BordowyRydwan/Midas.Frontends.Monolith.git Monolith && \
cd ../Midas.ProjectSetup

echo 'Service files downloaded'
echo 'All files downloaded'
