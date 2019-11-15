; Auto-generated. Do not edit!


(cl:in-package crazyflie_driver-srv)


;//! \htmlinclude sendPacket-request.msg.html

(cl:defclass <sendPacket-request> (roslisp-msg-protocol:ros-message)
  ((packet
    :reader packet
    :initarg :packet
    :type crazyflie_driver-msg:crtpPacket
    :initform (cl:make-instance 'crazyflie_driver-msg:crtpPacket)))
)

(cl:defclass sendPacket-request (<sendPacket-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sendPacket-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sendPacket-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<sendPacket-request> is deprecated: use crazyflie_driver-srv:sendPacket-request instead.")))

(cl:ensure-generic-function 'packet-val :lambda-list '(m))
(cl:defmethod packet-val ((m <sendPacket-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:packet-val is deprecated.  Use crazyflie_driver-srv:packet instead.")
  (packet m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sendPacket-request>) ostream)
  "Serializes a message object of type '<sendPacket-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'packet) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sendPacket-request>) istream)
  "Deserializes a message object of type '<sendPacket-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'packet) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sendPacket-request>)))
  "Returns string type for a service object of type '<sendPacket-request>"
  "crazyflie_driver/sendPacketRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sendPacket-request)))
  "Returns string type for a service object of type 'sendPacket-request"
  "crazyflie_driver/sendPacketRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sendPacket-request>)))
  "Returns md5sum for a message object of type '<sendPacket-request>"
  "e3f946ce194c915d34d0f5ddedef0de7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sendPacket-request)))
  "Returns md5sum for a message object of type 'sendPacket-request"
  "e3f946ce194c915d34d0f5ddedef0de7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sendPacket-request>)))
  "Returns full string definition for message of type '<sendPacket-request>"
  (cl:format cl:nil "crazyflie_driver/crtpPacket packet~%~%================================================================================~%MSG: crazyflie_driver/crtpPacket~%uint8 size~%uint8 header~%uint8[30] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sendPacket-request)))
  "Returns full string definition for message of type 'sendPacket-request"
  (cl:format cl:nil "crazyflie_driver/crtpPacket packet~%~%================================================================================~%MSG: crazyflie_driver/crtpPacket~%uint8 size~%uint8 header~%uint8[30] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sendPacket-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'packet))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sendPacket-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sendPacket-request
    (cl:cons ':packet (packet msg))
))
;//! \htmlinclude sendPacket-response.msg.html

(cl:defclass <sendPacket-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass sendPacket-response (<sendPacket-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sendPacket-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sendPacket-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<sendPacket-response> is deprecated: use crazyflie_driver-srv:sendPacket-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sendPacket-response>) ostream)
  "Serializes a message object of type '<sendPacket-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sendPacket-response>) istream)
  "Deserializes a message object of type '<sendPacket-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sendPacket-response>)))
  "Returns string type for a service object of type '<sendPacket-response>"
  "crazyflie_driver/sendPacketResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sendPacket-response)))
  "Returns string type for a service object of type 'sendPacket-response"
  "crazyflie_driver/sendPacketResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sendPacket-response>)))
  "Returns md5sum for a message object of type '<sendPacket-response>"
  "e3f946ce194c915d34d0f5ddedef0de7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sendPacket-response)))
  "Returns md5sum for a message object of type 'sendPacket-response"
  "e3f946ce194c915d34d0f5ddedef0de7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sendPacket-response>)))
  "Returns full string definition for message of type '<sendPacket-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sendPacket-response)))
  "Returns full string definition for message of type 'sendPacket-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sendPacket-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sendPacket-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sendPacket-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sendPacket)))
  'sendPacket-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sendPacket)))
  'sendPacket-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sendPacket)))
  "Returns string type for a service object of type '<sendPacket>"
  "crazyflie_driver/sendPacket")