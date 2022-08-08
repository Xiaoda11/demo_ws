#! /usr/bin/env python
#-*-coding:utf-8-*-
import rospy
import tf2_ros
import tf
from turtlesim.msg import Pose
from geometry_msgs.msg import TransformStamped
"""
    发布方实现：订阅乌龟位姿信息 转换为坐标系相对关系 进行发布
    话题：/turtle/pose
    类型：/turtle/Pose
    1 导包
    2 初始化ros
    3 创建订阅对象
    4 回调函数处理订阅消息
    5 spin

"""
def doPoint(pose):
    #创建发布坐标系相对关系的发布对象
    pub =tf2_ros.TransformBroadcaster()
    #pose 转换为相对关系消息
    ts = TransformStamped()
    ts.header.frame_id="world"
    ts.header.stamp=rospy.Time.now()
    ts.child_frame_id="turtle1"
    #子级坐标系相对与父级坐标系偏移量
    ts.transform.translation.x=pose.x
    ts.transform.translation.y=pose.y
    ts.transform.translation.z=0.0
    #四元数
    # 欧拉角转换四元数
    qtn=tf.transformations.quaternion_from_euler(0,0,pose.theta) 
    ts.transform.rotation.x=qtn[0]
    ts.transform.rotation.y=qtn[1]
    ts.transform.rotation.z=qtn[2]
    ts.transform.rotation.w=qtn[3]
    #发布
    pub.sendTransform(ts)

if __name__=="__main__":
    # 2 初始化ros
    rospy.init_node("turtle_ponit_pub")
    # 3 创建订阅对象
    sub = rospy.Subscriber("/turtle1/pose",Pose,doPoint)
    # 4 回调函数处理订阅消息
    # 5 spin
    rospy.spin()