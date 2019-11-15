import matplotlib.pyplot as plt
import numpy as np
import argparse


TIME=0
X=1
Y=2
Z=3
QX=4
QY=5
QZ=6
QW=7
# ROLL=8
# PITCH=9
# YAW=10

# convert a quaternion into a 3x3 rotation matrix.
def quat2rotmat(x, y, z, w):
  m = np.empty((3,3))

  m[0,0] = 1 - 2*y*y - 2*z*z
  m[0,1] = 2*x*y - 2*z*w
  m[0,2] = 2*x*z + 2*y*w
  m[1,0] = 2*x*y + 2*z*w
  m[1,1] = 1 - 2*x*x - 2*z*z
  m[1,2] = 2*y*z - 2*x*w
  m[2,0] = 2*x*z - 2*y*w
  m[2,1] = 2*y*z + 2*x*w
  m[2,2] = 1 - 2*x*x - 2*y*y
  return m


if __name__ == "__main__":
  parser = argparse.ArgumentParser()
  parser.add_argument("data", type=str, help="CSV file data")
  args = parser.parse_args()

  dataType = float #np.dtype('Float64')
  setPoint = np.array([0, 0, 1])

  data = np.loadtxt(args.data, delimiter=",", skiprows=1, dtype=dataType)

  pos = data[:,X:Z+1]
  # print(pos)

  qx = data[:,QX]
  qy = data[:,QY]
  qz = data[:,QZ]
  qw = data[:,QW]
  # (re)normalize quaternion
  norm = np.sqrt(qx*qx + qy*qy + qz*qz + qw*qw)
  qx = qx / norm
  qy = qy / norm
  qz = qz / norm
  qw = qw / norm


  angleError = 2 * np.arccos(np.abs(data[:,QW]))
  R00 = 1 - qy*qy - 2 * qz*qz
  R11 = 1 - qx*qx - 2 * qz*qz
  R22 = 1 - qx*qx - 2 * qy*qy

  angleErrorR = np.arccos((R00 + R11 + R22 - 1) / 2.0)

  # compute roll/pitch/yaw
  roll = np.arctan2(2 * (qw * qx + qy * qz), 1 - 2 * (qx * qx + qy * qy))
  pitch = np.arcsin(2 * (qw * qy - qx * qz))
  yaw = np.arctan2(2 * (qw * qz + qx * qy), 1 - 2 * (qy * qy + qz * qz))

  # # compute quaternion just based on yaw
  # # see https://en.wikipedia.org/wiki/Conversion_between_quaternions_and_Euler_angles
  # cy = np.cos(yaw * 0.5)
  # sy = np.sin(yaw * 0.5)
  # cp = np.cos(0.0 * 0.5) # pitch
  # sp = np.sin(0.0 * 0.5) # pitch
  # cr = np.cos(0.0 * 0.5) # roll
  # sr = np.sin(0.0 * 0.5) # roll

  # qw2 = cr * cp * cy + sr * sp * sy
  # qx2 = sr * cp * cy - cr * sp * sy
  # qy2 = cr * sp * cy + sr * cp * sy
  # qz2 = cr * cp * sy - sr * sp * cy

  # angleErrorNoYaw = 2 * np.arccos(np.abs(qx * qx2 + qy * qy2 + qz * qz + qw * qw))

  # last column vector is z-axis; to compute the angle to "level" the quad, we take the dot product
  # of the last column vector with [0, 0, 1]^T, or shorter just R22
  angleErrorRNoYaw = np.arccos(R22)

  euclideanError = np.linalg.norm(pos - setPoint, axis=1)
  # print(np.linalg.norm(pos[0] - setPoint))
  # print(euclideanError)


  # new figure
  plt.figure(0)

  # X, Y, Z
  plt.subplot(4, 1, 1)
  plt.plot(data[:,TIME], data[:,X], '-', label='X')
  plt.plot(data[:,TIME], data[:,Y], '-', label='Y')
  plt.plot(data[:,TIME], data[:,Z], '-', label='Z')
  plt.xlabel('Time [s]')
  plt.ylabel('Position [m]')
  plt.legend(loc=9, ncol=3, borderaxespad=0.)

  # roll, pitch, yaw
  plt.subplot(4, 1, 2)
  plt.plot(data[:,TIME], np.degrees(roll), '-', label='roll')
  plt.plot(data[:,TIME], np.degrees(pitch), '-', label='pitch')
  plt.plot(data[:,TIME], np.degrees(yaw), '-', label='yaw')
  plt.xlabel('Time [s]')
  plt.ylabel('orientation [deg]')
  plt.legend(loc=9, ncol=3, borderaxespad=0.)

  plt.subplot(4,1, 3)
  dt = (data[:,TIME][-1] - data[:,TIME][0]) / roll.shape[-1]
  freqs = np.fft.fftfreq(roll.shape[-1], dt)

  freqRoll = np.fft.fft(np.degrees(roll))
  freqPitch = np.fft.fft(np.degrees(pitch))

  plt.plot(freqs, np.absolute(freqRoll), label='roll FFT')
  plt.plot(freqs, np.absolute(freqPitch), label='pitch FFT')

  plt.xlim(0, np.max(freqs))
  plt.xlabel('Frequency [Hz]')
  plt.ylabel('FFT')
  plt.legend(loc=9, ncol=3, borderaxespad=0.)

  # errors
  plt.subplot(4, 1, 4)
  # plt.plot(data[:,TIME], np.degrees(angleError), '-', label='quaternion error')
  # plt.plot(data[:,TIME], np.degrees(angleErrorNoYaw), '-', label='quaternion error (no yaw)')
  plt.plot(data[:,TIME], np.degrees(angleErrorR), '-', label='rotation matrix error')
  plt.plot(data[:,TIME], np.degrees(angleErrorRNoYaw), '-', label='rotation matrix error (no yaw)')

  # plt.plot(data[:,TIME], np.degrees(roll), '-', label='roll')
  # plt.plot(data[:,TIME], np.degrees(pitch), '-', label='pitch')

  # plt.plot(data[:,TIME], np.degrees(R00 + R22), '-', label='artem error')
  plt.xlabel('Time [s]')
  plt.ylabel('error [deg]')
  plt.legend(loc=9, ncol=3, borderaxespad=0.)


  print("avg. euclidean error: {:.3f} m, stddev: {:.3f}".format(
    np.mean(euclideanError),
    np.std(euclideanError)))

  print("avg. rotation error (no yaw): {:.3f} deg, stddev: {:.3f}".format(
    np.degrees(np.mean(angleErrorRNoYaw)),
    np.degrees(np.std(angleErrorRNoYaw))))

  print("avg. rotation error (with yaw): {:.3f} deg, stddev: {:.3f}".format(
    np.degrees(np.mean(angleErrorR)),
    np.degrees(np.std(angleErrorR))))

  plt.show()

