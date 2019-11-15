// Auto-generated. Do not edit!

// (in-package crazyflie_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RemoveCrazyflieRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uri = null;
    }
    else {
      if (initObj.hasOwnProperty('uri')) {
        this.uri = initObj.uri
      }
      else {
        this.uri = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveCrazyflieRequest
    // Serialize message field [uri]
    bufferOffset = _serializer.string(obj.uri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveCrazyflieRequest
    let len;
    let data = new RemoveCrazyflieRequest(null);
    // Deserialize message field [uri]
    data.uri = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.uri.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazyflie_driver/RemoveCrazyflieRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '636fe5e07550f026d28388e95c38a9f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string uri
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveCrazyflieRequest(null);
    if (msg.uri !== undefined) {
      resolved.uri = msg.uri;
    }
    else {
      resolved.uri = ''
    }

    return resolved;
    }
};

class RemoveCrazyflieResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveCrazyflieResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveCrazyflieResponse
    let len;
    let data = new RemoveCrazyflieResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazyflie_driver/RemoveCrazyflieResponse';
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
    const resolved = new RemoveCrazyflieResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RemoveCrazyflieRequest,
  Response: RemoveCrazyflieResponse,
  md5sum() { return '636fe5e07550f026d28388e95c38a9f4'; },
  datatype() { return 'crazyflie_driver/RemoveCrazyflie'; }
};
