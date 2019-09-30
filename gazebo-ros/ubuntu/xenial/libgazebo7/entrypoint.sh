#!/bin/bash
set -e

# setup gazebo environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "/usr/share/gazebo/setup.sh"
exec "$@"
