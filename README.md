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
```console
$ docker run --rm \
  -v $(pwd)/out:/out \
  -v /home/foo/folder1:/mnt/folder1:ro \
  -v /home/foo/folder2:/mnt/folder2:ro \
  listdir-docker
```

## Example
```console
$ UID=$(id -u)
$ GID=$(id -g)
$ docker run --rm \
  --user=$UID:$GID \
  -v $(pwd)/out:/out \
  -v /home/foo/Downloads:/mnt/downloads:ro \
  listdir-docker
$ ls ./out
downloads
$ cat ./out/downloads
./WhatsApp.apk
./license.dat
./captures/packetcapture.cap
```

## ToDo
- cron support to update generated files periodically
