# Midas Project Setup

Repo with scripts helping in downloading all repos from Midas Project and running it in correct order in Docker infrastructure

## Requirements
- Docker
- Docker Compose


## Create local netowrk for Docker containers

```
docker network create midas
```

## Call order
```
sh ./clone_all.sh
sh ./compose-all.sh
```

Do not call these commands as a system root!
