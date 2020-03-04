// Auto-generated. Do not edit!

// (in-package sailrobot_custom_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Ais {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.repeat_indic = null;
      this.mmsi = null;
      this.status = null;
      this.rate_of_turn = null;
      this.speed_over_ground = null;
      this.position_accuracy = null;
      this.longitude = null;
      this.latitude = null;
      this.course_over_ground = null;
      this.heading = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('repeat_indic')) {
        this.repeat_indic = initObj.repeat_indic
      }
      else {
        this.repeat_indic = 0;
      }
      if (initObj.hasOwnProperty('mmsi')) {
        this.mmsi = initObj.mmsi
      }
      else {
        this.mmsi = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('rate_of_turn')) {
        this.rate_of_turn = initObj.rate_of_turn
      }
      else {
        this.rate_of_turn = 0;
      }
      if (initObj.hasOwnProperty('speed_over_ground')) {
        this.speed_over_ground = initObj.speed_over_ground
      }
      else {
        this.speed_over_ground = 0;
      }
      if (initObj.hasOwnProperty('position_accuracy')) {
        this.position_accuracy = initObj.position_accuracy
      }
      else {
        this.position_accuracy = '';
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('course_over_ground')) {
        this.course_over_ground = initObj.course_over_ground
      }
      else {
        this.course_over_ground = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ais
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int64(obj.type, buffer, bufferOffset);
    // Serialize message field [repeat_indic]
    bufferOffset = _serializer.int64(obj.repeat_indic, buffer, bufferOffset);
    // Serialize message field [mmsi]
    bufferOffset = _serializer.int64(obj.mmsi, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int64(obj.status, buffer, bufferOffset);
    // Serialize message field [rate_of_turn]
    bufferOffset = _serializer.int64(obj.rate_of_turn, buffer, bufferOffset);
    // Serialize message field [speed_over_ground]
    bufferOffset = _serializer.int64(obj.speed_over_ground, buffer, bufferOffset);
    // Serialize message field [position_accuracy]
    bufferOffset = _serializer.string(obj.position_accuracy, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [course_over_ground]
    bufferOffset = _serializer.int64(obj.course_over_ground, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.int64(obj.heading, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ais
    let len;
    let data = new Ais(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [repeat_indic]
    data.repeat_indic = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mmsi]
    data.mmsi = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rate_of_turn]
    data.rate_of_turn = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [speed_over_ground]
    data.speed_over_ground = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [position_accuracy]
    data.position_accuracy = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [course_over_ground]
    data.course_over_ground = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.position_accuracy.length;
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sailrobot_custom_msg/Ais';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4be53e55c36ee37d45ff17c6f5ad3256';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Header
    Header header
    
    #Message type
    int64 type
    
    #Repeat indicator
    int64 repeat_indic
    
    #MMSI
    int64 mmsi
    
    #Navigation status
    int64 status
    
    #Rate of turn
    int64 rate_of_turn
     
    #Speed over ground
    int64 speed_over_ground
    
    #Position accuracy
    string position_accuracy
    
    #Longitude
    float64 longitude
    
    #Latitude
    float64 latitude
    
    #Course over ground
    int64 course_over_ground
    
    #True heading
    int64 heading
    
    #Distance with our boat
    float64 distance
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ais(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.repeat_indic !== undefined) {
      resolved.repeat_indic = msg.repeat_indic;
    }
    else {
      resolved.repeat_indic = 0
    }

    if (msg.mmsi !== undefined) {
      resolved.mmsi = msg.mmsi;
    }
    else {
      resolved.mmsi = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.rate_of_turn !== undefined) {
      resolved.rate_of_turn = msg.rate_of_turn;
    }
    else {
      resolved.rate_of_turn = 0
    }

    if (msg.speed_over_ground !== undefined) {
      resolved.speed_over_ground = msg.speed_over_ground;
    }
    else {
      resolved.speed_over_ground = 0
    }

    if (msg.position_accuracy !== undefined) {
      resolved.position_accuracy = msg.position_accuracy;
    }
    else {
      resolved.position_accuracy = ''
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.course_over_ground !== undefined) {
      resolved.course_over_ground = msg.course_over_ground;
    }
    else {
      resolved.course_over_ground = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = Ais;
