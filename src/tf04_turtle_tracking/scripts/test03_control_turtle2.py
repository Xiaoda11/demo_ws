#! /usr/bin/env python
#-*-coding:utf-8-*-

import rospy
import tf2_ros
from tf2_geometry_msgs import tf2_geometry_msgs
from geometry_msgs.msg import TransformStamped,Twist
import math
"""
    
"""

if __name__ == "__main__":
    # 2 初始化
    rospy.init_node("dynamic_tfs_sub_p")
    # 3 创建订阅对象
    # 3-1 创建缓存对象
    buffer =tf2_ros.Buffer()
    # 3-2 创建订阅对象
    listener = tf2_ros.TransformListener(buffer)
    #创建速度消息发布对象
    pub = rospy.Publisher("/turtle2/cmd_vel",Twist)
    
    # 5 转换逻辑实现 调用tf算法
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        
        try:
            # 计算son1相对于son2的坐标关系
            ts=buffer.lookup_transform("turtle2","turtle1",rospy.Time(0))
            rospy.loginfo("父级坐标系%s""子级坐标系%s""偏移量（%.2f,%.2f,%.2f）"
                            ,ts.header.frame_id,ts.child_frame_id,ts.transform.translation.x,
                            ts.transform.translation.y,ts.transform.translation.z)
            #组织Twist消息
            tw=Twist()
            #linear 系数*坐标系原点间距（turtle2为坐标原点 ）
            #angular 系数*夹角（atan2（y,x））
            tw.linear.x = 0.5 * math.sqrt(math.pow(ts.transform.translation.x,2) + math.pow(ts.transform.translation.y,2))
            tw.angular.z = 1.4 * math.atan2(ts.transform.translation.y, ts.transform.translation.x)
            #发布
            pub.publish(tw)
            
        except Exception as e:
            rospy.logerr("错误提示:%s",e)
        rate.sleep()


    

  
