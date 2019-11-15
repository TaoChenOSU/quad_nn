# -*- coding: utf-8 -*-
"""
example on how to plot decoded sensor data from crazyflie
@author: jsschell
"""
import CF_functions as cff
import matplotlib.pyplot as plt
import re
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("file", type=str, help="logfile")
args = parser.parse_args()

# decode binary log data
logData = cff.decode(args.file)

# set window background to white
plt.rcParams['figure.facecolor'] = 'w'
    
# number of columns and rows for suplot
plotCols = 1;
plotRows = 4;

# current plot for simple subplot usage
plotCurrent = 0;

# new figure
plt.figure(0)


plotCurrent += 1
plt.subplot(plotRows, plotCols, plotCurrent)
plt.plot(logData['tick'], logData['gyro.x'], '-', label='X')
plt.plot(logData['tick'], logData['gyro.y'], '-', label='Y')
plt.plot(logData['tick'], logData['gyro.z'], '-', label='Z')
plt.xlabel('RTOS Ticks')
plt.ylabel('Gyroscope [°/s]')
plt.legend(loc=9, ncol=3, borderaxespad=0.)


plotCurrent += 1
plt.subplot(plotRows, plotCols, plotCurrent)
plt.plot(logData['tick'], logData['acc.x'], '-', label='X')
plt.plot(logData['tick'], logData['acc.y'], '-', label='Y')
plt.plot(logData['tick'], logData['acc.z'], '-', label='Z')
plt.xlabel('RTOS Ticks')
plt.ylabel('Accelerometer [g]')
plt.legend(loc=9, ncol=3, borderaxespad=0.)

plotCurrent += 1
plt.subplot(plotRows, plotCols, plotCurrent)
plt.plot(logData['tick'], logData['stateEstimate.x'], '-', label='X')
plt.plot(logData['tick'], logData['stateEstimate.y'], '-', label='Y')
plt.plot(logData['tick'], logData['stateEstimate.z'], '-', label='Z')
plt.xlabel('RTOS Ticks')
plt.ylabel('Position [m]')
plt.legend(loc=9, ncol=3, borderaxespad=0.)

plotCurrent += 1
plt.subplot(plotRows, plotCols, plotCurrent)
plt.plot(logData['tick'], logData['stateEstimate.vx'], '-', label='X')
plt.plot(logData['tick'], logData['stateEstimate.vy'], '-', label='Y')
plt.plot(logData['tick'], logData['stateEstimate.vz'], '-', label='Z')
plt.xlabel('RTOS Ticks')
plt.ylabel('Velocity [m/s]')
plt.legend(loc=9, ncol=3, borderaxespad=0.)


plt.show()