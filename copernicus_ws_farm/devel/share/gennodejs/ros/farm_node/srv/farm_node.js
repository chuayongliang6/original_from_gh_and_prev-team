// Auto-generated. Do not edit!

// (in-package farm_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class farm_nodeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip = null;
    }
    else {
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type farm_nodeRequest
    // Serialize message field [ip]
    bufferOffset = _serializer.bool(obj.ip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type farm_nodeRequest
    let len;
    let data = new farm_nodeRequest(null);
    // Deserialize message field [ip]
    data.ip = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'farm_node/farm_nodeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32948355ebd3194c1579c20a89cdd074';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new farm_nodeRequest(null);
    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = false
    }

    return resolved;
    }
};

class farm_nodeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.op = null;
    }
    else {
      if (initObj.hasOwnProperty('op')) {
        this.op = initObj.op
      }
      else {
        this.op = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type farm_nodeResponse
    // Serialize message field [op]
    bufferOffset = _serializer.bool(obj.op, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type farm_nodeResponse
    let len;
    let data = new farm_nodeResponse(null);
    // Deserialize message field [op]
    data.op = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'farm_node/farm_nodeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9d9565f906a018a008bc4ee123f9661';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool op
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new farm_nodeResponse(null);
    if (msg.op !== undefined) {
      resolved.op = msg.op;
    }
    else {
      resolved.op = false
    }

    return resolved;
    }
};

module.exports = {
  Request: farm_nodeRequest,
  Response: farm_nodeResponse,
  md5sum() { return '84e7488d3da383232f3536b550a9c06e'; },
  datatype() { return 'farm_node/farm_node'; }
};
