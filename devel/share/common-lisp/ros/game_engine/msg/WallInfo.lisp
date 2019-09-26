; Auto-generated. Do not edit!


(cl:in-package game_engine-msg)


;//! \htmlinclude WallInfo.msg.html

(cl:defclass <WallInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (cluster
    :reader cluster
    :initarg :cluster
    :type cl:fixnum
    :initform 0)
   (x1
    :reader x1
    :initarg :x1
    :type cl:fixnum
    :initform 0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:fixnum
    :initform 0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:fixnum
    :initform 0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:fixnum
    :initform 0)
   (xc
    :reader xc
    :initarg :xc
    :type cl:float
    :initform 0.0)
   (yc
    :reader yc
    :initarg :yc
    :type cl:float
    :initform 0.0)
   (life
    :reader life
    :initarg :life
    :type cl:fixnum
    :initform 0)
   (vertical
    :reader vertical
    :initarg :vertical
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WallInfo (<WallInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WallInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WallInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name game_engine-msg:<WallInfo> is deprecated: use game_engine-msg:WallInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:id-val is deprecated.  Use game_engine-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'cluster-val :lambda-list '(m))
(cl:defmethod cluster-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:cluster-val is deprecated.  Use game_engine-msg:cluster instead.")
  (cluster m))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:x1-val is deprecated.  Use game_engine-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:x2-val is deprecated.  Use game_engine-msg:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:y1-val is deprecated.  Use game_engine-msg:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:y2-val is deprecated.  Use game_engine-msg:y2 instead.")
  (y2 m))

(cl:ensure-generic-function 'xc-val :lambda-list '(m))
(cl:defmethod xc-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:xc-val is deprecated.  Use game_engine-msg:xc instead.")
  (xc m))

(cl:ensure-generic-function 'yc-val :lambda-list '(m))
(cl:defmethod yc-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:yc-val is deprecated.  Use game_engine-msg:yc instead.")
  (yc m))

(cl:ensure-generic-function 'life-val :lambda-list '(m))
(cl:defmethod life-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:life-val is deprecated.  Use game_engine-msg:life instead.")
  (life m))

(cl:ensure-generic-function 'vertical-val :lambda-list '(m))
(cl:defmethod vertical-val ((m <WallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:vertical-val is deprecated.  Use game_engine-msg:vertical instead.")
  (vertical m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WallInfo>) ostream)
  "Serializes a message object of type '<WallInfo>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cluster)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'life)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vertical) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WallInfo>) istream)
  "Deserializes a message object of type '<WallInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cluster) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'life) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'vertical) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WallInfo>)))
  "Returns string type for a message object of type '<WallInfo>"
  "game_engine/WallInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WallInfo)))
  "Returns string type for a message object of type 'WallInfo"
  "game_engine/WallInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WallInfo>)))
  "Returns md5sum for a message object of type '<WallInfo>"
  "482f13cf5512672ba58ca13deaa6419c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WallInfo)))
  "Returns md5sum for a message object of type 'WallInfo"
  "482f13cf5512672ba58ca13deaa6419c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WallInfo>)))
  "Returns full string definition for message of type '<WallInfo>"
  (cl:format cl:nil "int8 id~%int8 cluster~%int16 x1~%int16 x2~%int16 y1~%int16 y2~%float64 xc~%float64 yc~%int8 life~%bool vertical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WallInfo)))
  "Returns full string definition for message of type 'WallInfo"
  (cl:format cl:nil "int8 id~%int8 cluster~%int16 x1~%int16 x2~%int16 y1~%int16 y2~%float64 xc~%float64 yc~%int8 life~%bool vertical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WallInfo>))
  (cl:+ 0
     1
     1
     2
     2
     2
     2
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WallInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'WallInfo
    (cl:cons ':id (id msg))
    (cl:cons ':cluster (cluster msg))
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':y2 (y2 msg))
    (cl:cons ':xc (xc msg))
    (cl:cons ':yc (yc msg))
    (cl:cons ':life (life msg))
    (cl:cons ':vertical (vertical msg))
))
