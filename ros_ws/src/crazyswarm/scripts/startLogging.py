#!/usr/bin/env python

import numpy as np
from pycrazyswarm import *

if __name__ == "__main__":
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    allcfs = swarm.allcfs

    allcfs.crazyfliesById[37].setParam("usd/logging", 1)