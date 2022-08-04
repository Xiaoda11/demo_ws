#! /usr/bin/env python
# -*-coding:utf-8-*-
import rospy
from std_msgs.msg import String

if __name__=="__main__":
    rospy.init_node("hello_ss")
    """
    实现不同类型的话题设置
    
    """
    # 全局
    pub=rospy.Publisher("/chatter",String,queue_size=10)

    # 相对
    pub=rospy.Publisher("chatter",String,queue_size=10)

    # 私有
    pub=rospy.Publisher("~chatter",String,queue_size=10)
    while not rospy.is_shutdown():
        pass