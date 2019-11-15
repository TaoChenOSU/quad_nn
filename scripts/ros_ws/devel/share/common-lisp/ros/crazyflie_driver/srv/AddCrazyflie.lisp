; Auto-generated. Do not edit!


(cl:in-package crazyflie_driver-srv)


;//! \htmlinclude AddCrazyflie-request.msg.html

(cl:defclass <AddCrazyflie-request> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (tf_prefix
    :reader tf_prefix
    :initarg :tf_prefix
    :type cl:string
    :initform "")
   (roll_trim
    :reader roll_trim
    :initarg :roll_trim
    :type cl:float
    :initform 0.0)
   (pitch_trim
    :reader pitch_trim
    :initarg :pitch_trim
    :type cl:float
    :initform 0.0)
   (enable_logging
    :reader enable_logging
    :initarg :enable_logging
    :type cl:boolean
    :initform cl:nil)
   (enable_parameters
    :reader enable_parameters
    :initarg :enable_parameters
    :type cl:boolean
    :initform cl:nil)
   (log_blocks
    :reader log_blocks
    :initarg :log_blocks
    :type (cl:vector crazyflie_driver-msg:LogBlock)
   :initform (cl:make-array 0 :element-type 'crazyflie_driver-msg:LogBlock :initial-element (cl:make-instance 'crazyflie_driver-msg:LogBlock)))
   (use_ros_time
    :reader use_ros_time
    :initarg :use_ros_time
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_imu
    :reader enable_logging_imu
    :initarg :enable_logging_imu
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_temperature
    :reader enable_logging_temperature
    :initarg :enable_logging_temperature
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_magnetic_field
    :reader enable_logging_magnetic_field
    :initarg :enable_logging_magnetic_field
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_pressure
    :reader enable_logging_pressure
    :initarg :enable_logging_pressure
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_battery
    :reader enable_logging_battery
    :initarg :enable_logging_battery
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_pose
    :reader enable_logging_pose
    :initarg :enable_logging_pose
    :type cl:boolean
    :initform cl:nil)
   (enable_logging_packets
    :reader enable_logging_packets
    :initarg :enable_logging_packets
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddCrazyflie-request (<AddCrazyflie-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCrazyflie-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCrazyflie-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<AddCrazyflie-request> is deprecated: use crazyflie_driver-srv:AddCrazyflie-request instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:uri-val is deprecated.  Use crazyflie_driver-srv:uri instead.")
  (uri m))

(cl:ensure-generic-function 'tf_prefix-val :lambda-list '(m))
(cl:defmethod tf_prefix-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:tf_prefix-val is deprecated.  Use crazyflie_driver-srv:tf_prefix instead.")
  (tf_prefix m))

(cl:ensure-generic-function 'roll_trim-val :lambda-list '(m))
(cl:defmethod roll_trim-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:roll_trim-val is deprecated.  Use crazyflie_driver-srv:roll_trim instead.")
  (roll_trim m))

(cl:ensure-generic-function 'pitch_trim-val :lambda-list '(m))
(cl:defmethod pitch_trim-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:pitch_trim-val is deprecated.  Use crazyflie_driver-srv:pitch_trim instead.")
  (pitch_trim m))

(cl:ensure-generic-function 'enable_logging-val :lambda-list '(m))
(cl:defmethod enable_logging-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging-val is deprecated.  Use crazyflie_driver-srv:enable_logging instead.")
  (enable_logging m))

(cl:ensure-generic-function 'enable_parameters-val :lambda-list '(m))
(cl:defmethod enable_parameters-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_parameters-val is deprecated.  Use crazyflie_driver-srv:enable_parameters instead.")
  (enable_parameters m))

(cl:ensure-generic-function 'log_blocks-val :lambda-list '(m))
(cl:defmethod log_blocks-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:log_blocks-val is deprecated.  Use crazyflie_driver-srv:log_blocks instead.")
  (log_blocks m))

(cl:ensure-generic-function 'use_ros_time-val :lambda-list '(m))
(cl:defmethod use_ros_time-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:use_ros_time-val is deprecated.  Use crazyflie_driver-srv:use_ros_time instead.")
  (use_ros_time m))

(cl:ensure-generic-function 'enable_logging_imu-val :lambda-list '(m))
(cl:defmethod enable_logging_imu-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_imu-val is deprecated.  Use crazyflie_driver-srv:enable_logging_imu instead.")
  (enable_logging_imu m))

(cl:ensure-generic-function 'enable_logging_temperature-val :lambda-list '(m))
(cl:defmethod enable_logging_temperature-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_temperature-val is deprecated.  Use crazyflie_driver-srv:enable_logging_temperature instead.")
  (enable_logging_temperature m))

(cl:ensure-generic-function 'enable_logging_magnetic_field-val :lambda-list '(m))
(cl:defmethod enable_logging_magnetic_field-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_magnetic_field-val is deprecated.  Use crazyflie_driver-srv:enable_logging_magnetic_field instead.")
  (enable_logging_magnetic_field m))

(cl:ensure-generic-function 'enable_logging_pressure-val :lambda-list '(m))
(cl:defmethod enable_logging_pressure-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_pressure-val is deprecated.  Use crazyflie_driver-srv:enable_logging_pressure instead.")
  (enable_logging_pressure m))

(cl:ensure-generic-function 'enable_logging_battery-val :lambda-list '(m))
(cl:defmethod enable_logging_battery-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_battery-val is deprecated.  Use crazyflie_driver-srv:enable_logging_battery instead.")
  (enable_logging_battery m))

(cl:ensure-generic-function 'enable_logging_pose-val :lambda-list '(m))
(cl:defmethod enable_logging_pose-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_pose-val is deprecated.  Use crazyflie_driver-srv:enable_logging_pose instead.")
  (enable_logging_pose m))

(cl:ensure-generic-function 'enable_logging_packets-val :lambda-list '(m))
(cl:defmethod enable_logging_packets-val ((m <AddCrazyflie-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_driver-srv:enable_logging_packets-val is deprecated.  Use crazyflie_driver-srv:enable_logging_packets instead.")
  (enable_logging_packets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCrazyflie-request>) ostream)
  "Serializes a message object of type '<AddCrazyflie-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tf_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tf_prefix))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_trim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_trim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_parameters) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'log_blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'log_blocks))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_ros_time) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_imu) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_temperature) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_magnetic_field) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_pressure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_battery) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_pose) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_logging_packets) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCrazyflie-request>) istream)
  "Deserializes a message object of type '<AddCrazyflie-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tf_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tf_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_trim) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_trim) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enable_logging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_parameters) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'log_blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'log_blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'crazyflie_driver-msg:LogBlock))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'use_ros_time) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_imu) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_temperature) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_magnetic_field) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_pressure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_battery) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_logging_packets) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCrazyflie-request>)))
  "Returns string type for a service object of type '<AddCrazyflie-request>"
  "crazyflie_driver/AddCrazyflieRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCrazyflie-request)))
  "Returns string type for a service object of type 'AddCrazyflie-request"
  "crazyflie_driver/AddCrazyflieRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCrazyflie-request>)))
  "Returns md5sum for a message object of type '<AddCrazyflie-request>"
  "532d9ac6ee37f1d90ac3223857b70779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCrazyflie-request)))
  "Returns md5sum for a message object of type 'AddCrazyflie-request"
  "532d9ac6ee37f1d90ac3223857b70779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCrazyflie-request>)))
  "Returns full string definition for message of type '<AddCrazyflie-request>"
  (cl:format cl:nil "string uri~%string tf_prefix~%float32 roll_trim~%float32 pitch_trim~%bool enable_logging~%bool enable_parameters~%LogBlock[] log_blocks~%bool use_ros_time~%bool enable_logging_imu~%bool enable_logging_temperature~%bool enable_logging_magnetic_field~%bool enable_logging_pressure~%bool enable_logging_battery~%bool enable_logging_pose~%bool enable_logging_packets~%~%================================================================================~%MSG: crazyflie_driver/LogBlock~%string topic_name~%int16 frequency~%string[] variables~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCrazyflie-request)))
  "Returns full string definition for message of type 'AddCrazyflie-request"
  (cl:format cl:nil "string uri~%string tf_prefix~%float32 roll_trim~%float32 pitch_trim~%bool enable_logging~%bool enable_parameters~%LogBlock[] log_blocks~%bool use_ros_time~%bool enable_logging_imu~%bool enable_logging_temperature~%bool enable_logging_magnetic_field~%bool enable_logging_pressure~%bool enable_logging_battery~%bool enable_logging_pose~%bool enable_logging_packets~%~%================================================================================~%MSG: crazyflie_driver/LogBlock~%string topic_name~%int16 frequency~%string[] variables~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCrazyflie-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
     4 (cl:length (cl:slot-value msg 'tf_prefix))
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'log_blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCrazyflie-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCrazyflie-request
    (cl:cons ':uri (uri msg))
    (cl:cons ':tf_prefix (tf_prefix msg))
    (cl:cons ':roll_trim (roll_trim msg))
    (cl:cons ':pitch_trim (pitch_trim msg))
    (cl:cons ':enable_logging (enable_logging msg))
    (cl:cons ':enable_parameters (enable_parameters msg))
    (cl:cons ':log_blocks (log_blocks msg))
    (cl:cons ':use_ros_time (use_ros_time msg))
    (cl:cons ':enable_logging_imu (enable_logging_imu msg))
    (cl:cons ':enable_logging_temperature (enable_logging_temperature msg))
    (cl:cons ':enable_logging_magnetic_field (enable_logging_magnetic_field msg))
    (cl:cons ':enable_logging_pressure (enable_logging_pressure msg))
    (cl:cons ':enable_logging_battery (enable_logging_battery msg))
    (cl:cons ':enable_logging_pose (enable_logging_pose msg))
    (cl:cons ':enable_logging_packets (enable_logging_packets msg))
))
;//! \htmlinclude AddCrazyflie-response.msg.html

(cl:defclass <AddCrazyflie-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddCrazyflie-response (<AddCrazyflie-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCrazyflie-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCrazyflie-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_driver-srv:<AddCrazyflie-response> is deprecated: use crazyflie_driver-srv:AddCrazyflie-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCrazyflie-response>) ostream)
  "Serializes a message object of type '<AddCrazyflie-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCrazyflie-response>) istream)
  "Deserializes a message object of type '<AddCrazyflie-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCrazyflie-response>)))
  "Returns string type for a service object of type '<AddCrazyflie-response>"
  "crazyflie_driver/AddCrazyflieResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCrazyflie-response)))
  "Returns string type for a service object of type 'AddCrazyflie-response"
  "crazyflie_driver/AddCrazyflieResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCrazyflie-response>)))
  "Returns md5sum for a message object of type '<AddCrazyflie-response>"
  "532d9ac6ee37f1d90ac3223857b70779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCrazyflie-response)))
  "Returns md5sum for a message object of type 'AddCrazyflie-response"
  "532d9ac6ee37f1d90ac3223857b70779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCrazyflie-response>)))
  "Returns full string definition for message of type '<AddCrazyflie-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCrazyflie-response)))
  "Returns full string definition for message of type 'AddCrazyflie-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCrazyflie-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCrazyflie-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCrazyflie-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddCrazyflie)))
  'AddCrazyflie-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddCrazyflie)))
  'AddCrazyflie-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCrazyflie)))
  "Returns string type for a service object of type '<AddCrazyflie>"
  "crazyflie_driver/AddCrazyflie")