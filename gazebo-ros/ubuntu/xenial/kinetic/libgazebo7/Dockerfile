FROM osrf/ros:kinetic-desktop-full-xenial

# FIX :: deb messages
ARG DEBIAN_FRONTEND=noninteractive
#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# INSTALL :: Common dependencies commands as: wget, sudo, curl
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils && rm -rf /var/lib/apt/lists

RUN apt-get update && apt-get install -y \
    wget \
    sudo \
    curl \
    && rm -rf /var/lib/apt/lists/*

# INSTALL :: ROS Gazebo packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-gazebo-* \
    && rm -rf /var/lib/apt/lists/*

# INSTALL :: Gazebo 7.0 (lib7)

# install packages
RUN apt-get update && apt-get install -q -y \
    dirmngr \
    gnupg2 \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo7=7.16.0-1* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]

