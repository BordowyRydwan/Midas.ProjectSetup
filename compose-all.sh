#!/bin/bash

cd ..
docker-compose -f Midas.Services/Authorization/docker-compose.yml up && \
docker-compose -f Midas.Services/Users/docker-compose.yml up && \
docker-compose -f Midas.Services/Families/docker-compose.yml up && \
docker-compose -f Midas.Services/FileStorage/docker-compose.yml up && \
docker-compose -f Midas.Services/Transactions/docker-compose.yml up && \

docker-compose -f Midas.Frontends/Authorization/docker-compose.yml up && \
docker-compose -f Midas.Frontends/Container/docker-compose.yml up && \
docker-compose -f Midas.Frontends/Navigation/docker-compose.yml up && \
docker-compose -f Midas.Frontends/Users/docker-compose.yml up && \
docker-compose -f Midas.Frontends/Families/docker-compose.yml up && \
docker-compose -f Midas.Frontends/FileStorage/docker-compose.yml up && \
docker-compose -f Midas.Frontends/Transactions/docker-compose.yml up

