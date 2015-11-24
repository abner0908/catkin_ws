#!/usr/bin/env python
import rospy
from std_msgs.msg import Time

def callback(data):
    diff = rospy.Time.now()-data.data
    rospy.loginfo("diff = %.3f ms", diff.to_nsec()/1000000.0)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("latency", Time, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
