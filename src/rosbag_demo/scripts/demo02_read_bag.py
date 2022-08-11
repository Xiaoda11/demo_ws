#! /usr/bin/env python
#-*-coding:utf-8-*-
from time import time
import rospy
import rosbag
from std_msgs.msg import String
"""
    需求实现bag文件读取 ————磁盘上的bag文件
    流程：
        1 导包
        2 节点初始化
        3 创建rosbag对象打开文件流
        4 读取数据
        5 释放资源 --关闭流
"""

if  __name__=="__main__":
    # 2 节点初始化
    rospy.init_node("bag_read")
    # 3 创建rosbag对象打开文件流
    read=rosbag.Bag("HELLO_P.bag","r")
    # 4 读取数据
    mags=read.read_messages("/talk")
    for topic,msg,time in mags:
        rospy.loginfo("topic:%s msg:%s time:%s",topic,msg.data,time)
     
    # 5 释放资源 --关闭流
    read.close()