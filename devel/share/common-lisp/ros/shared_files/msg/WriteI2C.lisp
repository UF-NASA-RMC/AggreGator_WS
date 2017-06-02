; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude WriteI2C.msg.html

(cl:defclass <WriteI2C> (roslisp-msg-protocol:ros-message)
  ((addr
    :reader addr
    :initarg :addr
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass WriteI2C (<WriteI2C>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteI2C>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteI2C)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<WriteI2C> is deprecated: use shared_files-msg:WriteI2C instead.")))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <WriteI2C>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:addr-val is deprecated.  Use shared_files-msg:addr instead.")
  (addr m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WriteI2C>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:data-val is deprecated.  Use shared_files-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteI2C>) ostream)
  "Serializes a message object of type '<WriteI2C>"
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteI2C>) istream)
  "Deserializes a message object of type '<WriteI2C>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteI2C>)))
  "Returns string type for a message object of type '<WriteI2C>"
  "shared_files/WriteI2C")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteI2C)))
  "Returns string type for a message object of type 'WriteI2C"
  "shared_files/WriteI2C")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteI2C>)))
  "Returns md5sum for a message object of type '<WriteI2C>"
  "0a303b66127bb26c7a153000ea65ec55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteI2C)))
  "Returns md5sum for a message object of type 'WriteI2C"
  "0a303b66127bb26c7a153000ea65ec55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteI2C>)))
  "Returns full string definition for message of type '<WriteI2C>"
  (cl:format cl:nil "int8 addr~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteI2C)))
  "Returns full string definition for message of type 'WriteI2C"
  (cl:format cl:nil "int8 addr~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteI2C>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteI2C>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteI2C
    (cl:cons ':addr (addr msg))
    (cl:cons ':data (data msg))
))
