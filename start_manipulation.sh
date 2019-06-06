#!/bin/sh



echo "objection detection"
gnome-terminal -x bash -c "rosrun kamerider_image_detection object_detection"

sleep 3

echo "move base adjust"
gnome-terminal -x bash -c "rosrun kamerider_navigation odom_adjust_for_grasp.py"

sleep 3

echo "grasp attempt"
gnome-terminal -x bash -c "rosrun turtlebot_arm_moveit_demos grasp_target_object.py"

sleep 3


exit 0 
