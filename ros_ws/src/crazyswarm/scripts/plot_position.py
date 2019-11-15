import matplotlib.pyplot as plt
import numpy as np
import argparse


TX=0 #target x
TY=1
TZ=2
CX=3 #current x
CY=4
CZ=5

if __name__ == "__main__":
  parser = argparse.ArgumentParser()
  parser.add_argument("data", type=str, help="CSV file data")
  args = parser.parse_args()

  data = np.loadtxt(args.data, delimiter=",", skiprows=100)

  target = data[:,TX:TZ+1]
  current = data[:,CX:CZ+1]
  error = np.linalg.norm(target - current, axis=1)
  # print(error)

  # new figure
  plt.figure(0)

  # X, Y, Z
  plt.subplot(2, 1, 1)
  plt.plot(current[:,0], current[:,1], '-', label='current')
  plt.plot(target[:,0], target[:,1], '-', label='target')
  plt.xlabel('X [m]')
  plt.ylabel('Y [m]')
  plt.legend(loc=9, ncol=3, borderaxespad=0.)

  plt.subplot(2, 1, 2)
  plt.plot(current[:,2], '-', label='current - z')
  plt.plot(target[:,2], '-', label='target')
  plt.plot(current[:,0],'-',label='current - x')
  plt.plot(current[:,1],'-',label='current - y')
  plt.xlabel('dataset/time')
  plt.ylabel('Z [m]')
  plt.legend(loc=9, ncol=3, borderaxespad=0.)


  print("avg. error: {:.3f} m, stddev: {:.3f}".format(
    np.mean(error),
    np.std(error)))

  plt.show()

