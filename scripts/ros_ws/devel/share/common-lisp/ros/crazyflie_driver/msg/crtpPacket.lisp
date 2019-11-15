; Auto-generated. Do not edit!


(cl:in-package crazyflie_driver-msg)


;//! \htmlinclude crtpPacket.msg.html

(cl:defclass <crtpPacket> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0)
   (header
    :reader header
    :initarg :header
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 30 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass crtpPacket (<crtpPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <crtpPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'crtpPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-msg:<crtpPacket> is deprecated: use crazyflie_driver-msg:crtpPacket instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <crtpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-msg:size-val is deprecated.  Use crazyflie_driver-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <crtpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-msg:header-val is deprecated.  Use crazyflie_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <crtpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-msg:data-val is deprecated.  Use crazyflie_driver-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <crtpPacket>) ostream)
  "Serializes a message object of type '<crtpPacket>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'header)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <crtpPacket>) istream)
  "Deserializes a message object of type '<crtpPacket>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'header)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<crtpPacket>)))
  "Returns string type for a message object of type '<crtpPacket>"
  "crazyflie_driver/crtpPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'crtpPacket)))
  "Returns string type for a message object of type 'crtpPacket"
  "crazyflie_driver/crtpPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<crtpPacket>)))
  "Returns md5sum for a message object of type '<crtpPacket>"
  "211163da2417112110f499fc3a0bedf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'crtpPacket)))
  "Returns md5sum for a message object of type 'crtpPacket"
  "211163da2417112110f499fc3a0bedf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<crtpPacket>)))
  "Returns full string definition for message of type '<crtpPacket>"
  (cl:format cl:nil "uint8 size~%uint8 header~%uint8[30] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'crtpPacket)))
  "Returns full string definition for message of type 'crtpPacket"
  (cl:format cl:nil "uint8 size~%uint8 header~%uint8[30] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <crtpPacket>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <crtpPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'crtpPacket
    (cl:cons ':size (size msg))
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
