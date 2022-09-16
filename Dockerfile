FROM osrf/ros2:devel-bionic

ENV NO_AT_BRIDGE 1
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update > /dev/null 2>&1

# Install minimum configuration for any image
RUN apt-get install -y \
            apt-utils \
            bash-completion \
            git \
            ssh-client \
            sudo \
            terminator \
            x11-apps

# Add new sudo user for using X server
ENV USERNAME docker
RUN useradd -m $USERNAME && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    usermod --shell /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    # Replace 1000 with your user/group id
    usermod  --uid 1000 $USERNAME && \
    groupmod --gid 1000 $USERNAME

USER docker

WORKDIR /home/docker
