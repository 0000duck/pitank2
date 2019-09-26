; Auto-generated. Do not edit!


(cl:in-package game_engine-msg)


;//! \htmlinclude WallInfoArray.msg.html

(cl:defclass <WallInfoArray> (roslisp-msg-protocol:ros-message)
  ((wall
    :reader wall
    :initarg :wall
    :type (cl:vector game_engine-msg:WallInfo)
   :initform (cl:make-array 0 :element-type 'game_engine-msg:WallInfo :initial-element (cl:make-instance 'game_engine-msg:WallInfo))))
)

(cl:defclass WallInfoArray (<WallInfoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WallInfoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WallInfoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name game_engine-msg:<WallInfoArray> is deprecated: use game_engine-msg:WallInfoArray instead.")))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <WallInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:wall-val is deprecated.  Use game_engine-msg:wall instead.")
  (wall m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WallInfoArray>) ostream)
  "Serializes a message object of type '<WallInfoArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wall))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wall))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WallInfoArray>) istream)
  "Deserializes a message object of type '<WallInfoArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wall) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wall)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'game_engine-msg:WallInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WallInfoArray>)))
  "Returns string type for a message object of type '<WallInfoArray>"
  "game_engine/WallInfoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WallInfoArray)))
  "Returns string type for a message object of type 'WallInfoArray"
  "game_engine/WallInfoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WallInfoArray>)))
  "Returns md5sum for a message object of type '<WallInfoArray>"
  "00bbbcfc52895902500308e3cbae4262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WallInfoArray)))
  "Returns md5sum for a message object of type 'WallInfoArray"
  "00bbbcfc52895902500308e3cbae4262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WallInfoArray>)))
  "Returns full string definition for message of type '<WallInfoArray>"
  (cl:format cl:nil "WallInfo[] wall~%~%================================================================================~%MSG: game_engine/WallInfo~%int8 id~%int8 cluster~%int16 x1~%int16 x2~%int16 y1~%int16 y2~%float64 xc~%float64 yc~%int8 life~%bool vertical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WallInfoArray)))
  "Returns full string definition for message of type 'WallInfoArray"
  (cl:format cl:nil "WallInfo[] wall~%~%================================================================================~%MSG: game_engine/WallInfo~%int8 id~%int8 cluster~%int16 x1~%int16 x2~%int16 y1~%int16 y2~%float64 xc~%float64 yc~%int8 life~%bool vertical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WallInfoArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wall) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WallInfoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WallInfoArray
    (cl:cons ':wall (wall msg))
))
