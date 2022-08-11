#! /usr/bin/env python
#-*-coding:utf-8-*-
import rospy
import rosbag
from std_msgs.msg import String
"""
    需求实现rosbag———— 消息数据到磁盘上的bag文件
    流程：
        1 导包
        2 节点初始化
        3 创建rosbag对象打开文件流
        4 写入数据
        5 释放资源 --关闭流
"""

if  __name__=="__main__":
    # 2 节点初始化
    rospy.init_node("bag_write")
    # 3 创建rosbag对象打开文件流
    write = rosbag.Bag("HELLO_P.bag","w")
    # 4 写入数据
    msg = String()
    msg.data="hello bag"
    write.write("/talk",msg)
    # 5 释放资源 --关闭流
    write.close()