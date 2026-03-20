// Auto-generated. Do not edit!

// (in-package copernicus_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BMS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SOC = null;
      this.Voltage = null;
      this.Current = null;
    }
    else {
      if (initObj.hasOwnProperty('SOC')) {
        this.SOC = initObj.SOC
      }
      else {
        this.SOC = 0;
      }
      if (initObj.hasOwnProperty('Voltage')) {
        this.Voltage = initObj.Voltage
      }
      else {
        this.Voltage = 0;
      }
      if (initObj.hasOwnProperty('Current')) {
        this.Current = initObj.Current
      }
      else {
        this.Current = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BMS
    // Serialize message field [SOC]
    bufferOffset = _serializer.uint16(obj.SOC, buffer, bufferOffset);
    // Serialize message field [Voltage]
    bufferOffset = _serializer.uint16(obj.Voltage, buffer, bufferOffset);
    // Serialize message field [Current]
    bufferOffset = _serializer.int16(obj.Current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BMS
    let len;
    let data = new BMS(null);
    // Deserialize message field [SOC]
    data.SOC = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Voltage]
    data.Voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Current]
    data.Current = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'copernicus_msgs/BMS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e56275de8110c71d2252135812351394';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SOC
    uint16 Voltage
    int16 Current
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BMS(null);
    if (msg.SOC !== undefined) {
      resolved.SOC = msg.SOC;
    }
    else {
      resolved.SOC = 0
    }

    if (msg.Voltage !== undefined) {
      resolved.Voltage = msg.Voltage;
    }
    else {
      resolved.Voltage = 0
    }

    if (msg.Current !== undefined) {
      resolved.Current = msg.Current;
    }
    else {
      resolved.Current = 0
    }

    return resolved;
    }
};

module.exports = BMS;
