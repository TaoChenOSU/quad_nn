;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::UploadTrajectory)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'UploadTrajectory (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::UPLOADTRAJECTORY")
  (make-package "CRAZYFLIE_DRIVER::UPLOADTRAJECTORY"))
(unless (find-package "CRAZYFLIE_DRIVER::UPLOADTRAJECTORYREQUEST")
  (make-package "CRAZYFLIE_DRIVER::UPLOADTRAJECTORYREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::UPLOADTRAJECTORYRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::UPLOADTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::UploadTrajectoryRequest
  :super ros::object
  :slots (_trajectoryId _pieceOffset _pieces ))

(defmethod crazyflie_driver::UploadTrajectoryRequest
  (:init
   (&key
    ((:trajectoryId __trajectoryId) 0)
    ((:pieceOffset __pieceOffset) 0)
    ((:pieces __pieces) (let (r) (dotimes (i 0) (push (instance crazyflie_driver::TrajectoryPolynomialPiece :init) r)) r))
    )
   (send-super :init)
   (setq _trajectoryId (round __trajectoryId))
   (setq _pieceOffset (round __pieceOffset))
   (setq _pieces __pieces)
   self)
  (:trajectoryId
   (&optional __trajectoryId)
   (if __trajectoryId (setq _trajectoryId __trajectoryId)) _trajectoryId)
  (:pieceOffset
   (&optional __pieceOffset)
   (if __pieceOffset (setq _pieceOffset __pieceOffset)) _pieceOffset)
  (:pieces
   (&rest __pieces)
   (if (keywordp (car __pieces))
       (send* _pieces __pieces)
     (progn
       (if __pieces (setq _pieces (car __pieces)))
       _pieces)))
  (:serialization-length
   ()
   (+
    ;; uint8 _trajectoryId
    1
    ;; uint32 _pieceOffset
    4
    ;; crazyflie_driver/TrajectoryPolynomialPiece[] _pieces
    (apply #'+ (send-all _pieces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _trajectoryId
       (write-byte _trajectoryId s)
     ;; uint32 _pieceOffset
       (write-long _pieceOffset s)
     ;; crazyflie_driver/TrajectoryPolynomialPiece[] _pieces
     (write-long (length _pieces) s)
     (dolist (elem _pieces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _trajectoryId
     (setq _trajectoryId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _pieceOffset
     (setq _pieceOffset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; crazyflie_driver/TrajectoryPolynomialPiece[] _pieces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pieces (let (r) (dotimes (i n) (push (instance crazyflie_driver::TrajectoryPolynomialPiece :init) r)) r))
     (dolist (elem- _pieces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass crazyflie_driver::UploadTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::UploadTrajectoryResponse
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

(defclass crazyflie_driver::UploadTrajectory
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::UploadTrajectory :md5sum-) "becd7733dfdc3d0c93a9064ba651cf17")
(setf (get crazyflie_driver::UploadTrajectory :datatype-) "crazyflie_driver/UploadTrajectory")
(setf (get crazyflie_driver::UploadTrajectory :request) crazyflie_driver::UploadTrajectoryRequest)
(setf (get crazyflie_driver::UploadTrajectory :response) crazyflie_driver::UploadTrajectoryResponse)

(defmethod crazyflie_driver::UploadTrajectoryRequest
  (:response () (instance crazyflie_driver::UploadTrajectoryResponse :init)))

(setf (get crazyflie_driver::UploadTrajectoryRequest :md5sum-) "becd7733dfdc3d0c93a9064ba651cf17")
(setf (get crazyflie_driver::UploadTrajectoryRequest :datatype-) "crazyflie_driver/UploadTrajectoryRequest")
(setf (get crazyflie_driver::UploadTrajectoryRequest :definition-)
      "uint8 trajectoryId
uint32 pieceOffset
TrajectoryPolynomialPiece[] pieces

================================================================================
MSG: crazyflie_driver/TrajectoryPolynomialPiece
#

float32[] poly_x
float32[] poly_y
float32[] poly_z
float32[] poly_yaw
---

")

(setf (get crazyflie_driver::UploadTrajectoryResponse :md5sum-) "becd7733dfdc3d0c93a9064ba651cf17")
(setf (get crazyflie_driver::UploadTrajectoryResponse :datatype-) "crazyflie_driver/UploadTrajectoryResponse")
(setf (get crazyflie_driver::UploadTrajectoryResponse :definition-)
      "uint8 trajectoryId
uint32 pieceOffset
TrajectoryPolynomialPiece[] pieces

================================================================================
MSG: crazyflie_driver/TrajectoryPolynomialPiece
#

float32[] poly_x
float32[] poly_y
float32[] poly_z
float32[] poly_yaw
---

")



(provide :crazyflie_driver/UploadTrajectory "becd7733dfdc3d0c93a9064ba651cf17")


