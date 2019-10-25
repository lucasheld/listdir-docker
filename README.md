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

## ToDo
- add option to change cron schedule
