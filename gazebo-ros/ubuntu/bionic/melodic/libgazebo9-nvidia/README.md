## Dependencies

Install nvidia-docker2: https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)

## Run

``$ docker run -it --rm --env="DISPLAY=$DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"  --runtime=nvidia --name gazebo-nvidia bir/gazebo-ros:lib9-melodic-nvidia gazebo``

## More info

http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration#nvidia-docker2