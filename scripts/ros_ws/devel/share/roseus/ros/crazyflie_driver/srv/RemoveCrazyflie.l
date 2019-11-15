;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::RemoveCrazyflie)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'RemoveCrazyflie (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::REMOVECRAZYFLIE")
  (make-package "CRAZYFLIE_DRIVER::REMOVECRAZYFLIE"))
(unless (find-package "CRAZYFLIE_DRIVER::REMOVECRAZYFLIEREQUEST")
  (make-package "CRAZYFLIE_DRIVER::REMOVECRAZYFLIEREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::REMOVECRAZYFLIERESPONSE")
  (make-package "CRAZYFLIE_DRIVER::REMOVECRAZYFLIERESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::RemoveCrazyflieRequest
  :super ros::object
  :slots (_uri ))

(defmethod crazyflie_driver::RemoveCrazyflieRequest
  (:init
   (&key
    ((:uri __uri) "")
    )
   (send-super :init)
   (setq _uri (string __uri))
   self)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:serialization-length
   ()
   (+
    ;; string _uri
    4 (length _uri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass crazyflie_driver::RemoveCrazyflieResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::RemoveCrazyflieResponse
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

(defclass crazyflie_driver::RemoveCrazyflie
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::RemoveCrazyflie :md5sum-) "636fe5e07550f026d28388e95c38a9f4")
(setf (get crazyflie_driver::RemoveCrazyflie :datatype-) "crazyflie_driver/RemoveCrazyflie")
(setf (get crazyflie_driver::RemoveCrazyflie :request) crazyflie_driver::RemoveCrazyflieRequest)
(setf (get crazyflie_driver::RemoveCrazyflie :response) crazyflie_driver::RemoveCrazyflieResponse)

(defmethod crazyflie_driver::RemoveCrazyflieRequest
  (:response () (instance crazyflie_driver::RemoveCrazyflieResponse :init)))

(setf (get crazyflie_driver::RemoveCrazyflieRequest :md5sum-) "636fe5e07550f026d28388e95c38a9f4")
(setf (get crazyflie_driver::RemoveCrazyflieRequest :datatype-) "crazyflie_driver/RemoveCrazyflieRequest")
(setf (get crazyflie_driver::RemoveCrazyflieRequest :definition-)
      "string uri
---

")

(setf (get crazyflie_driver::RemoveCrazyflieResponse :md5sum-) "636fe5e07550f026d28388e95c38a9f4")
(setf (get crazyflie_driver::RemoveCrazyflieResponse :datatype-) "crazyflie_driver/RemoveCrazyflieResponse")
(setf (get crazyflie_driver::RemoveCrazyflieResponse :definition-)
      "string uri
---

")



(provide :crazyflie_driver/RemoveCrazyflie "636fe5e07550f026d28388e95c38a9f4")


