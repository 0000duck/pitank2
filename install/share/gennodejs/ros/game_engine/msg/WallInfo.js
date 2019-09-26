// Auto-generated. Do not edit!

// (in-package game_engine.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WallInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.cluster = null;
      this.x1 = null;
      this.x2 = null;
      this.y1 = null;
      this.y2 = null;
      this.xc = null;
      this.yc = null;
      this.life = null;
      this.vertical = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('cluster')) {
        this.cluster = initObj.cluster
      }
      else {
        this.cluster = 0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0;
      }
      if (initObj.hasOwnProperty('xc')) {
        this.xc = initObj.xc
      }
      else {
        this.xc = 0.0;
      }
      if (initObj.hasOwnProperty('yc')) {
        this.yc = initObj.yc
      }
      else {
        this.yc = 0.0;
      }
      if (initObj.hasOwnProperty('life')) {
        this.life = initObj.life
      }
      else {
        this.life = 0;
      }
      if (initObj.hasOwnProperty('vertical')) {
        this.vertical = initObj.vertical
      }
      else {
        this.vertical = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WallInfo
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [cluster]
    bufferOffset = _serializer.int8(obj.cluster, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.int16(obj.x1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.int16(obj.x2, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.int16(obj.y1, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.int16(obj.y2, buffer, bufferOffset);
    // Serialize message field [xc]
    bufferOffset = _serializer.float64(obj.xc, buffer, bufferOffset);
    // Serialize message field [yc]
    bufferOffset = _serializer.float64(obj.yc, buffer, bufferOffset);
    // Serialize message field [life]
    bufferOffset = _serializer.int8(obj.life, buffer, bufferOffset);
    // Serialize message field [vertical]
    bufferOffset = _serializer.bool(obj.vertical, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WallInfo
    let len;
    let data = new WallInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cluster]
    data.cluster = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [xc]
    data.xc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yc]
    data.yc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [life]
    data.life = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [vertical]
    data.vertical = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'game_engine/WallInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '482f13cf5512672ba58ca13deaa6419c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 id
    int8 cluster
    int16 x1
    int16 x2
    int16 y1
    int16 y2
    float64 xc
    float64 yc
    int8 life
    bool vertical
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WallInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.cluster !== undefined) {
      resolved.cluster = msg.cluster;
    }
    else {
      resolved.cluster = 0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0
    }

    if (msg.xc !== undefined) {
      resolved.xc = msg.xc;
    }
    else {
      resolved.xc = 0.0
    }

    if (msg.yc !== undefined) {
      resolved.yc = msg.yc;
    }
    else {
      resolved.yc = 0.0
    }

    if (msg.life !== undefined) {
      resolved.life = msg.life;
    }
    else {
      resolved.life = 0
    }

    if (msg.vertical !== undefined) {
      resolved.vertical = msg.vertical;
    }
    else {
      resolved.vertical = false
    }

    return resolved;
    }
};

module.exports = WallInfo;
