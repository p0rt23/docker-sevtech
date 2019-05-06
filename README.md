# SevTech Ages 

Docker image that is built from an Ubuntu base, with Java 1.8 that runs the SevTech Ages modpack.

### Installing

```
docker build -t p0rt23/sevtech:3.1.1 .

sudo docker run -d \
  --name sevtech \
  -v /home/docker/volumes/sevtech-world:/opt/sevtech/world \
  -v /home/docker/volumes/sevtech-backups:/opt/sevtech/backups \
  -p 25565:25565 \
  p0rt23/sevtech:3.1.1
```
