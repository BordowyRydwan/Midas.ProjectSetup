# Midas Project Setup

Repository with scripts helping in downloading all repos from Midas Project and running it in correct order in Docker infrastructure

## Requirements
- Docker
- Docker Compose


## Create local network for Docker containers

```
docker network create midas
```

## Call order
```
sh ./clone_all.sh
sh ./compose-all.sh
```

Do not call these commands as a system root!

## Project subrepositories
| Namespace       | Name                    | Source code                                                                         | Docker port | Database |
|-----------------|-------------------------|-------------------------------------------------------------------------------------|-------------|----------|
| Midas.Templates | Base Microservice       | [LINK](https://github.com/BordowyRydwan/Midas.Templates.BaseMicroservice.git)       | N/A         | N/A      |
|                 | Authorized Microservice | [LINK](https://github.com/BordowyRydwan/Midas.Templates.AuthorizedMicroservice.git) | N/A         | N/A      |
|                 | Base Microfrontend      | [LINK](https://github.com/BordowyRydwan/Midas.Templates.BaseMicroservice.git)       | N/A         | N/A      |
| Midas.Services  | File Storage            | [LINK](https://github.com/BordowyRydwan/Midas.Services.FileStorage.git)             | 8001        | 6001     |
|                 | Authorization           | [LINK](https://github.com/BordowyRydwan/Midas.Services.Authorization.git)           | 8002        | 6002     |
|                 | Transactions            | [LINK](https://github.com/BordowyRydwan/Midas.Services.Transactions.git)            | 8003        | 6003     |
|                 | Users                   | [LINK](https://github.com/BordowyRydwan/Midas.Services.Users.git)                   | 8004        | 6004     |
|                 | Families                | [LINK](https://github.com/BordowyRydwan/Midas.Services.Families.git)                | 8005        | 6005     |
| Midas.Frontends | Container               | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Container.git)              | 4000        | N/A      |
|                 | File Storage            | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.FileStorage.git)            | 4001        | N/A      |
|                 | Authorization           | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Authorization.git)          | 4002        | N/A      |
|                 | Transactions            | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Transactions.git)           | 4003        | N/A      |
|                 | Users                   | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Users.git)                  | 4004        | N/A      |
|                 | Families                | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Families.git)               | 4005        | N/A      |
|                 | Navigation              | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Navigation.git)             | 4006        | N/A      |
|                 | Monolith                | [LINK](https://github.com/BordowyRydwan/Midas.Frontends.Monolith.git)               | 4200        | N/A      |

Monolith is a special frontend repo with monolith version of all 6 previous microfrontends combined.

## Scripts
Quick explaination to scripts on repository

### clone-all
This script clones all project repositories from section **Project subrepositories**

### compose-all
This script allows to quickly dockerize the services or frontends after any changes. Pushing to Docker Hub is going to be done right after I buy myself an organization license.