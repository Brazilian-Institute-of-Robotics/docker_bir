# docker_bir
This repository provides a minimum template configuration so that the container's user home folder is mirrored in the host, making its files persistent.

---
## Usage

1. Clone (or download) this repository:
```
git clone git@github.com:Brazilian-Institute-of-Robotics/docker_bir.git
```
2. Adapt `Dockerfile` to your needs.
In this example, configuration was set up to work with ROS2 Foxy. You
may want to rename the image in both `Dockerfile` and `run-devel.bash`.

1. Run `run-devel.bash` (make sure it has execute permission):

```
chmod +x run-devel.bash
./run-devel.bash
```

The `home` folder of this repository will mirror and persist all the data of the container's home folder.

---
## Tip

It might be helpful to have a terminal gathering all relevant information for the docker user such as the images, the running, and the stopped containers.

For that, add the
following to your host's `~/.bash_aliases`:

```
alias docker_status='echo === IMAGES =============== && docker images && echo && \
             echo === RUNNING CONTAINERS === && docker ps && echo && \
             echo === ALL CONTAINERS ======= && docker ps -a'
alias docker_monitor='while true; clear; do docker_status; sleep 5; done'
```
Then:
```
source ~/.bash_aliases
docker_monitor
```

---
## References
- http://wiki.ros.org/docker/Tutorials/GUI
- https://docs.docker.com/engine/reference/commandline/docker/

