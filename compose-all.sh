#!/bin/bash

cd ..
docker-compose -f services/Midas.Services.Authorization/docker-compose.yml up && \
docker-compose -f services/Midas.Services.Users/docker-compose.yml up && \
docker-compose -f services/Midas.Services.Families/docker-compose.yml up && \
docker-compose -f services/Midas.Services.FileStorage/docker-compose.yml up && \
docker-compose -f services/Midas.Services.Transactions/docker-compose.yml up && \

docker-compose -f frontends/Midas.Frontends.Authorization/docker-compose.yml up && \
docker-compose -f frontends/Midas.Frontends.Container/docker-compose.yml up && \
docker-compose -f frontends/Midas.Frontends.Navigation/docker-compose.yml up && \
docker-compose -f frontends/Midas.Frontends.Users/docker-compose.yml up && \
docker-compose -f frontends/Midas.Frontends.Families/docker-compose.yml up && \
docker-compose -f frontends/Midas.Frontends.FileStorage/docker-compose.yml up && \
docker-compose -f frontends/Midas.Frontends.Transactions/docker-compose.yml up

