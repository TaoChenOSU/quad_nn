;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::AddCrazyflie)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'AddCrazyflie (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::ADDCRAZYFLIE")
  (make-package "CRAZYFLIE_DRIVER::ADDCRAZYFLIE"))
(unless (find-package "CRAZYFLIE_DRIVER::ADDCRAZYFLIEREQUEST")
  (make-package "CRAZYFLIE_DRIVER::ADDCRAZYFLIEREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::ADDCRAZYFLIERESPONSE")
  (make-package "CRAZYFLIE_DRIVER::ADDCRAZYFLIERESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::AddCrazyflieRequest
  :super ros::object
  :slots (_uri _tf_prefix _roll_trim _pitch_trim _enable_logging _enable_parameters _log_blocks _use_ros_time _enable_logging_imu _enable_logging_temperature _enable_logging_magnetic_field _enable_logging_pressure _enable_logging_battery _enable_logging_pose _enable_logging_packets ))

(defmethod crazyflie_driver::AddCrazyflieRequest
  (:init
   (&key
    ((:uri __uri) "")
    ((:tf_prefix __tf_prefix) "")
    ((:roll_trim __roll_trim) 0.0)
    ((:pitch_trim __pitch_trim) 0.0)
    ((:enable_logging __enable_logging) nil)
    ((:enable_parameters __enable_parameters) nil)
    ((:log_blocks __log_blocks) (let (r) (dotimes (i 0) (push (instance crazyflie_driver::LogBlock :init) r)) r))
    ((:use_ros_time __use_ros_time) nil)
    ((:enable_logging_imu __enable_logging_imu) nil)
    ((:enable_logging_temperature __enable_logging_temperature) nil)
    ((:enable_logging_magnetic_field __enable_logging_magnetic_field) nil)
    ((:enable_logging_pressure __enable_logging_pressure) nil)
    ((:enable_logging_battery __enable_logging_battery) nil)
    ((:enable_logging_pose __enable_logging_pose) nil)
    ((:enable_logging_packets __enable_logging_packets) nil)
    )
   (send-super :init)
   (setq _uri (string __uri))
   (setq _tf_prefix (string __tf_prefix))
   (setq _roll_trim (float __roll_trim))
   (setq _pitch_trim (float __pitch_trim))
   (setq _enable_logging __enable_logging)
   (setq _enable_parameters __enable_parameters)
   (setq _log_blocks __log_blocks)
   (setq _use_ros_time __use_ros_time)
   (setq _enable_logging_imu __enable_logging_imu)
   (setq _enable_logging_temperature __enable_logging_temperature)
   (setq _enable_logging_magnetic_field __enable_logging_magnetic_field)
   (setq _enable_logging_pressure __enable_logging_pressure)
   (setq _enable_logging_battery __enable_logging_battery)
   (setq _enable_logging_pose __enable_logging_pose)
   (setq _enable_logging_packets __enable_logging_packets)
   self)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:tf_prefix
   (&optional __tf_prefix)
   (if __tf_prefix (setq _tf_prefix __tf_prefix)) _tf_prefix)
  (:roll_trim
   (&optional __roll_trim)
   (if __roll_trim (setq _roll_trim __roll_trim)) _roll_trim)
  (:pitch_trim
   (&optional __pitch_trim)
   (if __pitch_trim (setq _pitch_trim __pitch_trim)) _pitch_trim)
  (:enable_logging
   (&optional __enable_logging)
   (if __enable_logging (setq _enable_logging __enable_logging)) _enable_logging)
  (:enable_parameters
   (&optional __enable_parameters)
   (if __enable_parameters (setq _enable_parameters __enable_parameters)) _enable_parameters)
  (:log_blocks
   (&rest __log_blocks)
   (if (keywordp (car __log_blocks))
       (send* _log_blocks __log_blocks)
     (progn
       (if __log_blocks (setq _log_blocks (car __log_blocks)))
       _log_blocks)))
  (:use_ros_time
   (&optional __use_ros_time)
   (if __use_ros_time (setq _use_ros_time __use_ros_time)) _use_ros_time)
  (:enable_logging_imu
   (&optional __enable_logging_imu)
   (if __enable_logging_imu (setq _enable_logging_imu __enable_logging_imu)) _enable_logging_imu)
  (:enable_logging_temperature
   (&optional __enable_logging_temperature)
   (if __enable_logging_temperature (setq _enable_logging_temperature __enable_logging_temperature)) _enable_logging_temperature)
  (:enable_logging_magnetic_field
   (&optional __enable_logging_magnetic_field)
   (if __enable_logging_magnetic_field (setq _enable_logging_magnetic_field __enable_logging_magnetic_field)) _enable_logging_magnetic_field)
  (:enable_logging_pressure
   (&optional __enable_logging_pressure)
   (if __enable_logging_pressure (setq _enable_logging_pressure __enable_logging_pressure)) _enable_logging_pressure)
  (:enable_logging_battery
   (&optional __enable_logging_battery)
   (if __enable_logging_battery (setq _enable_logging_battery __enable_logging_battery)) _enable_logging_battery)
  (:enable_logging_pose
   (&optional __enable_logging_pose)
   (if __enable_logging_pose (setq _enable_logging_pose __enable_logging_pose)) _enable_logging_pose)
  (:enable_logging_packets
   (&optional __enable_logging_packets)
   (if __enable_logging_packets (setq _enable_logging_packets __enable_logging_packets)) _enable_logging_packets)
  (:serialization-length
   ()
   (+
    ;; string _uri
    4 (length _uri)
    ;; string _tf_prefix
    4 (length _tf_prefix)
    ;; float32 _roll_trim
    4
    ;; float32 _pitch_trim
    4
    ;; bool _enable_logging
    1
    ;; bool _enable_parameters
    1
    ;; crazyflie_driver/LogBlock[] _log_blocks
    (apply #'+ (send-all _log_blocks :serialization-length)) 4
    ;; bool _use_ros_time
    1
    ;; bool _enable_logging_imu
    1
    ;; bool _enable_logging_temperature
    1
    ;; bool _enable_logging_magnetic_field
    1
    ;; bool _enable_logging_pressure
    1
    ;; bool _enable_logging_battery
    1
    ;; bool _enable_logging_pose
    1
    ;; bool _enable_logging_packets
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;; string _tf_prefix
       (write-long (length _tf_prefix) s) (princ _tf_prefix s)
     ;; float32 _roll_trim
       (sys::poke _roll_trim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_trim
       (sys::poke _pitch_trim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _enable_logging
       (if _enable_logging (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_parameters
       (if _enable_parameters (write-byte -1 s) (write-byte 0 s))
     ;; crazyflie_driver/LogBlock[] _log_blocks
     (write-long (length _log_blocks) s)
     (dolist (elem _log_blocks)
       (send elem :serialize s)
       )
     ;; bool _use_ros_time
       (if _use_ros_time (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_imu
       (if _enable_logging_imu (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_temperature
       (if _enable_logging_temperature (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_magnetic_field
       (if _enable_logging_magnetic_field (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_pressure
       (if _enable_logging_pressure (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_battery
       (if _enable_logging_battery (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_pose
       (if _enable_logging_pose (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_logging_packets
       (if _enable_logging_packets (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tf_prefix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tf_prefix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _roll_trim
     (setq _roll_trim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_trim
     (setq _pitch_trim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _enable_logging
     (setq _enable_logging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_parameters
     (setq _enable_parameters (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; crazyflie_driver/LogBlock[] _log_blocks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _log_blocks (let (r) (dotimes (i n) (push (instance crazyflie_driver::LogBlock :init) r)) r))
     (dolist (elem- _log_blocks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _use_ros_time
     (setq _use_ros_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_imu
     (setq _enable_logging_imu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_temperature
     (setq _enable_logging_temperature (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_magnetic_field
     (setq _enable_logging_magnetic_field (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_pressure
     (setq _enable_logging_pressure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_battery
     (setq _enable_logging_battery (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_pose
     (setq _enable_logging_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_logging_packets
     (setq _enable_logging_packets (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass crazyflie_driver::AddCrazyflieResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::AddCrazyflieResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass crazyflie_driver::AddCrazyflie
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::AddCrazyflie :md5sum-) "532d9ac6ee37f1d90ac3223857b70779")
(setf (get crazyflie_driver::AddCrazyflie :datatype-) "crazyflie_driver/AddCrazyflie")
(setf (get crazyflie_driver::AddCrazyflie :request) crazyflie_driver::AddCrazyflieRequest)
(setf (get crazyflie_driver::AddCrazyflie :response) crazyflie_driver::AddCrazyflieResponse)

(defmethod crazyflie_driver::AddCrazyflieRequest
  (:response () (instance crazyflie_driver::AddCrazyflieResponse :init)))

(setf (get crazyflie_driver::AddCrazyflieRequest :md5sum-) "532d9ac6ee37f1d90ac3223857b70779")
(setf (get crazyflie_driver::AddCrazyflieRequest :datatype-) "crazyflie_driver/AddCrazyflieRequest")
(setf (get crazyflie_driver::AddCrazyflieRequest :definition-)
      "string uri
string tf_prefix
float32 roll_trim
float32 pitch_trim
bool enable_logging
bool enable_parameters
LogBlock[] log_blocks
bool use_ros_time
bool enable_logging_imu
bool enable_logging_temperature
bool enable_logging_magnetic_field
bool enable_logging_pressure
bool enable_logging_battery
bool enable_logging_pose
bool enable_logging_packets

================================================================================
MSG: crazyflie_driver/LogBlock
string topic_name
int16 frequency
string[] variables
---

")

(setf (get crazyflie_driver::AddCrazyflieResponse :md5sum-) "532d9ac6ee37f1d90ac3223857b70779")
(setf (get crazyflie_driver::AddCrazyflieResponse :datatype-) "crazyflie_driver/AddCrazyflieResponse")
(setf (get crazyflie_driver::AddCrazyflieResponse :definition-)
      "string uri
string tf_prefix
float32 roll_trim
float32 pitch_trim
bool enable_logging
bool enable_parameters
LogBlock[] log_blocks
bool use_ros_time
bool enable_logging_imu
bool enable_logging_temperature
bool enable_logging_magnetic_field
bool enable_logging_pressure
bool enable_logging_battery
bool enable_logging_pose
bool enable_logging_packets

================================================================================
MSG: crazyflie_driver/LogBlock
string topic_name
int16 frequency
string[] variables
---

")



(provide :crazyflie_driver/AddCrazyflie "532d9ac6ee37f1d90ac3223857b70779")


