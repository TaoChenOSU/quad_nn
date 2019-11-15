;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::sendPacket)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'sendPacket (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::SENDPACKET")
  (make-package "CRAZYFLIE_DRIVER::SENDPACKET"))
(unless (find-package "CRAZYFLIE_DRIVER::SENDPACKETREQUEST")
  (make-package "CRAZYFLIE_DRIVER::SENDPACKETREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::SENDPACKETRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::SENDPACKETRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::sendPacketRequest
  :super ros::object
  :slots (_packet ))

(defmethod crazyflie_driver::sendPacketRequest
  (:init
   (&key
    ((:packet __packet) (instance crazyflie_driver::crtpPacket :init))
    )
   (send-super :init)
   (setq _packet __packet)
   self)
  (:packet
   (&rest __packet)
   (if (keywordp (car __packet))
       (send* _packet __packet)
     (progn
       (if __packet (setq _packet (car __packet)))
       _packet)))
  (:serialization-length
   ()
   (+
    ;; crazyflie_driver/crtpPacket _packet
    (send _packet :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; crazyflie_driver/crtpPacket _packet
       (send _packet :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; crazyflie_driver/crtpPacket _packet
     (send _packet :deserialize buf ptr-) (incf ptr- (send _packet :serialization-length))
   ;;
   self)
  )

(defclass crazyflie_driver::sendPacketResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::sendPacketResponse
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

(defclass crazyflie_driver::sendPacket
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::sendPacket :md5sum-) "e3f946ce194c915d34d0f5ddedef0de7")
(setf (get crazyflie_driver::sendPacket :datatype-) "crazyflie_driver/sendPacket")
(setf (get crazyflie_driver::sendPacket :request) crazyflie_driver::sendPacketRequest)
(setf (get crazyflie_driver::sendPacket :response) crazyflie_driver::sendPacketResponse)

(defmethod crazyflie_driver::sendPacketRequest
  (:response () (instance crazyflie_driver::sendPacketResponse :init)))

(setf (get crazyflie_driver::sendPacketRequest :md5sum-) "e3f946ce194c915d34d0f5ddedef0de7")
(setf (get crazyflie_driver::sendPacketRequest :datatype-) "crazyflie_driver/sendPacketRequest")
(setf (get crazyflie_driver::sendPacketRequest :definition-)
      "crazyflie_driver/crtpPacket packet

================================================================================
MSG: crazyflie_driver/crtpPacket
uint8 size
uint8 header
uint8[30] data
---

")

(setf (get crazyflie_driver::sendPacketResponse :md5sum-) "e3f946ce194c915d34d0f5ddedef0de7")
(setf (get crazyflie_driver::sendPacketResponse :datatype-) "crazyflie_driver/sendPacketResponse")
(setf (get crazyflie_driver::sendPacketResponse :definition-)
      "crazyflie_driver/crtpPacket packet

================================================================================
MSG: crazyflie_driver/crtpPacket
uint8 size
uint8 header
uint8[30] data
---

")



(provide :crazyflie_driver/sendPacket "e3f946ce194c915d34d0f5ddedef0de7")


