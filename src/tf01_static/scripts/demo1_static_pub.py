#! /usr/bin/env python
#-*-coding:utf-8-*-
import rospy
import tf2_ros
from geometry_msgs.msg import TransformStamped
import tf
"""
    发布方实现：发布两个坐标系的相对关系 base_link  base_laser
    流程：
        1导包
        2初始化ros
        3发布对象
        4组织发布数据
        5发布
        6 spin()
"""


if __name__=="__main__":
    
        # 2初始化ros
        rospy.init_node("static_pub_p")
        # 3发布对象
        pub = tf2_ros.StaticTransformBroadcaster()
        # 4组织发布数据
        ts = TransformStamped()
        
        ts.header.stamp=rospy.Time.now()
        ts.header.frame_id=("base_link")
        ts.child_frame_id=("base_laser")
        ts.transform.translation.x=(0.2)
        ts.transform.translation.y=(0.0)
        ts.transform.translation.z=(0.5)

        #欧拉角转化为四元数
        q = tf.transformations.quaternion_from_euler(0,0,0)
        ts.transform.rotation.x=q[0]
        ts.transform.rotation.y=q[1]
        ts.transform.rotation.z=q[2]
        ts.transform.rotation.w=q[3]
        #5发布
        pub.sendTransform(ts)
        # 6 spin()
        rospy.spin()
    
    