; Auto-generated. Do not edit!


(cl:in-package game_engine-msg)


;//! \htmlinclude ShootAndTurbo.msg.html

(cl:defclass <ShootAndTurbo> (roslisp-msg-protocol:ros-message)
  ((shoot
    :reader shoot
    :initarg :shoot
    :type cl:boolean
    :initform cl:nil)
   (turbo
    :reader turbo
    :initarg :turbo
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ShootAndTurbo (<ShootAndTurbo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootAndTurbo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootAndTurbo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name game_engine-msg:<ShootAndTurbo> is deprecated: use game_engine-msg:ShootAndTurbo instead.")))

(cl:ensure-generic-function 'shoot-val :lambda-list '(m))
(cl:defmethod shoot-val ((m <ShootAndTurbo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:shoot-val is deprecated.  Use game_engine-msg:shoot instead.")
  (shoot m))

(cl:ensure-generic-function 'turbo-val :lambda-list '(m))
(cl:defmethod turbo-val ((m <ShootAndTurbo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader game_engine-msg:turbo-val is deprecated.  Use game_engine-msg:turbo instead.")
  (turbo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootAndTurbo>) ostream)
  "Serializes a message object of type '<ShootAndTurbo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shoot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turbo) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootAndTurbo>) istream)
  "Deserializes a message object of type '<ShootAndTurbo>"
    (cl:setf (cl:slot-value msg 'shoot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'turbo) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootAndTurbo>)))
  "Returns string type for a message object of type '<ShootAndTurbo>"
  "game_engine/ShootAndTurbo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootAndTurbo)))
  "Returns string type for a message object of type 'ShootAndTurbo"
  "game_engine/ShootAndTurbo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootAndTurbo>)))
  "Returns md5sum for a message object of type '<ShootAndTurbo>"
  "6396303e74b55d0dd0145a9a5dfed363")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootAndTurbo)))
  "Returns md5sum for a message object of type 'ShootAndTurbo"
  "6396303e74b55d0dd0145a9a5dfed363")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootAndTurbo>)))
  "Returns full string definition for message of type '<ShootAndTurbo>"
  (cl:format cl:nil "bool shoot~%bool turbo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootAndTurbo)))
  "Returns full string definition for message of type 'ShootAndTurbo"
  (cl:format cl:nil "bool shoot~%bool turbo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootAndTurbo>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootAndTurbo>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootAndTurbo
    (cl:cons ':shoot (shoot msg))
    (cl:cons ':turbo (turbo msg))
))
