;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::UploadNN)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'UploadNN (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::UPLOADNN")
  (make-package "CRAZYFLIE_DRIVER::UPLOADNN"))
(unless (find-package "CRAZYFLIE_DRIVER::UPLOADNNREQUEST")
  (make-package "CRAZYFLIE_DRIVER::UPLOADNNREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::UPLOADNNRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::UPLOADNNRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::UploadNNRequest
  :super ros::object
  :slots (_filename ))

(defmethod crazyflie_driver::UploadNNRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass crazyflie_driver::UploadNNResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::UploadNNResponse
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

(defclass crazyflie_driver::UploadNN
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::UploadNN :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get crazyflie_driver::UploadNN :datatype-) "crazyflie_driver/UploadNN")
(setf (get crazyflie_driver::UploadNN :request) crazyflie_driver::UploadNNRequest)
(setf (get crazyflie_driver::UploadNN :response) crazyflie_driver::UploadNNResponse)

(defmethod crazyflie_driver::UploadNNRequest
  (:response () (instance crazyflie_driver::UploadNNResponse :init)))

(setf (get crazyflie_driver::UploadNNRequest :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get crazyflie_driver::UploadNNRequest :datatype-) "crazyflie_driver/UploadNNRequest")
(setf (get crazyflie_driver::UploadNNRequest :definition-)
      "string filename
---

")

(setf (get crazyflie_driver::UploadNNResponse :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get crazyflie_driver::UploadNNResponse :datatype-) "crazyflie_driver/UploadNNResponse")
(setf (get crazyflie_driver::UploadNNResponse :definition-)
      "string filename
---

")



(provide :crazyflie_driver/UploadNN "030824f52a0628ead956fb9d67e66ae9")


