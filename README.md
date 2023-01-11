
## Beskrivning

I kursen DB2022 på IT-Högskolan skulle vi resovisa på färdigheter i SQL, Normalisering samt Java mot relationsdatabas. 

Detta är min redovisning för Normaliseringen av databasen UNF.

## Instruktioner

Git Bash
```bash
git clone https://github.com/HeyUitsMe/db2022-normalisering.git
cd db2022-normalisering/
docker ps
docker start DockerContainer
docker cp denormalized-data.csv DockerContainer:/var/lib/mysql-files
winpty docker exec -i DockerContainer mysql -uiths -piths < normalisering.sql

winpty docker exec -it DockerContainer bash
```

## Container
```bash
mysql -piths -uiths
```

## MySQL
```sql
SHOW databases;
USE iths;
SHOW tables;
```
