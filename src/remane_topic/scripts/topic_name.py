#! /usr/bin/env python
# -*-coding:utf-8-*-
from tkinter import N
import rospy
from std_msgs.msg import String

if __name__=="__main__":
    rospy.init_node("hello")


    while not rospy.is_shutdown():
        pass