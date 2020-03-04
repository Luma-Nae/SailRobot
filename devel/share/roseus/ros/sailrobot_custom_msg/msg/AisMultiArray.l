;; Auto-generated. Do not edit!


(when (boundp 'sailrobot_custom_msg::AisMultiArray)
  (if (not (find-package "SAILROBOT_CUSTOM_MSG"))
    (make-package "SAILROBOT_CUSTOM_MSG"))
  (shadow 'AisMultiArray (find-package "SAILROBOT_CUSTOM_MSG")))
(unless (find-package "SAILROBOT_CUSTOM_MSG::AISMULTIARRAY")
  (make-package "SAILROBOT_CUSTOM_MSG::AISMULTIARRAY"))

(in-package "ROS")
;;//! \htmlinclude AisMultiArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sailrobot_custom_msg::AisMultiArray
  :super ros::object
  :slots (_layout _data ))

(defmethod sailrobot_custom_msg::AisMultiArray
  (:init
   (&key
    ((:layout __layout) (instance std_msgs::MultiArrayLayout :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance sailrobot_custom_msg::Ais :init) r)) r))
    )
   (send-super :init)
   (setq _layout __layout)
   (setq _data __data)
   self)
  (:layout
   (&rest __layout)
   (if (keywordp (car __layout))
       (send* _layout __layout)
     (progn
       (if __layout (setq _layout (car __layout)))
       _layout)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/MultiArrayLayout _layout
    (send _layout :serialization-length)
    ;; sailrobot_custom_msg/Ais[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/MultiArrayLayout _layout
       (send _layout :serialize s)
     ;; sailrobot_custom_msg/Ais[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/MultiArrayLayout _layout
     (send _layout :deserialize buf ptr-) (incf ptr- (send _layout :serialization-length))
   ;; sailrobot_custom_msg/Ais[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance sailrobot_custom_msg::Ais :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sailrobot_custom_msg::AisMultiArray :md5sum-) "9b970ad182fe4ed91c6d7ee1db87e99b")
(setf (get sailrobot_custom_msg::AisMultiArray :datatype-) "sailrobot_custom_msg/AisMultiArray")
(setf (get sailrobot_custom_msg::AisMultiArray :definition-)
      "#Message of type AIS Multy Array

std_msgs/MultiArrayLayout layout #Specification of data layout
Ais[] data		#Array of data

================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: sailrobot_custom_msg/Ais
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

")



(provide :sailrobot_custom_msg/AisMultiArray "9b970ad182fe4ed91c6d7ee1db87e99b")


