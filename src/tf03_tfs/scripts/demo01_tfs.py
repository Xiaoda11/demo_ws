#! /usr/bin/env python
#-*-coding:utf-8-*-

import rospy
import tf2_ros
from tf2_geometry_msgs import tf2_geometry_msgs
from geometry_msgs.msg import TransformStamped
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
    
    # 5 转换逻辑实现 调用tf算法
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        
        try:
            # 计算son1相对于son2的坐标关系
            ts=buffer.lookup_transform("son2","son1",rospy.Time(0))
            rospy.loginfo("父级坐标系%s""子级坐标系%s""偏移量（%.2f,%.2f,%.2f）"
                            ,ts.header.frame_id,ts.child_frame_id,ts.transform.translation.x,
                            ts.transform.translation.y,ts.transform.translation.z)
            #转换
            # 4 订阅话题组织被转换的坐标
            ps = tf2_geometry_msgs.PointStamped()
        #时间戳-0
            ps.header.stamp=rospy.Time.now()
            ps.header.frame_id="son1"
            ps.point.x=1.0
            ps.point.y=2.0
            ps.point.z=3.0
            point_target = buffer.transform(ps,"son2",rospy.Duration(0.5))

            rospy.loginfo("point_target 所属的坐标系:%s",point_target.header.frame_id)
            rospy.loginfo("坐标点相对于 son2 的坐标:(%.2f,%.2f,%.2f)",
                        point_target.point.x,
                        point_target.point.y,
                        point_target.point.z
            )

        except Exception as e:
            rospy.logerr("错误提示:%s",e)


        rate.sleep()


    

  
