#!/bin/bash

cd ..
docker-compose -p midas-authorization -f Midas.Services/Authorization/docker-compose.yml up && \
docker-compose -p midas-users -f Midas.Services/Users/docker-compose.yml up && \
docker-compose -p midas-families -f Midas.Services/Families/docker-compose.yml up && \
docker-compose -p midas-files -f Midas.Services/FileStorage/docker-compose.yml up && \
docker-compose -p midas-transactions -f Midas.Services/Transactions/docker-compose.yml up && \

docker-compose -p midas-authorization -f Midas.Frontends/Authorization/docker-compose.yml up && \
docker-compose -p midas-container -f Midas.Frontends/Container/docker-compose.yml up && \
docker-compose -p midas-navigation -f Midas.Frontends/Navigation/docker-compose.yml up && \
docker-compose -p midas-users -f Midas.Frontends/Users/docker-compose.yml up && \
docker-compose -p midas-families -f Midas.Frontends/Families/docker-compose.yml up && \
docker-compose -p midas-files -f Midas.Frontends/FileStorage/docker-compose.yml up && \
docker-compose -p midas-transactions -f Midas.Frontends/Transactions/docker-compose.yml up

