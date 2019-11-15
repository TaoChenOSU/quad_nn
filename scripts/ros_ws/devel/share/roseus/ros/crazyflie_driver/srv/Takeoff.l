;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::Takeoff)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'Takeoff (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::TAKEOFF")
  (make-package "CRAZYFLIE_DRIVER::TAKEOFF"))
(unless (find-package "CRAZYFLIE_DRIVER::TAKEOFFREQUEST")
  (make-package "CRAZYFLIE_DRIVER::TAKEOFFREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::TAKEOFFRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::TAKEOFFRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::TakeoffRequest
  :super ros::object
  :slots (_groupMask _height _duration ))

(defmethod crazyflie_driver::TakeoffRequest
  (:init
   (&key
    ((:groupMask __groupMask) 0)
    ((:height __height) 0.0)
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _groupMask (round __groupMask))
   (setq _height (float __height))
   (setq _duration __duration)
   self)
  (:groupMask
   (&optional __groupMask)
   (if __groupMask (setq _groupMask __groupMask)) _groupMask)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint8 _groupMask
    1
    ;; float32 _height
    4
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _groupMask
       (write-byte _groupMask s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _groupMask
     (setq _groupMask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass crazyflie_driver::TakeoffResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::TakeoffResponse
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

(defclass crazyflie_driver::Takeoff
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::Takeoff :md5sum-) "b665b6c83a196e4774268cc26329b159")
(setf (get crazyflie_driver::Takeoff :datatype-) "crazyflie_driver/Takeoff")
(setf (get crazyflie_driver::Takeoff :request) crazyflie_driver::TakeoffRequest)
(setf (get crazyflie_driver::Takeoff :response) crazyflie_driver::TakeoffResponse)

(defmethod crazyflie_driver::TakeoffRequest
  (:response () (instance crazyflie_driver::TakeoffResponse :init)))

(setf (get crazyflie_driver::TakeoffRequest :md5sum-) "b665b6c83a196e4774268cc26329b159")
(setf (get crazyflie_driver::TakeoffRequest :datatype-) "crazyflie_driver/TakeoffRequest")
(setf (get crazyflie_driver::TakeoffRequest :definition-)
      "uint8 groupMask
float32 height
duration duration
---

")

(setf (get crazyflie_driver::TakeoffResponse :md5sum-) "b665b6c83a196e4774268cc26329b159")
(setf (get crazyflie_driver::TakeoffResponse :datatype-) "crazyflie_driver/TakeoffResponse")
(setf (get crazyflie_driver::TakeoffResponse :definition-)
      "uint8 groupMask
float32 height
duration duration
---

")



(provide :crazyflie_driver/Takeoff "b665b6c83a196e4774268cc26329b159")


