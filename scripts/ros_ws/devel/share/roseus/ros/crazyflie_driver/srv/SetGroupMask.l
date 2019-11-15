;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::SetGroupMask)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'SetGroupMask (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::SETGROUPMASK")
  (make-package "CRAZYFLIE_DRIVER::SETGROUPMASK"))
(unless (find-package "CRAZYFLIE_DRIVER::SETGROUPMASKREQUEST")
  (make-package "CRAZYFLIE_DRIVER::SETGROUPMASKREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::SETGROUPMASKRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::SETGROUPMASKRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::SetGroupMaskRequest
  :super ros::object
  :slots (_groupMask ))

(defmethod crazyflie_driver::SetGroupMaskRequest
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

(defclass crazyflie_driver::SetGroupMaskResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::SetGroupMaskResponse
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

(defclass crazyflie_driver::SetGroupMask
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::SetGroupMask :md5sum-) "d44d7e9aa94d069ed5834dbd7329e1bb")
(setf (get crazyflie_driver::SetGroupMask :datatype-) "crazyflie_driver/SetGroupMask")
(setf (get crazyflie_driver::SetGroupMask :request) crazyflie_driver::SetGroupMaskRequest)
(setf (get crazyflie_driver::SetGroupMask :response) crazyflie_driver::SetGroupMaskResponse)

(defmethod crazyflie_driver::SetGroupMaskRequest
  (:response () (instance crazyflie_driver::SetGroupMaskResponse :init)))

(setf (get crazyflie_driver::SetGroupMaskRequest :md5sum-) "d44d7e9aa94d069ed5834dbd7329e1bb")
(setf (get crazyflie_driver::SetGroupMaskRequest :datatype-) "crazyflie_driver/SetGroupMaskRequest")
(setf (get crazyflie_driver::SetGroupMaskRequest :definition-)
      "uint8 groupMask
---

")

(setf (get crazyflie_driver::SetGroupMaskResponse :md5sum-) "d44d7e9aa94d069ed5834dbd7329e1bb")
(setf (get crazyflie_driver::SetGroupMaskResponse :datatype-) "crazyflie_driver/SetGroupMaskResponse")
(setf (get crazyflie_driver::SetGroupMaskResponse :definition-)
      "uint8 groupMask
---

")



(provide :crazyflie_driver/SetGroupMask "d44d7e9aa94d069ed5834dbd7329e1bb")


