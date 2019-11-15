; Auto-generated. Do not edit!


(cl:in-package crazyflie_driver-srv)


;//! \htmlinclude RemoveCrazyflie-request.msg.html

(cl:defclass <RemoveCrazyflie-request> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform ""))
)

(cl:defclass RemoveCrazyflie-request (<RemoveCrazyflie-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveCrazyflie-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveCrazyflie-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<RemoveCrazyflie-request> is deprecated: use crazyflie_driver-srv:RemoveCrazyflie-request instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <RemoveCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:uri-val is deprecated.  Use crazyflie_driver-srv:uri instead.")
  (uri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveCrazyflie-request>) ostream)
  "Serializes a message object of type '<RemoveCrazyflie-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveCrazyflie-request>) istream)
  "Deserializes a message object of type '<RemoveCrazyflie-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveCrazyflie-request>)))
  "Returns string type for a service object of type '<RemoveCrazyflie-request>"
  "crazyflie_driver/RemoveCrazyflieRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveCrazyflie-request)))
  "Returns string type for a service object of type 'RemoveCrazyflie-request"
  "crazyflie_driver/RemoveCrazyflieRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveCrazyflie-request>)))
  "Returns md5sum for a message object of type '<RemoveCrazyflie-request>"
  "636fe5e07550f026d28388e95c38a9f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveCrazyflie-request)))
  "Returns md5sum for a message object of type 'RemoveCrazyflie-request"
  "636fe5e07550f026d28388e95c38a9f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveCrazyflie-request>)))
  "Returns full string definition for message of type '<RemoveCrazyflie-request>"
  (cl:format cl:nil "string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveCrazyflie-request)))
  "Returns full string definition for message of type 'RemoveCrazyflie-request"
  (cl:format cl:nil "string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveCrazyflie-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveCrazyflie-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveCrazyflie-request
    (cl:cons ':uri (uri msg))
))
;//! \htmlinclude RemoveCrazyflie-response.msg.html

(cl:defclass <RemoveCrazyflie-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RemoveCrazyflie-response (<RemoveCrazyflie-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveCrazyflie-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveCrazyflie-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<RemoveCrazyflie-response> is deprecated: use crazyflie_driver-srv:RemoveCrazyflie-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveCrazyflie-response>) ostream)
  "Serializes a message object of type '<RemoveCrazyflie-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveCrazyflie-response>) istream)
  "Deserializes a message object of type '<RemoveCrazyflie-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveCrazyflie-response>)))
  "Returns string type for a service object of type '<RemoveCrazyflie-response>"
  "crazyflie_driver/RemoveCrazyflieResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveCrazyflie-response)))
  "Returns string type for a service object of type 'RemoveCrazyflie-response"
  "crazyflie_driver/RemoveCrazyflieResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveCrazyflie-response>)))
  "Returns md5sum for a message object of type '<RemoveCrazyflie-response>"
  "636fe5e07550f026d28388e95c38a9f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveCrazyflie-response)))
  "Returns md5sum for a message object of type 'RemoveCrazyflie-response"
  "636fe5e07550f026d28388e95c38a9f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveCrazyflie-response>)))
  "Returns full string definition for message of type '<RemoveCrazyflie-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveCrazyflie-response)))
  "Returns full string definition for message of type 'RemoveCrazyflie-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveCrazyflie-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveCrazyflie-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveCrazyflie-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveCrazyflie)))
  'RemoveCrazyflie-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveCrazyflie)))
  'RemoveCrazyflie-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveCrazyflie)))
  "Returns string type for a service object of type '<RemoveCrazyflie>"
  "crazyflie_driver/RemoveCrazyflie")