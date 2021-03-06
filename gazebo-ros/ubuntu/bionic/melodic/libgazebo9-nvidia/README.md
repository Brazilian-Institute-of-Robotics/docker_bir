## Dependencies

Install nvidia-docker2: https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)

**(!) Warning (!)**: To install sucessfully **nvidia-docker2**, will be necessary to install NVidia drivers for your GPU. This driver allows a more fluid gazebo application (without lags), however an improper installation may result in a **system crash** and the need to reinstall your OS again! so I recommend caution. If you choose to not install **nvidia-docker2**, gazebo will run, but slower.

## Build image

``
$ docker build -t bircimatec/gazebo-ros:lib9-melodic-nvidia .
``

## Run
``
$ xhost +local:root
``

``
$ docker run -it --rm --env="DISPLAY=$DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"  --runtime=nvidia --name gazebo-nvidia bircimatec/gazebo-ros:lib9-melodic-nvidia gazebo
``

``
$ xhost -local:root #Remove X Server acess (after using your container, strictly necessary)
``


## More info

http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration#nvidia-docker2
