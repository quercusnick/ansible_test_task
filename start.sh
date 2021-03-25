#!/bin/bash

docker build -t testtask:latest -f Docerfile.dockerfile .

docker rm -f ansible_host
docker rm -f target1
docker rm -f target2
docker rm -f target3

docker run --privileged -d -p 2222:22 --name ansible_host testtask:latest
docker run --privileged -d --name target1 testtask:latest
docker run --privileged -d --name target2 testtask:latest
docker run --privileged -d --name target3 testtask:latest

docker exec ansible_host  sed -i 's/centos ALL=(ALL:ALL) NOPASSWD: ALL/centos ALL=(ALL:ALL) ALL/g' /etc/sudoers
echo 'passwd2' | docker exec -i ansible_host  passwd centos --stdin
