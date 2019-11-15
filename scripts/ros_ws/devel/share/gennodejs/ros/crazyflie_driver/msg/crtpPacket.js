// Auto-generated. Do not edit!

// (in-package crazyflie_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class crtpPacket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.header = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(30).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type crtpPacket
    // Serialize message field [size]
    bufferOffset = _serializer.uint8(obj.size, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = _serializer.uint8(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 30) {
      throw new Error('Unable to serialize array field data - length must be 30')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, 30);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type crtpPacket
    let len;
    let data = new crtpPacket(null);
    // Deserialize message field [size]
    data.size = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, 30)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'crazyflie_driver/crtpPacket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '211163da2417112110f499fc3a0bedf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new crtpPacket(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.header !== undefined) {
      resolved.header = msg.header;
    }
    else {
      resolved.header = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(30).fill(0)
    }

    return resolved;
    }
};

module.exports = crtpPacket;
