#! /usr/bin/env python
#-*-coding:utf-8-*-


import rospy
from turtlesim.srv import Spawn, SpawnRequest, SpawnResponse

"""
生成新海龟
 话题：/spawn
 类型：turtle/Spawn
"""
if __name__=="__main__":
    rospy.init_node("service_new_turtlesim")
    client=rospy.ServiceProxy("/spawn",Spawn)
    req = SpawnRequest()
    req.x = 1.0
    req.y = 1.0
    req.theta = 3.14
    req.name = "turtle2"
    # 6.发送请求并处理响应
    try:
        response = client.call(req)
        rospy.loginfo("乌龟创建成功，名字是:%s",response.name)
    except Exception as e:
        rospy.loginfo("服务调用失败....")

    