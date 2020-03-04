;; Auto-generated. Do not edit!


(when (boundp 'sailrobot_custom_msg::Ais)
  (if (not (find-package "SAILROBOT_CUSTOM_MSG"))
    (make-package "SAILROBOT_CUSTOM_MSG"))
  (shadow 'Ais (find-package "SAILROBOT_CUSTOM_MSG")))
(unless (find-package "SAILROBOT_CUSTOM_MSG::AIS")
  (make-package "SAILROBOT_CUSTOM_MSG::AIS"))

(in-package "ROS")
;;//! \htmlinclude Ais.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sailrobot_custom_msg::Ais
  :super ros::object
  :slots (_header _type _repeat_indic _mmsi _status _rate_of_turn _speed_over_ground _position_accuracy _longitude _latitude _course_over_ground _heading _distance ))

(defmethod sailrobot_custom_msg::Ais
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:repeat_indic __repeat_indic) 0)
    ((:mmsi __mmsi) 0)
    ((:status __status) 0)
    ((:rate_of_turn __rate_of_turn) 0)
    ((:speed_over_ground __speed_over_ground) 0)
    ((:position_accuracy __position_accuracy) "")
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:course_over_ground __course_over_ground) 0)
    ((:heading __heading) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _repeat_indic (round __repeat_indic))
   (setq _mmsi (round __mmsi))
   (setq _status (round __status))
   (setq _rate_of_turn (round __rate_of_turn))
   (setq _speed_over_ground (round __speed_over_ground))
   (setq _position_accuracy (string __position_accuracy))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _course_over_ground (round __course_over_ground))
   (setq _heading (round __heading))
   (setq _distance (float __distance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:repeat_indic
   (&optional __repeat_indic)
   (if __repeat_indic (setq _repeat_indic __repeat_indic)) _repeat_indic)
  (:mmsi
   (&optional __mmsi)
   (if __mmsi (setq _mmsi __mmsi)) _mmsi)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:rate_of_turn
   (&optional __rate_of_turn)
   (if __rate_of_turn (setq _rate_of_turn __rate_of_turn)) _rate_of_turn)
  (:speed_over_ground
   (&optional __speed_over_ground)
   (if __speed_over_ground (setq _speed_over_ground __speed_over_ground)) _speed_over_ground)
  (:position_accuracy
   (&optional __position_accuracy)
   (if __position_accuracy (setq _position_accuracy __position_accuracy)) _position_accuracy)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:course_over_ground
   (&optional __course_over_ground)
   (if __course_over_ground (setq _course_over_ground __course_over_ground)) _course_over_ground)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _type
    8
    ;; int64 _repeat_indic
    8
    ;; int64 _mmsi
    8
    ;; int64 _status
    8
    ;; int64 _rate_of_turn
    8
    ;; int64 _speed_over_ground
    8
    ;; string _position_accuracy
    4 (length _position_accuracy)
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; int64 _course_over_ground
    8
    ;; int64 _heading
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _type
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _type (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _type) (= (length (_type . bv)) 2)) ;; bignum
              (write-long (ash (elt (_type . bv) 0) 0) s)
              (write-long (ash (elt (_type . bv) 1) -1) s))
             ((and (class _type) (= (length (_type . bv)) 1)) ;; big1
              (write-long (elt (_type . bv) 0) s)
              (write-long (if (>= _type 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _type s)(write-long (if (>= _type 0) 0 #xffffffff) s)))
     ;; int64 _repeat_indic
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _repeat_indic (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _repeat_indic) (= (length (_repeat_indic . bv)) 2)) ;; bignum
              (write-long (ash (elt (_repeat_indic . bv) 0) 0) s)
              (write-long (ash (elt (_repeat_indic . bv) 1) -1) s))
             ((and (class _repeat_indic) (= (length (_repeat_indic . bv)) 1)) ;; big1
              (write-long (elt (_repeat_indic . bv) 0) s)
              (write-long (if (>= _repeat_indic 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _repeat_indic s)(write-long (if (>= _repeat_indic 0) 0 #xffffffff) s)))
     ;; int64 _mmsi
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mmsi (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mmsi) (= (length (_mmsi . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mmsi . bv) 0) 0) s)
              (write-long (ash (elt (_mmsi . bv) 1) -1) s))
             ((and (class _mmsi) (= (length (_mmsi . bv)) 1)) ;; big1
              (write-long (elt (_mmsi . bv) 0) s)
              (write-long (if (>= _mmsi 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mmsi s)(write-long (if (>= _mmsi 0) 0 #xffffffff) s)))
     ;; int64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;; int64 _rate_of_turn
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rate_of_turn (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rate_of_turn) (= (length (_rate_of_turn . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rate_of_turn . bv) 0) 0) s)
              (write-long (ash (elt (_rate_of_turn . bv) 1) -1) s))
             ((and (class _rate_of_turn) (= (length (_rate_of_turn . bv)) 1)) ;; big1
              (write-long (elt (_rate_of_turn . bv) 0) s)
              (write-long (if (>= _rate_of_turn 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rate_of_turn s)(write-long (if (>= _rate_of_turn 0) 0 #xffffffff) s)))
     ;; int64 _speed_over_ground
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _speed_over_ground (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _speed_over_ground) (= (length (_speed_over_ground . bv)) 2)) ;; bignum
              (write-long (ash (elt (_speed_over_ground . bv) 0) 0) s)
              (write-long (ash (elt (_speed_over_ground . bv) 1) -1) s))
             ((and (class _speed_over_ground) (= (length (_speed_over_ground . bv)) 1)) ;; big1
              (write-long (elt (_speed_over_ground . bv) 0) s)
              (write-long (if (>= _speed_over_ground 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _speed_over_ground s)(write-long (if (>= _speed_over_ground 0) 0 #xffffffff) s)))
     ;; string _position_accuracy
       (write-long (length _position_accuracy) s) (princ _position_accuracy s)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _course_over_ground
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _course_over_ground (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _course_over_ground) (= (length (_course_over_ground . bv)) 2)) ;; bignum
              (write-long (ash (elt (_course_over_ground . bv) 0) 0) s)
              (write-long (ash (elt (_course_over_ground . bv) 1) -1) s))
             ((and (class _course_over_ground) (= (length (_course_over_ground . bv)) 1)) ;; big1
              (write-long (elt (_course_over_ground . bv) 0) s)
              (write-long (if (>= _course_over_ground 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _course_over_ground s)(write-long (if (>= _course_over_ground 0) 0 #xffffffff) s)))
     ;; int64 _heading
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _heading (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _heading) (= (length (_heading . bv)) 2)) ;; bignum
              (write-long (ash (elt (_heading . bv) 0) 0) s)
              (write-long (ash (elt (_heading . bv) 1) -1) s))
             ((and (class _heading) (= (length (_heading . bv)) 1)) ;; big1
              (write-long (elt (_heading . bv) 0) s)
              (write-long (if (>= _heading 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _heading s)(write-long (if (>= _heading 0) 0 #xffffffff) s)))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _type
#+(or :alpha :irix6 :x86_64)
      (setf _type (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _type (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _repeat_indic
#+(or :alpha :irix6 :x86_64)
      (setf _repeat_indic (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _repeat_indic (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mmsi
#+(or :alpha :irix6 :x86_64)
      (setf _mmsi (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mmsi (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _status
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rate_of_turn
#+(or :alpha :irix6 :x86_64)
      (setf _rate_of_turn (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rate_of_turn (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _speed_over_ground
#+(or :alpha :irix6 :x86_64)
      (setf _speed_over_ground (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _speed_over_ground (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _position_accuracy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_accuracy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _course_over_ground
#+(or :alpha :irix6 :x86_64)
      (setf _course_over_ground (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _course_over_ground (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _heading
#+(or :alpha :irix6 :x86_64)
      (setf _heading (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _heading (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sailrobot_custom_msg::Ais :md5sum-) "4be53e55c36ee37d45ff17c6f5ad3256")
(setf (get sailrobot_custom_msg::Ais :datatype-) "sailrobot_custom_msg/Ais")
(setf (get sailrobot_custom_msg::Ais :definition-)
      "#Header
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



(provide :sailrobot_custom_msg/Ais "4be53e55c36ee37d45ff17c6f5ad3256")


