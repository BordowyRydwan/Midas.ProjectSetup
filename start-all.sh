#!/bin/bash

cd ..

docker-compose -f Midas.Services/Authorization/docker-compose.yml -f Midas.Frontends/Authorization/docker-compose.yml -p midas-authorization start db frontend && \
docker-compose -f Midas.Services/FileStorage/docker-compose.yml -f Midas.Frontends/FileStorage/docker-compose.yml -p midas-files start db frontend && \
docker-compose -f Midas.Services/Transactions/docker-compose.yml -f Midas.Frontends/Transactions/docker-compose.yml -p midas-transactions start db frontend  && \
docker-compose -f Midas.Services/Families/docker-compose.yml -f Midas.Frontends/Families/docker-compose.yml -p midas-families start db frontend && \
docker-compose -f Midas.Services/Users/docker-compose.yml -f Midas.Frontends/Users/docker-compose.yml -p midas-users start db frontend &&\
docker-compose -f Midas.Frontends/Container/docker-compose.yml -p midas-container start root-container &&\
docker-compose -f Midas.Frontends/Navigation/docker-compose.yml -p midas-navigation start frontend
docker-compose -f Midas.Frontends/Monolith/docker-compose.yml -p midas-monolith start frontend

# sleep for waiting database to load
echo 'Waiting for databases to run...'
sleep 10s

docker-compose -f Midas.Services/Authorization/docker-compose.yml -f Midas.Frontends/Authorization/docker-compose.yml -p midas-authorization start web && \
docker-compose -f Midas.Services/FileStorage/docker-compose.yml -f Midas.Frontends/FileStorage/docker-compose.yml -p midas-files start web && \
docker-compose -f Midas.Services/Transactions/docker-compose.yml -f Midas.Frontends/Transactions/docker-compose.yml -p midas-transactions start web  && \
docker-compose -f Midas.Services/Families/docker-compose.yml -f Midas.Frontends/Families/docker-compose.yml -p midas-families start web   && \
docker-compose -f Midas.Services/Users/docker-compose.yml -f Midas.Frontends/Users/docker-compose.yml -p midas-users start web 

cd Midas.ProjectSetup