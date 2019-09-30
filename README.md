# DockerIt
Use Docker containers for tests and code validation!

![Screenshot from 2019-09-30 12-51-31](https://user-images.githubusercontent.com/32513366/65895032-24407080-e381-11e9-9f9e-8212fde3ca4f.png)

Useful docker images for robotic projects: https://hub.docker.com/u/bircimatec

## Install Docker
``
$ sudo apt-get install docker.io
``

## Docker basic commands
- Build a *Dockerfile*

``
$ docker build -t bircimatec/name:tag .
``

- Kill a container

``
$ docker kill containerName
``

- List all images in your computer

``
$ docker image ls
``

- List all containers running in your computer

``
$ docker container ls
``

- Erase all stopped containers

``
$ docker container prune
``


## Save your images into BIR DockerHub
- First, you need to get acess to [link](https://hub.docker.com/u/bircimatec). For this, you need to talk to *Gustavo Rezende*.
- After getting acess and built your image, follow the instructions:

(1) Login in your Docker Account through terminal

``
$ docker login --username=yourUserNameInDockerHub
``

(2) Push to docker hub repository

``
$ docker push bircimatec/name:tag
``

**(!) Delete *.json* file after your push for password security.**
