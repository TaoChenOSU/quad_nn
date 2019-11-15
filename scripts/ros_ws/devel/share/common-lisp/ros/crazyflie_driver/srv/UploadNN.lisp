; Auto-generated. Do not edit!


(cl:in-package crazyflie_driver-srv)


;//! \htmlinclude UploadNN-request.msg.html

(cl:defclass <UploadNN-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass UploadNN-request (<UploadNN-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploadNN-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploadNN-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<UploadNN-request> is deprecated: use crazyflie_driver-srv:UploadNN-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <UploadNN-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:filename-val is deprecated.  Use crazyflie_driver-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploadNN-request>) ostream)
  "Serializes a message object of type '<UploadNN-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploadNN-request>) istream)
  "Deserializes a message object of type '<UploadNN-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploadNN-request>)))
  "Returns string type for a service object of type '<UploadNN-request>"
  "crazyflie_driver/UploadNNRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadNN-request)))
  "Returns string type for a service object of type 'UploadNN-request"
  "crazyflie_driver/UploadNNRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploadNN-request>)))
  "Returns md5sum for a message object of type '<UploadNN-request>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploadNN-request)))
  "Returns md5sum for a message object of type 'UploadNN-request"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploadNN-request>)))
  "Returns full string definition for message of type '<UploadNN-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploadNN-request)))
  "Returns full string definition for message of type 'UploadNN-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploadNN-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploadNN-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UploadNN-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude UploadNN-response.msg.html

(cl:defclass <UploadNN-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UploadNN-response (<UploadNN-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploadNN-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploadNN-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<UploadNN-response> is deprecated: use crazyflie_driver-srv:UploadNN-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploadNN-response>) ostream)
  "Serializes a message object of type '<UploadNN-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploadNN-response>) istream)
  "Deserializes a message object of type '<UploadNN-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploadNN-response>)))
  "Returns string type for a service object of type '<UploadNN-response>"
  "crazyflie_driver/UploadNNResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadNN-response)))
  "Returns string type for a service object of type 'UploadNN-response"
  "crazyflie_driver/UploadNNResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploadNN-response>)))
  "Returns md5sum for a message object of type '<UploadNN-response>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploadNN-response)))
  "Returns md5sum for a message object of type 'UploadNN-response"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploadNN-response>)))
  "Returns full string definition for message of type '<UploadNN-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploadNN-response)))
  "Returns full string definition for message of type 'UploadNN-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploadNN-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploadNN-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UploadNN-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UploadNN)))
  'UploadNN-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UploadNN)))
  'UploadNN-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadNN)))
  "Returns string type for a service object of type '<UploadNN>"
  "crazyflie_driver/UploadNN")