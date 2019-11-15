;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::Hover)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'Hover (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::HOVER")
  (make-package "CRAZYFLIE_DRIVER::HOVER"))

(in-package "ROS")
;;//! \htmlinclude Hover.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazyflie_driver::Hover
  :super ros::object
  :slots (_header _vx _vy _yawrate _zDistance ))

(defmethod crazyflie_driver::Hover
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:yawrate __yawrate) 0.0)
    ((:zDistance __zDistance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _yawrate (float __yawrate))
   (setq _zDistance (float __zDistance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:yawrate
   (&optional __yawrate)
   (if __yawrate (setq _yawrate __yawrate)) _yawrate)
  (:zDistance
   (&optional __zDistance)
   (if __zDistance (setq _zDistance __zDistance)) _zDistance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _yawrate
    4
    ;; float32 _zDistance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yawrate
       (sys::poke _yawrate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zDistance
       (sys::poke _zDistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yawrate
     (setq _yawrate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zDistance
     (setq _zDistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get crazyflie_driver::Hover :md5sum-) "3d4f46e9fa4dcfdc0516eb081fef369e")
(setf (get crazyflie_driver::Hover :datatype-) "crazyflie_driver/Hover")
(setf (get crazyflie_driver::Hover :definition-)
      "Header header
float32 vx
float32 vy
float32 yawrate
float32 zDistance

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :crazyflie_driver/Hover "3d4f46e9fa4dcfdc0516eb081fef369e")


