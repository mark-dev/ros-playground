#!/usr/bin/env python


import rospy
import random

from std_srvs.srv import *
from turtlesim.msg._Pose import *
from turtlesim.srv import *


TURTLE_TELEPORT_SERVICE='/turtle1/teleport_absolute'
TURTLE_POSE_TOPIC='/turtle1/pose'
CLEAR_SERVICE = "/clear"
NODE_NAME = "turtle_driver"

#Node up

rospy.init_node(NODE_NAME,anonymous=True)

#Wait for services
rospy.wait_for_service(TURTLE_TELEPORT_SERVICE)
rospy.wait_for_service(CLEAR_SERVICE)

#Create API proxy
teleport_proxy = rospy.ServiceProxy(TURTLE_TELEPORT_SERVICE,TeleportAbsolute)
clear_proxy = rospy.ServiceProxy(CLEAR_SERVICE,Empty)

def listen_for_turtle_pos(data):
    rospy.loginfo(rospy.get_caller_id() + 'I received %s', data)

def clear_turtle():
    clear_proxy()

def teleport_turtle(x,y,theta):
    try:
        req = TeleportAbsoluteRequest(**{'x': x, 'y': y, 'theta': theta})
        resp = teleport_proxy(req)
        return resp
    except rospy.ServiceException, e:
        rospy.logerr("Service call failed: %s" % e)



if __name__ == "__main__":
    rospy.Subscriber(TURTLE_POSE_TOPIC, Pose, listen_for_turtle_pos)
    rate = rospy.Rate(10)
    while(True):
        teleport_turtle(0,0,0)
        rospy.set_param("/background_r",random.randint(0,255))
        rospy.set_param("/background_g",random.randint(0,255))
        rospy.set_param("/background_b",random.randint(0,255))
        clear_turtle()
        x,y,theta = 0,0,0
        for e in range(0,100):
            rospy.loginfo("Teleport our turtle %d/10" % e)
            x = x + random.uniform(0,0.1)
            y = y + random.uniform(0,0.1)
            teleport_turtle(x,y,theta)
            rate.sleep()