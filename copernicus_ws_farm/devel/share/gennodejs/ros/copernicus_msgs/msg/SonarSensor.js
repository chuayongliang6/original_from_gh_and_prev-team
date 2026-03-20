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

class SonarSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SONAR = null;
    }
    else {
      if (initObj.hasOwnProperty('SONAR')) {
        this.SONAR = initObj.SONAR
      }
      else {
        this.SONAR = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarSensor
    // Check that the constant length array field [SONAR] has the right length
    if (obj.SONAR.length !== 6) {
      throw new Error('Unable to serialize array field SONAR - length must be 6')
    }
    // Serialize message field [SONAR]
    bufferOffset = _arraySerializer.uint16(obj.SONAR, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarSensor
    let len;
    let data = new SonarSensor(null);
    // Deserialize message field [SONAR]
    data.SONAR = _arrayDeserializer.uint16(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'copernicus_msgs/SonarSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d763eec883429d5f3e9ebc343ccfa65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16[6]    SONAR
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarSensor(null);
    if (msg.SONAR !== undefined) {
      resolved.SONAR = msg.SONAR;
    }
    else {
      resolved.SONAR = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = SonarSensor;
