# Dockerfile: Ubuntu 16.04 with ROS Kinetic
**Description**
- Full-desktop version for ROS
- Gazebo 7 installed only

## Dependencies
Nothing to add.

## Build image
``
$ docker build -t bircimatec/gazebo-ros:lib7-kinetic .
``

## Run
``
$ docker run -it --name gazebo-kinetic bircimatec/gazebo-ros:lib7-kinetic
``

## More info
Nothing listed.
