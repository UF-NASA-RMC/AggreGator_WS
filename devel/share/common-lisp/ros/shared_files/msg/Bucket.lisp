; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude Bucket.msg.html

(cl:defclass <Bucket> (roslisp-msg-protocol:ros-message)
  ((dump
    :reader dump
    :initarg :dump
    :type cl:float
    :initform 0.0))
)

(cl:defclass Bucket (<Bucket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bucket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bucket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<Bucket> is deprecated: use shared_files-msg:Bucket instead.")))

(cl:ensure-generic-function 'dump-val :lambda-list '(m))
(cl:defmethod dump-val ((m <Bucket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:dump-val is deprecated.  Use shared_files-msg:dump instead.")
  (dump m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bucket>) ostream)
  "Serializes a message object of type '<Bucket>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dump))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bucket>) istream)
  "Deserializes a message object of type '<Bucket>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dump) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bucket>)))
  "Returns string type for a message object of type '<Bucket>"
  "shared_files/Bucket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bucket)))
  "Returns string type for a message object of type 'Bucket"
  "shared_files/Bucket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bucket>)))
  "Returns md5sum for a message object of type '<Bucket>"
  "d2f320488a93a2b8fbcde81ea62701ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bucket)))
  "Returns md5sum for a message object of type 'Bucket"
  "d2f320488a93a2b8fbcde81ea62701ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bucket>)))
  "Returns full string definition for message of type '<Bucket>"
  (cl:format cl:nil "float32 dump~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bucket)))
  "Returns full string definition for message of type 'Bucket"
  (cl:format cl:nil "float32 dump~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bucket>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bucket>))
  "Converts a ROS message object to a list"
  (cl:list 'Bucket
    (cl:cons ':dump (dump msg))
))
