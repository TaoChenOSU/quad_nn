;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_driver::UpdateParams)
  (if (not (find-package "CRAZYFLIE_DRIVER"))
    (make-package "CRAZYFLIE_DRIVER"))
  (shadow 'UpdateParams (find-package "CRAZYFLIE_DRIVER")))
(unless (find-package "CRAZYFLIE_DRIVER::UPDATEPARAMS")
  (make-package "CRAZYFLIE_DRIVER::UPDATEPARAMS"))
(unless (find-package "CRAZYFLIE_DRIVER::UPDATEPARAMSREQUEST")
  (make-package "CRAZYFLIE_DRIVER::UPDATEPARAMSREQUEST"))
(unless (find-package "CRAZYFLIE_DRIVER::UPDATEPARAMSRESPONSE")
  (make-package "CRAZYFLIE_DRIVER::UPDATEPARAMSRESPONSE"))

(in-package "ROS")





(defclass crazyflie_driver::UpdateParamsRequest
  :super ros::object
  :slots (_params ))

(defmethod crazyflie_driver::UpdateParamsRequest
  (:init
   (&key
    ((:params __params) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _params __params)
   self)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; string[] _params
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _params)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _params i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass crazyflie_driver::UpdateParamsResponse
  :super ros::object
  :slots ())

(defmethod crazyflie_driver::UpdateParamsResponse
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

(defclass crazyflie_driver::UpdateParams
  :super ros::object
  :slots ())

(setf (get crazyflie_driver::UpdateParams :md5sum-) "279e0627eb574ffe8968384218434f5f")
(setf (get crazyflie_driver::UpdateParams :datatype-) "crazyflie_driver/UpdateParams")
(setf (get crazyflie_driver::UpdateParams :request) crazyflie_driver::UpdateParamsRequest)
(setf (get crazyflie_driver::UpdateParams :response) crazyflie_driver::UpdateParamsResponse)

(defmethod crazyflie_driver::UpdateParamsRequest
  (:response () (instance crazyflie_driver::UpdateParamsResponse :init)))

(setf (get crazyflie_driver::UpdateParamsRequest :md5sum-) "279e0627eb574ffe8968384218434f5f")
(setf (get crazyflie_driver::UpdateParamsRequest :datatype-) "crazyflie_driver/UpdateParamsRequest")
(setf (get crazyflie_driver::UpdateParamsRequest :definition-)
      "string[] params
---

")

(setf (get crazyflie_driver::UpdateParamsResponse :md5sum-) "279e0627eb574ffe8968384218434f5f")
(setf (get crazyflie_driver::UpdateParamsResponse :datatype-) "crazyflie_driver/UpdateParamsResponse")
(setf (get crazyflie_driver::UpdateParamsResponse :definition-)
      "string[] params
---

")



(provide :crazyflie_driver/UpdateParams "279e0627eb574ffe8968384218434f5f")


