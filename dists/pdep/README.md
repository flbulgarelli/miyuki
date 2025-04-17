PDEP Distribution
==================

## Download sqlite3 database

1. Download `pdep` database from [here](https://drive.google.com/file/d/1ecb0zk7EDY-71P_H-2lvX26DrsWGLOrj/view?usp=sharing)
2. Rename and copy it in `dists/pdep/development.sqlite3`

## Start a full running system

```
docker compose -f docker/docker-compose.yml -f dists/pdep/docker-compose.yml  up -d
```
