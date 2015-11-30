#!/usr/bin/env python

import roslib
import rospy
from cloud_robot.msg import Complex 
from random import random

rospy.init_node('complex_publisher')
pub = rospy.Publisher('complex', Complex, queue_size = 20)
rate = rospy.Rate(2)

while not rospy.is_shutdown(): 
    msg = Complex()
    msg.real = random()
    msg.imaginary = random()
    pub.publish(msg)
    print "publish Complex real: %f imaginary: %f" % (msg.real, msg.imaginary)
    rate.sleep()
