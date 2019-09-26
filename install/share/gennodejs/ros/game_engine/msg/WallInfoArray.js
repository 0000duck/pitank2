// Auto-generated. Do not edit!

// (in-package game_engine.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WallInfo = require('./WallInfo.js');

//-----------------------------------------------------------

class WallInfoArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wall = null;
    }
    else {
      if (initObj.hasOwnProperty('wall')) {
        this.wall = initObj.wall
      }
      else {
        this.wall = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WallInfoArray
    // Serialize message field [wall]
    // Serialize the length for message field [wall]
    bufferOffset = _serializer.uint32(obj.wall.length, buffer, bufferOffset);
    obj.wall.forEach((val) => {
      bufferOffset = WallInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WallInfoArray
    let len;
    let data = new WallInfoArray(null);
    // Deserialize message field [wall]
    // Deserialize array length for message field [wall]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wall = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wall[i] = WallInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.wall.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'game_engine/WallInfoArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00bbbcfc52895902500308e3cbae4262';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WallInfo[] wall
    
    ================================================================================
    MSG: game_engine/WallInfo
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
    const resolved = new WallInfoArray(null);
    if (msg.wall !== undefined) {
      resolved.wall = new Array(msg.wall.length);
      for (let i = 0; i < resolved.wall.length; ++i) {
        resolved.wall[i] = WallInfo.Resolve(msg.wall[i]);
      }
    }
    else {
      resolved.wall = []
    }

    return resolved;
    }
};

module.exports = WallInfoArray;
