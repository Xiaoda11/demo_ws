#! /usr/bin/env python
#-*-coding:utf-8-*-

import rospy
import tf2_ros
from tf2_geometry_msgs import tf2_geometry_msgs

"""
    订阅方实现 ：订阅坐标变换消息，传入被转换的坐标 调用转换算法
    流程：
        1 导包
        2 初始化
        3 创建订阅对象
        4 订阅话题组织被转换的坐标
        5 转换逻辑实现 调用tf算法
        6 输出
        7 spin

"""

if __name__ == "__main__":
    # 2 初始化
    rospy.init_node("dynamic_sub_p")
    # 3 创建订阅对象
    # 3-1 创建缓存对象
    buffer =tf2_ros.Buffer()
    # 3-2 创建订阅对象
    sub = tf2_ros.TransformListener(buffer)
    
    # 5 转换逻辑实现 调用tf算法
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        # 4 订阅话题组织被转换的坐标
        ps = tf2_geometry_msgs.PointStamped()
        #时间戳-0
        ps.header.stamp=rospy.Time()
        ps.header.frame_id="turtle1"
        ps.point.x=2.0
        ps.point.y=3.0
        ps.point.z=5.0
        try:
            #转换
            ps_out=buffer.transform(ps,"world")
            # 6 输出
            rospy.loginfo("转换后的坐标:(%.2f ,%.2f ,%.2f),参考坐标系：%s",ps_out.point.x,ps_out.point.y,
                    ps_out.point.z,ps_out.header.frame_id)
        except Exception as e:
            rospy.logerr("异常:%s",e)

        rate.sleep()



    

  
