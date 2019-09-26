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

class ShootAndTurbo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shoot = null;
      this.turbo = null;
    }
    else {
      if (initObj.hasOwnProperty('shoot')) {
        this.shoot = initObj.shoot
      }
      else {
        this.shoot = false;
      }
      if (initObj.hasOwnProperty('turbo')) {
        this.turbo = initObj.turbo
      }
      else {
        this.turbo = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShootAndTurbo
    // Serialize message field [shoot]
    bufferOffset = _serializer.bool(obj.shoot, buffer, bufferOffset);
    // Serialize message field [turbo]
    bufferOffset = _serializer.bool(obj.turbo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShootAndTurbo
    let len;
    let data = new ShootAndTurbo(null);
    // Deserialize message field [shoot]
    data.shoot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turbo]
    data.turbo = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'game_engine/ShootAndTurbo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6396303e74b55d0dd0145a9a5dfed363';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool shoot
    bool turbo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShootAndTurbo(null);
    if (msg.shoot !== undefined) {
      resolved.shoot = msg.shoot;
    }
    else {
      resolved.shoot = false
    }

    if (msg.turbo !== undefined) {
      resolved.turbo = msg.turbo;
    }
    else {
      resolved.turbo = false
    }

    return resolved;
    }
};

module.exports = ShootAndTurbo;
