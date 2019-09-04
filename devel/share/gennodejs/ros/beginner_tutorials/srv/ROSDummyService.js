// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ROSDummyServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strIn = null;
    }
    else {
      if (initObj.hasOwnProperty('strIn')) {
        this.strIn = initObj.strIn
      }
      else {
        this.strIn = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROSDummyServiceRequest
    // Serialize message field [strIn]
    bufferOffset = _serializer.string(obj.strIn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROSDummyServiceRequest
    let len;
    let data = new ROSDummyServiceRequest(null);
    // Deserialize message field [strIn]
    data.strIn = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.strIn.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/ROSDummyServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a164d78cb7d5317e82d771dfd432287';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string strIn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROSDummyServiceRequest(null);
    if (msg.strIn !== undefined) {
      resolved.strIn = msg.strIn;
    }
    else {
      resolved.strIn = ''
    }

    return resolved;
    }
};

class ROSDummyServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strOut = null;
    }
    else {
      if (initObj.hasOwnProperty('strOut')) {
        this.strOut = initObj.strOut
      }
      else {
        this.strOut = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROSDummyServiceResponse
    // Serialize message field [strOut]
    bufferOffset = _serializer.string(obj.strOut, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROSDummyServiceResponse
    let len;
    let data = new ROSDummyServiceResponse(null);
    // Deserialize message field [strOut]
    data.strOut = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.strOut.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/ROSDummyServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c74905a3ea523b8e617d78fc75224eb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string strOut
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROSDummyServiceResponse(null);
    if (msg.strOut !== undefined) {
      resolved.strOut = msg.strOut;
    }
    else {
      resolved.strOut = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ROSDummyServiceRequest,
  Response: ROSDummyServiceResponse,
  md5sum() { return '750b33477ca2c16afaec99713dc8cb06'; },
  datatype() { return 'beginner_tutorials/ROSDummyService'; }
};
