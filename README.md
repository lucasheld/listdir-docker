[![Docker Build](https://img.shields.io/docker/cloud/build/lucasheld/listdir-docker)](https://hub.docker.com/r/lucasheld/listdir-docker)
[![Docker Image Size](https://img.shields.io/docker/image-size/lucasheld/listdir-docker/latest)](https://hub.docker.com/r/lucasheld/listdir-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/lucasheld/listdir-docker)](https://hub.docker.com/r/lucasheld/listdir-docker)

listdir-docker
==============
Docker container that writes directory structures to files.

## Build
```console
$ git clone https://github.com/lucasheld/listdir-docker
$ cd listdir-docker
$ docker build -t listdir-docker .
```

## Usage
```
listdir-docker --help    print this help message
listdir-docker           list directories and exit
listdir-docker cron      list directories in cron job
```

```console
$ mkdir out
$ UID=$(id -u)
$ GID=$(id -g)
$ docker run --rm \
  -e UID=${UID} \
  -e GID=${GID} \
  -v $(pwd)/out:/out \
  -v /home/foo/folder1:/mnt/folder1:ro \
  -v /home/foo/folder2:/mnt/folder2:ro \
  listdir-docker
```
