#!/usr/bin/env python
import rospy
from std_msgs.msg import Time

def talker():
    pub = rospy.Publisher('latency', Time, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        pub.publish(rospy.Time.now())
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
