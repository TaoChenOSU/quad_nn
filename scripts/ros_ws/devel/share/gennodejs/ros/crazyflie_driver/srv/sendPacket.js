// Auto-generated. Do not edit!

// (in-package crazyflie_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let crtpPacket = require('../msg/crtpPacket.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class sendPacketRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.packet = null;
    }
    else {
      if (initObj.hasOwnProperty('packet')) {
        this.packet = initObj.packet
      }
      else {
        this.packet = new crtpPacket();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sendPacketRequest
    // Serialize message field [packet]
    bufferOffset = crtpPacket.serialize(obj.packet, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sendPacketRequest
    let len;
    let data = new sendPacketRequest(null);
    // Deserialize message field [packet]
    data.packet = crtpPacket.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazyflie_driver/sendPacketRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3f946ce194c915d34d0f5ddedef0de7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    crazyflie_driver/crtpPacket packet
    
    ================================================================================
    MSG: crazyflie_driver/crtpPacket
    uint8 size
    uint8 header
    uint8[30] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sendPacketRequest(null);
    if (msg.packet !== undefined) {
      resolved.packet = crtpPacket.Resolve(msg.packet)
    }
    else {
      resolved.packet = new crtpPacket()
    }

    return resolved;
    }
};

class sendPacketResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sendPacketResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sendPacketResponse
    let len;
    let data = new sendPacketResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazyflie_driver/sendPacketResponse';
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
    const resolved = new sendPacketResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: sendPacketRequest,
  Response: sendPacketResponse,
  md5sum() { return 'e3f946ce194c915d34d0f5ddedef0de7'; },
  datatype() { return 'crazyflie_driver/sendPacket'; }
};
