// Auto-generated. Do not edit!

// (in-package crazyflie_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LogBlock = require('../msg/LogBlock.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddCrazyflieRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uri = null;
      this.tf_prefix = null;
      this.roll_trim = null;
      this.pitch_trim = null;
      this.enable_logging = null;
      this.enable_parameters = null;
      this.log_blocks = null;
      this.use_ros_time = null;
      this.enable_logging_imu = null;
      this.enable_logging_temperature = null;
      this.enable_logging_magnetic_field = null;
      this.enable_logging_pressure = null;
      this.enable_logging_battery = null;
      this.enable_logging_pose = null;
      this.enable_logging_packets = null;
    }
    else {
      if (initObj.hasOwnProperty('uri')) {
        this.uri = initObj.uri
      }
      else {
        this.uri = '';
      }
      if (initObj.hasOwnProperty('tf_prefix')) {
        this.tf_prefix = initObj.tf_prefix
      }
      else {
        this.tf_prefix = '';
      }
      if (initObj.hasOwnProperty('roll_trim')) {
        this.roll_trim = initObj.roll_trim
      }
      else {
        this.roll_trim = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_trim')) {
        this.pitch_trim = initObj.pitch_trim
      }
      else {
        this.pitch_trim = 0.0;
      }
      if (initObj.hasOwnProperty('enable_logging')) {
        this.enable_logging = initObj.enable_logging
      }
      else {
        this.enable_logging = false;
      }
      if (initObj.hasOwnProperty('enable_parameters')) {
        this.enable_parameters = initObj.enable_parameters
      }
      else {
        this.enable_parameters = false;
      }
      if (initObj.hasOwnProperty('log_blocks')) {
        this.log_blocks = initObj.log_blocks
      }
      else {
        this.log_blocks = [];
      }
      if (initObj.hasOwnProperty('use_ros_time')) {
        this.use_ros_time = initObj.use_ros_time
      }
      else {
        this.use_ros_time = false;
      }
      if (initObj.hasOwnProperty('enable_logging_imu')) {
        this.enable_logging_imu = initObj.enable_logging_imu
      }
      else {
        this.enable_logging_imu = false;
      }
      if (initObj.hasOwnProperty('enable_logging_temperature')) {
        this.enable_logging_temperature = initObj.enable_logging_temperature
      }
      else {
        this.enable_logging_temperature = false;
      }
      if (initObj.hasOwnProperty('enable_logging_magnetic_field')) {
        this.enable_logging_magnetic_field = initObj.enable_logging_magnetic_field
      }
      else {
        this.enable_logging_magnetic_field = false;
      }
      if (initObj.hasOwnProperty('enable_logging_pressure')) {
        this.enable_logging_pressure = initObj.enable_logging_pressure
      }
      else {
        this.enable_logging_pressure = false;
      }
      if (initObj.hasOwnProperty('enable_logging_battery')) {
        this.enable_logging_battery = initObj.enable_logging_battery
      }
      else {
        this.enable_logging_battery = false;
      }
      if (initObj.hasOwnProperty('enable_logging_pose')) {
        this.enable_logging_pose = initObj.enable_logging_pose
      }
      else {
        this.enable_logging_pose = false;
      }
      if (initObj.hasOwnProperty('enable_logging_packets')) {
        this.enable_logging_packets = initObj.enable_logging_packets
      }
      else {
        this.enable_logging_packets = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddCrazyflieRequest
    // Serialize message field [uri]
    bufferOffset = _serializer.string(obj.uri, buffer, bufferOffset);
    // Serialize message field [tf_prefix]
    bufferOffset = _serializer.string(obj.tf_prefix, buffer, bufferOffset);
    // Serialize message field [roll_trim]
    bufferOffset = _serializer.float32(obj.roll_trim, buffer, bufferOffset);
    // Serialize message field [pitch_trim]
    bufferOffset = _serializer.float32(obj.pitch_trim, buffer, bufferOffset);
    // Serialize message field [enable_logging]
    bufferOffset = _serializer.bool(obj.enable_logging, buffer, bufferOffset);
    // Serialize message field [enable_parameters]
    bufferOffset = _serializer.bool(obj.enable_parameters, buffer, bufferOffset);
    // Serialize message field [log_blocks]
    // Serialize the length for message field [log_blocks]
    bufferOffset = _serializer.uint32(obj.log_blocks.length, buffer, bufferOffset);
    obj.log_blocks.forEach((val) => {
      bufferOffset = LogBlock.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [use_ros_time]
    bufferOffset = _serializer.bool(obj.use_ros_time, buffer, bufferOffset);
    // Serialize message field [enable_logging_imu]
    bufferOffset = _serializer.bool(obj.enable_logging_imu, buffer, bufferOffset);
    // Serialize message field [enable_logging_temperature]
    bufferOffset = _serializer.bool(obj.enable_logging_temperature, buffer, bufferOffset);
    // Serialize message field [enable_logging_magnetic_field]
    bufferOffset = _serializer.bool(obj.enable_logging_magnetic_field, buffer, bufferOffset);
    // Serialize message field [enable_logging_pressure]
    bufferOffset = _serializer.bool(obj.enable_logging_pressure, buffer, bufferOffset);
    // Serialize message field [enable_logging_battery]
    bufferOffset = _serializer.bool(obj.enable_logging_battery, buffer, bufferOffset);
    // Serialize message field [enable_logging_pose]
    bufferOffset = _serializer.bool(obj.enable_logging_pose, buffer, bufferOffset);
    // Serialize message field [enable_logging_packets]
    bufferOffset = _serializer.bool(obj.enable_logging_packets, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddCrazyflieRequest
    let len;
    let data = new AddCrazyflieRequest(null);
    // Deserialize message field [uri]
    data.uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tf_prefix]
    data.tf_prefix = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roll_trim]
    data.roll_trim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_trim]
    data.pitch_trim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enable_logging]
    data.enable_logging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_parameters]
    data.enable_parameters = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [log_blocks]
    // Deserialize array length for message field [log_blocks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.log_blocks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.log_blocks[i] = LogBlock.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [use_ros_time]
    data.use_ros_time = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_imu]
    data.enable_logging_imu = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_temperature]
    data.enable_logging_temperature = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_magnetic_field]
    data.enable_logging_magnetic_field = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_pressure]
    data.enable_logging_pressure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_battery]
    data.enable_logging_battery = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_pose]
    data.enable_logging_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_logging_packets]
    data.enable_logging_packets = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.uri.length;
    length += object.tf_prefix.length;
    object.log_blocks.forEach((val) => {
      length += LogBlock.getMessageSize(val);
    });
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazyflie_driver/AddCrazyflieRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '532d9ac6ee37f1d90ac3223857b70779';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string uri
    string tf_prefix
    float32 roll_trim
    float32 pitch_trim
    bool enable_logging
    bool enable_parameters
    LogBlock[] log_blocks
    bool use_ros_time
    bool enable_logging_imu
    bool enable_logging_temperature
    bool enable_logging_magnetic_field
    bool enable_logging_pressure
    bool enable_logging_battery
    bool enable_logging_pose
    bool enable_logging_packets
    
    ================================================================================
    MSG: crazyflie_driver/LogBlock
    string topic_name
    int16 frequency
    string[] variables
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddCrazyflieRequest(null);
    if (msg.uri !== undefined) {
      resolved.uri = msg.uri;
    }
    else {
      resolved.uri = ''
    }

    if (msg.tf_prefix !== undefined) {
      resolved.tf_prefix = msg.tf_prefix;
    }
    else {
      resolved.tf_prefix = ''
    }

    if (msg.roll_trim !== undefined) {
      resolved.roll_trim = msg.roll_trim;
    }
    else {
      resolved.roll_trim = 0.0
    }

    if (msg.pitch_trim !== undefined) {
      resolved.pitch_trim = msg.pitch_trim;
    }
    else {
      resolved.pitch_trim = 0.0
    }

    if (msg.enable_logging !== undefined) {
      resolved.enable_logging = msg.enable_logging;
    }
    else {
      resolved.enable_logging = false
    }

    if (msg.enable_parameters !== undefined) {
      resolved.enable_parameters = msg.enable_parameters;
    }
    else {
      resolved.enable_parameters = false
    }

    if (msg.log_blocks !== undefined) {
      resolved.log_blocks = new Array(msg.log_blocks.length);
      for (let i = 0; i < resolved.log_blocks.length; ++i) {
        resolved.log_blocks[i] = LogBlock.Resolve(msg.log_blocks[i]);
      }
    }
    else {
      resolved.log_blocks = []
    }

    if (msg.use_ros_time !== undefined) {
      resolved.use_ros_time = msg.use_ros_time;
    }
    else {
      resolved.use_ros_time = false
    }

    if (msg.enable_logging_imu !== undefined) {
      resolved.enable_logging_imu = msg.enable_logging_imu;
    }
    else {
      resolved.enable_logging_imu = false
    }

    if (msg.enable_logging_temperature !== undefined) {
      resolved.enable_logging_temperature = msg.enable_logging_temperature;
    }
    else {
      resolved.enable_logging_temperature = false
    }

    if (msg.enable_logging_magnetic_field !== undefined) {
      resolved.enable_logging_magnetic_field = msg.enable_logging_magnetic_field;
    }
    else {
      resolved.enable_logging_magnetic_field = false
    }

    if (msg.enable_logging_pressure !== undefined) {
      resolved.enable_logging_pressure = msg.enable_logging_pressure;
    }
    else {
      resolved.enable_logging_pressure = false
    }

    if (msg.enable_logging_battery !== undefined) {
      resolved.enable_logging_battery = msg.enable_logging_battery;
    }
    else {
      resolved.enable_logging_battery = false
    }

    if (msg.enable_logging_pose !== undefined) {
      resolved.enable_logging_pose = msg.enable_logging_pose;
    }
    else {
      resolved.enable_logging_pose = false
    }

    if (msg.enable_logging_packets !== undefined) {
      resolved.enable_logging_packets = msg.enable_logging_packets;
    }
    else {
      resolved.enable_logging_packets = false
    }

    return resolved;
    }
};

class AddCrazyflieResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddCrazyflieResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddCrazyflieResponse
    let len;
    let data = new AddCrazyflieResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazyflie_driver/AddCrazyflieResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddCrazyflieResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddCrazyflieRequest,
  Response: AddCrazyflieResponse,
  md5sum() { return '532d9ac6ee37f1d90ac3223857b70779'; },
  datatype() { return 'crazyflie_driver/AddCrazyflie'; }
};
