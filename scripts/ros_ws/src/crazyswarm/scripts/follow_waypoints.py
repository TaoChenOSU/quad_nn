#!/usr/bin/env python

import numpy as np
import random
from pycrazyswarm import *

def randomWaypoints():
    waypoints = []
    for i in range(100):
        waypoints.append([random.uniform(-0.3, 0.3), random.uniform(-0.3, 0.3), random.uniform(0.8, 1.2)])
        waypoints.append([0.0, 0.0, 1.0])

    return waypoints

if __name__ == "__main__":

    # generate waypoints randomly
    waypoints = randomWaypoints()
    # execute waypoints
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    allcfs = swarm.allcfs

    height = 1.0

    allcfs.takeoff(targetHeight=1.0, duration=2.0)
    timeHelper.sleep(2.0)
    lastTime = 0.0
    counter = 0
    for waypoint in waypoints:
        for cf in allcfs.crazyflies:
            print "Going to " + str(counter) +": " + str(waypoint)
            cf.goTo(waypoint, 0, 0.6)
            timeHelper.sleep(0.6)
        counter += 1    

    allcfs.land(targetHeight=0.06, duration=2.0)
    timeHelper.sleep(3.0)