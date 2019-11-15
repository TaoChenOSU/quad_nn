#include <iostream>
#include <chrono>
#include <boost/program_options.hpp>

#include <libmotioncapture/vicon.h>

static inline float fsqr(float x) { return x * x; }

int main(int argc, char **argv)
{
  std::string objectName;

  namespace po = boost::program_options;

  po::options_description desc("Allowed options");
  desc.add_options()
    ("help", "produce help message")
    ("object", po::value<std::string>(&objectName)->required(), "object name")
  ;

  try
  {
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    if (vm.count("help")) {
      std::cout << desc << "\n";
      return 0;
    }
  }
  catch(po::error& e)
  {
    std::cerr << e.what() << std::endl << std::endl;
    std::cerr << desc << std::endl;
    return 1;
  }

  libmotioncapture::MotionCapture* mocap = new libmotioncapture::MotionCaptureVicon("vicon",
      /*enableObjects*/ true,
      /*enablePointcloud*/ false);

  libmotioncapture::Object object;

  // set precision to output enough digits (see https://stackoverflow.com/questions/554063/how-do-i-print-a-double-value-with-full-precision-using-cout)
  std::cout.precision(std::numeric_limits<double>::max_digits10);

  std::cout << "time,x,y,z,qx,qy,qz,qw" << std::endl;

  auto startTime = std::chrono::high_resolution_clock::now();

  for (size_t frameId = 0; ; ++frameId) {
    // Get a frame
    mocap->waitForNextFrame();

    auto time = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsedSeconds = time-startTime;

    mocap->getObjectByName(objectName, object);

    if (!object.occluded()) {

      // auto euler = object.rotation().toRotationMatrix().eulerAngles(0, 1, 2);
      // const auto& q = object.rotation();

      // double roll = atan2(2 * (q.w() * q.x() + q.y() * q.z()), 1 - 2 * (fsqr(q.x()) + fsqr(q.y()))); // roll
      // double pitch = asin(2 * (q.w() * q.y() - q.x() * q.z())); // pitch
      // double yaw = atan2(2 * (q.w() * q.z() + q.x() * q.y()), 1 - 2 * (fsqr(q.y()) + fsqr(q.z()))); // yaw

      std::cout << elapsedSeconds.count() << ",";
      std::cout << object.position().x() << ",";
      std::cout << object.position().y() << ",";
      std::cout << object.position().z() << ",";
      std::cout << object.rotation().x() << ",";
      std::cout << object.rotation().y() << ",";
      std::cout << object.rotation().z() << ",";
      std::cout << object.rotation().w();// << ",";
      // std::cout << roll << ",";
      // std::cout << pitch << ",";
      // std::cout << yaw;
      std::cout << std::endl;
    }

    if (elapsedSeconds.count() >= 20.0) {
      break;
    }
  }

  return 0;
}
