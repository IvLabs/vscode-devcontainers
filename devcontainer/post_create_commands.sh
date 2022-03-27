#! bin/bash

# Fix Qt rendering bugs
echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc
echo "export QT_GRAPHICSSYSTEM="native"" >> ~/.bashrc


echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc
echo "source devel/setup.bash" >> ~/.bashrc

# Turtlebot specific specific
echo "source src/turtlebot-melodic/setup_create.sh" >> ~/.bashrc
echo "source src/turtlebot-melodic/setup_kobuki.sh" >> ~/.bashrc

# echo "export ROS_MASTER_URI=http://localhost:11311" >> ~/.bashrc
# IP=$(hostname -i) 
# echo "export ROS_HOSTNAME=$IP" >> ~/.bashrc

source ~/.bashrc