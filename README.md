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
  -e FOLDERS="/mnt/folder1;/mnt/folder2" \
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
  -e FOLDERS="/mnt/images;/mnt/downloads" \
  -v $(pwd)/out:/out \
  -v /home/foo/images:/mnt/images:ro \
  -v /home/foo/downloads:/mnt/downloads:ro \
  listdir-docker
$ ls ./out
mnt_images  mnt_downloads
$ cat ./out/mnt_downloads                    
/home/foo/downloads/WhatsApp.apk
/home/foo/downloads/license.dat
/home/foo/downloads/packetcapture.cap
```

## ToDo
- cron support to update generated files periodically
