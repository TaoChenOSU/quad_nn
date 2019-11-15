;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::Stop)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'Stop (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::STOP")
  (make-package "CRAZYFLIE_DRIVER::STOP"))
(unless (find-package "CRAZYFLIE_DRIVER::STOPREQUEST")
  (make-package "CRAZYFLIE_DRIVER::STOPREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::STOPRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::STOPRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::StopRequest
  :super ros::object
  :slots (_groupMask ))

(defmethod crazyflie_driver::StopRequest
  (:init
   (&key
    ((:groupMask __groupMask) 0)
    )
   (send-super :init)
   (setq _groupMask (round __groupMask))
   self)
  (:groupMask
   (&optional __groupMask)
   (if __groupMask (setq _groupMask __groupMask)) _groupMask)
  (:serialization-length
   ()
   (+
    ;; uint8 _groupMask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _groupMask
       (write-byte _groupMask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _groupMask
     (setq _groupMask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass crazyflie_driver::StopResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::StopResponse
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

(defclass crazyflie_driver::Stop
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::Stop :md5sum-) "d44d7e9aa94d069ed5834dbd7329e1bb")
(setf (get crazyflie_driver::Stop :datatype-) "crazyflie_driver/Stop")
(setf (get crazyflie_driver::Stop :request) crazyflie_driver::StopRequest)
(setf (get crazyflie_driver::Stop :response) crazyflie_driver::StopResponse)

(defmethod crazyflie_driver::StopRequest
  (:response () (instance crazyflie_driver::StopResponse :init)))

(setf (get crazyflie_driver::StopRequest :md5sum-) "d44d7e9aa94d069ed5834dbd7329e1bb")
(setf (get crazyflie_driver::StopRequest :datatype-) "crazyflie_driver/StopRequest")
(setf (get crazyflie_driver::StopRequest :definition-)
      "uint8 groupMask
---

")

(setf (get crazyflie_driver::StopResponse :md5sum-) "d44d7e9aa94d069ed5834dbd7329e1bb")
(setf (get crazyflie_driver::StopResponse :datatype-) "crazyflie_driver/StopResponse")
(setf (get crazyflie_driver::StopResponse :definition-)
      "uint8 groupMask
---

")



(provide :crazyflie_driver/Stop "d44d7e9aa94d069ed5834dbd7329e1bb")


