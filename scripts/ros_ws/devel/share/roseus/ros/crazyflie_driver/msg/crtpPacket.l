;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::crtpPacket)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'crtpPacket (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::CRTPPACKET")
  (make-package "CRAZYFLIE_DRIVER::CRTPPACKET"))

(in-package "ROS")
;;//! \htmlinclude crtpPacket.msg.html


(defclass crazyflie_driver::crtpPacket
  :super ros::object
  :slots (_size _header _data ))

(defmethod crazyflie_driver::crtpPacket
  (:init
   (&key
    ((:size __size) 0)
    ((:header __header) 0)
    ((:data __data) (make-array 30 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _header (round __header))
   (setq _data __data)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:header
   (&optional __header)
   (if __header (setq _header __header)) _header)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _size
    1
    ;; uint8 _header
    1
    ;; uint8[30] _data
    (* 1    30)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _size
       (write-byte _size s)
     ;; uint8 _header
       (write-byte _header s)
     ;; uint8[30] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _size
     (setq _size (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _header
     (setq _header (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[30] _data
   (setq _data (make-array 30 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 30)
   ;;
   self)
  )

(setf (get crazyflie_driver::crtpPacket :md5sum-) "211163da2417112110f499fc3a0bedf0")
(setf (get crazyflie_driver::crtpPacket :datatype-) "crazyflie_driver/crtpPacket")
(setf (get crazyflie_driver::crtpPacket :definition-)
      "uint8 size
uint8 header
uint8[30] data

")



(provide :crazyflie_driver/crtpPacket "211163da2417112110f499fc3a0bedf0")


