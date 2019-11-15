#!/usr/bin/env python

import numpy as np
from pycrazyswarm import *
import rospy
from crazyflie_driver.msg import GenericLogData
import uav_trajectory
import argparse

file = None
HEIGHT = 1.0 #0.75


# "ctrltarget.x", "ctrltarget.y", "ctrltarget.z", "stateEstimate.x", "stateEstimate.y", "stateEstimate.z"
def logData(data):
    global file

    print(data.values)
    file.write(",".join([str(i) for i in data.values]) + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("speed", type=str, help="speed of trajectory")
    parser.add_argument("output", type=str, help="output file name")
    args = parser.parse_args()

    swarm = Crazyswarm(parse_args = False)
    timeHelper = swarm.timeHelper
    allcfs = swarm.allcfs

    file = open(args.output, "w")

    rospy.Subscriber("/cf{}/log1/".format(allcfs.crazyflies[0].id), GenericLogData, logData)

    # swarm = Crazyswarm()
    # timeHelper = swarm.timeHelper
    # allcfs = swarm.allcfs

    traj1 = uav_trajectory.Trajectory()
    traj1.loadcsv("figure8.csv", swapxy=True)

    TIMESCALE = float(args.speed) #0.75
    for cf in allcfs.crazyflies:
        cf.uploadTrajectory(0, 0, traj1)

    allcfs.takeoff(targetHeight=HEIGHT, duration=3.0)
    timeHelper.sleep(2.5)
    for cf in allcfs.crazyflies:
        # pos = np.array(cf.initialPosition) + np.array([0, 0, 1.0])
        pos = np.array([0, 0, HEIGHT])
        cf.goTo(pos, 0, 2.0)
    timeHelper.sleep(2.5)

    allcfs.startTrajectory(0, timescale=TIMESCALE)
    timeHelper.sleep(traj1.duration * TIMESCALE + 2.0)
    # allcfs.startTrajectory(0, timescale=TIMESCALE, reverse=True)
    # timeHelper.sleep(traj1.duration * TIMESCALE + 2.0)

    allcfs.land(targetHeight=0.06, duration=2.0)
    timeHelper.sleep(2.0)
