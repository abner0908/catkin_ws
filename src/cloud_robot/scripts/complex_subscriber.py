#!/usr/bin/env python

import roslib
import rospy
from cloud_robot.msg import Complex

def callback(msg):
    print 'Real:', msg.real
    print 'Imaginary:', msg.imaginary 
    print

rospy.init_node('complex_subscriber')
sub = rospy.Subscriber('complex', Complex, callback)
rospy.spin()
