; Auto-generated. Do not edit!


(cl:in-package sailrobot_custom_msg-msg)


;//! \htmlinclude AisMultiArray.msg.html

(cl:defclass <AisMultiArray> (roslisp-msg-protocol:ros-message)
  ((layout
    :reader layout
    :initarg :layout
    :type std_msgs-msg:MultiArrayLayout
    :initform (cl:make-instance 'std_msgs-msg:MultiArrayLayout))
   (data
    :reader data
    :initarg :data
    :type (cl:vector sailrobot_custom_msg-msg:Ais)
   :initform (cl:make-array 0 :element-type 'sailrobot_custom_msg-msg:Ais :initial-element (cl:make-instance 'sailrobot_custom_msg-msg:Ais))))
)

(cl:defclass AisMultiArray (<AisMultiArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AisMultiArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AisMultiArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sailrobot_custom_msg-msg:<AisMultiArray> is deprecated: use sailrobot_custom_msg-msg:AisMultiArray instead.")))

(cl:ensure-generic-function 'layout-val :lambda-list '(m))
(cl:defmethod layout-val ((m <AisMultiArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sailrobot_custom_msg-msg:layout-val is deprecated.  Use sailrobot_custom_msg-msg:layout instead.")
  (layout m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <AisMultiArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sailrobot_custom_msg-msg:data-val is deprecated.  Use sailrobot_custom_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AisMultiArray>) ostream)
  "Serializes a message object of type '<AisMultiArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'layout) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AisMultiArray>) istream)
  "Deserializes a message object of type '<AisMultiArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'layout) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sailrobot_custom_msg-msg:Ais))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AisMultiArray>)))
  "Returns string type for a message object of type '<AisMultiArray>"
  "sailrobot_custom_msg/AisMultiArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AisMultiArray)))
  "Returns string type for a message object of type 'AisMultiArray"
  "sailrobot_custom_msg/AisMultiArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AisMultiArray>)))
  "Returns md5sum for a message object of type '<AisMultiArray>"
  "9b970ad182fe4ed91c6d7ee1db87e99b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AisMultiArray)))
  "Returns md5sum for a message object of type 'AisMultiArray"
  "9b970ad182fe4ed91c6d7ee1db87e99b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AisMultiArray>)))
  "Returns full string definition for message of type '<AisMultiArray>"
  (cl:format cl:nil "#Message of type AIS Multy Array~%~%std_msgs/MultiArrayLayout layout #Specification of data layout~%Ais[] data		#Array of data~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: sailrobot_custom_msg/Ais~%#Header~%Header header~%~%#Message type~%int64 type~%~%#Repeat indicator~%int64 repeat_indic~%~%#MMSI~%int64 mmsi~%~%#Navigation status~%int64 status~%~%#Rate of turn~%int64 rate_of_turn~% ~%#Speed over ground~%int64 speed_over_ground~%~%#Position accuracy~%string position_accuracy~%~%#Longitude~%float64 longitude~%~%#Latitude~%float64 latitude~%~%#Course over ground~%int64 course_over_ground~%~%#True heading~%int64 heading~%~%#Distance with our boat~%float64 distance~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AisMultiArray)))
  "Returns full string definition for message of type 'AisMultiArray"
  (cl:format cl:nil "#Message of type AIS Multy Array~%~%std_msgs/MultiArrayLayout layout #Specification of data layout~%Ais[] data		#Array of data~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: sailrobot_custom_msg/Ais~%#Header~%Header header~%~%#Message type~%int64 type~%~%#Repeat indicator~%int64 repeat_indic~%~%#MMSI~%int64 mmsi~%~%#Navigation status~%int64 status~%~%#Rate of turn~%int64 rate_of_turn~% ~%#Speed over ground~%int64 speed_over_ground~%~%#Position accuracy~%string position_accuracy~%~%#Longitude~%float64 longitude~%~%#Latitude~%float64 latitude~%~%#Course over ground~%int64 course_over_ground~%~%#True heading~%int64 heading~%~%#Distance with our boat~%float64 distance~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AisMultiArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'layout))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AisMultiArray>))
  "Converts a ROS message object to a list"
  (cl:list 'AisMultiArray
    (cl:cons ':layout (layout msg))
    (cl:cons ':data (data msg))
))
