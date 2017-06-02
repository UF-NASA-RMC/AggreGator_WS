; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude Ladder.msg.html

(cl:defclass <Ladder> (roslisp-msg-protocol:ros-message)
  ((lift
    :reader lift
    :initarg :lift
    :type cl:float
    :initform 0.0)
   (conv
    :reader conv
    :initarg :conv
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ladder (<Ladder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ladder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ladder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<Ladder> is deprecated: use shared_files-msg:Ladder instead.")))

(cl:ensure-generic-function 'lift-val :lambda-list '(m))
(cl:defmethod lift-val ((m <Ladder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:lift-val is deprecated.  Use shared_files-msg:lift instead.")
  (lift m))

(cl:ensure-generic-function 'conv-val :lambda-list '(m))
(cl:defmethod conv-val ((m <Ladder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:conv-val is deprecated.  Use shared_files-msg:conv instead.")
  (conv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ladder>) ostream)
  "Serializes a message object of type '<Ladder>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'conv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ladder>) istream)
  "Deserializes a message object of type '<Ladder>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'conv) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ladder>)))
  "Returns string type for a message object of type '<Ladder>"
  "shared_files/Ladder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ladder)))
  "Returns string type for a message object of type 'Ladder"
  "shared_files/Ladder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ladder>)))
  "Returns md5sum for a message object of type '<Ladder>"
  "c09a06a0ebf2dff256050dca87365af1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ladder)))
  "Returns md5sum for a message object of type 'Ladder"
  "c09a06a0ebf2dff256050dca87365af1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ladder>)))
  "Returns full string definition for message of type '<Ladder>"
  (cl:format cl:nil "float32 lift~%float32 conv~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ladder)))
  "Returns full string definition for message of type 'Ladder"
  (cl:format cl:nil "float32 lift~%float32 conv~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ladder>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ladder>))
  "Converts a ROS message object to a list"
  (cl:list 'Ladder
    (cl:cons ':lift (lift msg))
    (cl:cons ':conv (conv msg))
))
