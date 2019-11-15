;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::StartTrajectory)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'StartTrajectory (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::STARTTRAJECTORY")
  (make-package "CRAZYFLIE_DRIVER::STARTTRAJECTORY"))
(unless (find-package "CRAZYFLIE_DRIVER::STARTTRAJECTORYREQUEST")
  (make-package "CRAZYFLIE_DRIVER::STARTTRAJECTORYREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::STARTTRAJECTORYRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::STARTTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::StartTrajectoryRequest
  :super ros::object
  :slots (_groupMask _trajectoryId _timescale _reversed _relative ))

(defmethod crazyflie_driver::StartTrajectoryRequest
  (:init
   (&key
    ((:groupMask __groupMask) 0)
    ((:trajectoryId __trajectoryId) 0)
    ((:timescale __timescale) 0.0)
    ((:reversed __reversed) nil)
    ((:relative __relative) nil)
    )
   (send-super :init)
   (setq _groupMask (round __groupMask))
   (setq _trajectoryId (round __trajectoryId))
   (setq _timescale (float __timescale))
   (setq _reversed __reversed)
   (setq _relative __relative)
   self)
  (:groupMask
   (&optional __groupMask)
   (if __groupMask (setq _groupMask __groupMask)) _groupMask)
  (:trajectoryId
   (&optional __trajectoryId)
   (if __trajectoryId (setq _trajectoryId __trajectoryId)) _trajectoryId)
  (:timescale
   (&optional __timescale)
   (if __timescale (setq _timescale __timescale)) _timescale)
  (:reversed
   (&optional __reversed)
   (if __reversed (setq _reversed __reversed)) _reversed)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; uint8 _groupMask
    1
    ;; uint8 _trajectoryId
    1
    ;; float32 _timescale
    4
    ;; bool _reversed
    1
    ;; bool _relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _groupMask
       (write-byte _groupMask s)
     ;; uint8 _trajectoryId
       (write-byte _trajectoryId s)
     ;; float32 _timescale
       (sys::poke _timescale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _reversed
       (if _reversed (write-byte -1 s) (write-byte 0 s))
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _groupMask
     (setq _groupMask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _trajectoryId
     (setq _trajectoryId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _timescale
     (setq _timescale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _reversed
     (setq _reversed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass crazyflie_driver::StartTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::StartTrajectoryResponse
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

(defclass crazyflie_driver::StartTrajectory
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::StartTrajectory :md5sum-) "74e2cf5224bc82fcc8d9c7dd3865d912")
(setf (get crazyflie_driver::StartTrajectory :datatype-) "crazyflie_driver/StartTrajectory")
(setf (get crazyflie_driver::StartTrajectory :request) crazyflie_driver::StartTrajectoryRequest)
(setf (get crazyflie_driver::StartTrajectory :response) crazyflie_driver::StartTrajectoryResponse)

(defmethod crazyflie_driver::StartTrajectoryRequest
  (:response () (instance crazyflie_driver::StartTrajectoryResponse :init)))

(setf (get crazyflie_driver::StartTrajectoryRequest :md5sum-) "74e2cf5224bc82fcc8d9c7dd3865d912")
(setf (get crazyflie_driver::StartTrajectoryRequest :datatype-) "crazyflie_driver/StartTrajectoryRequest")
(setf (get crazyflie_driver::StartTrajectoryRequest :definition-)
      "uint8 groupMask
uint8 trajectoryId
float32 timescale
bool reversed
bool relative
---

")

(setf (get crazyflie_driver::StartTrajectoryResponse :md5sum-) "74e2cf5224bc82fcc8d9c7dd3865d912")
(setf (get crazyflie_driver::StartTrajectoryResponse :datatype-) "crazyflie_driver/StartTrajectoryResponse")
(setf (get crazyflie_driver::StartTrajectoryResponse :definition-)
      "uint8 groupMask
uint8 trajectoryId
float32 timescale
bool reversed
bool relative
---

")



(provide :crazyflie_driver/StartTrajectory "74e2cf5224bc82fcc8d9c7dd3865d912")


