FROM osrf/ros:melodic-desktop-full

ENV NVIDIA_DRIVER_CAPABILITIES compute,utility,display

# add non-root user
RUN useradd -m vscode && \
    echo vscode ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/vscode && \
    chmod 0440 /etc/sudoers.d/vscode

ENV SHELL /bin/bash

# init rosdep
RUN rosdep update

RUN apt-get update && apt-get install -y apt-utils build-essential

RUN apt-get update && apt-get install -q -y python-catkin-tools
RUN apt-get update && apt-get install -q -y ros-$ROS_DISTRO-hector-gazebo-plugins

RUN apt-get install dbus libxext6 libxrender1 libxtst6 libxi6 libxxf86vm1 mesa-utils python3-pip x11-apps xterm iputils-ping -y

RUN apt-get update && apt-get install ros-$ROS_DISTRO-ros-control ros-$ROS_DISTRO-ros-controllers ros-$ROS_DISTRO-joy -y

# For turtlebot
## For control
RUN apt-get update && apt-get install ros-$ROS_DISTRO-kobuki-* ros-$ROS_DISTRO-yocs-controllers ros-$ROS_DISTRO-yocs-cmd-vel-mux ros-$ROS_DISTRO-ecl-streams ros-$ROS_DISTRO-linux-peripheral-interfaces -y
# ## For Camera
# RUN pip3 install pyrealsense2
# RUN pip3 install opencv-python

## For Astra
RUN apt-get install ros-*-rgbd-launch ros-*-libuvc ros-*-libuvc-camera ros-*-libuvc-ros
RUN apt-get install ros-$ROS_DISTRO-openni-* ros-$ROS_DISTRO-openni2-* ros-$ROS_DISTRO-freenect-* -y
RUN apt-get install usbutils
# RUN apt-get install openssh-server -y

## For Visual Odometry
RUN apt-get install ros-$ROS_DISTRO-depth-image-proc ros-$ROS_DISTRO-image-proc python-tk
RUN pip3 install scipy
# RUN pip3 install python-tk

## For Mobile Robot MPC
RUN apt-get install ros-$ROS_DISTRO-mpc-local-planner -y