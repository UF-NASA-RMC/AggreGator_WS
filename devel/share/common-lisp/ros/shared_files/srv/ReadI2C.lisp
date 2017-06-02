; Auto-generated. Do not edit!


(cl:in-package shared_files-srv)


;//! \htmlinclude ReadI2C-request.msg.html

(cl:defclass <ReadI2C-request> (roslisp-msg-protocol:ros-message)
  ((addr
    :reader addr
    :initarg :addr
    :type cl:fixnum
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadI2C-request (<ReadI2C-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadI2C-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadI2C-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-srv:<ReadI2C-request> is deprecated: use shared_files-srv:ReadI2C-request instead.")))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <ReadI2C-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:addr-val is deprecated.  Use shared_files-srv:addr instead.")
  (addr m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <ReadI2C-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:size-val is deprecated.  Use shared_files-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadI2C-request>) ostream)
  "Serializes a message object of type '<ReadI2C-request>"
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadI2C-request>) istream)
  "Deserializes a message object of type '<ReadI2C-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadI2C-request>)))
  "Returns string type for a service object of type '<ReadI2C-request>"
  "shared_files/ReadI2CRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadI2C-request)))
  "Returns string type for a service object of type 'ReadI2C-request"
  "shared_files/ReadI2CRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadI2C-request>)))
  "Returns md5sum for a message object of type '<ReadI2C-request>"
  "22e5f5eaf6ee0bc3b5bf519623591445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadI2C-request)))
  "Returns md5sum for a message object of type 'ReadI2C-request"
  "22e5f5eaf6ee0bc3b5bf519623591445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadI2C-request>)))
  "Returns full string definition for message of type '<ReadI2C-request>"
  (cl:format cl:nil "int8 addr~%int8 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadI2C-request)))
  "Returns full string definition for message of type 'ReadI2C-request"
  (cl:format cl:nil "int8 addr~%int8 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadI2C-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadI2C-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadI2C-request
    (cl:cons ':addr (addr msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude ReadI2C-response.msg.html

(cl:defclass <ReadI2C-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ReadI2C-response (<ReadI2C-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadI2C-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadI2C-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-srv:<ReadI2C-response> is deprecated: use shared_files-srv:ReadI2C-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ReadI2C-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:data-val is deprecated.  Use shared_files-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadI2C-response>) ostream)
  "Serializes a message object of type '<ReadI2C-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadI2C-response>) istream)
  "Deserializes a message object of type '<ReadI2C-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadI2C-response>)))
  "Returns string type for a service object of type '<ReadI2C-response>"
  "shared_files/ReadI2CResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadI2C-response)))
  "Returns string type for a service object of type 'ReadI2C-response"
  "shared_files/ReadI2CResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadI2C-response>)))
  "Returns md5sum for a message object of type '<ReadI2C-response>"
  "22e5f5eaf6ee0bc3b5bf519623591445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadI2C-response)))
  "Returns md5sum for a message object of type 'ReadI2C-response"
  "22e5f5eaf6ee0bc3b5bf519623591445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadI2C-response>)))
  "Returns full string definition for message of type '<ReadI2C-response>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadI2C-response)))
  "Returns full string definition for message of type 'ReadI2C-response"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadI2C-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadI2C-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadI2C-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadI2C)))
  'ReadI2C-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadI2C)))
  'ReadI2C-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadI2C)))
  "Returns string type for a service object of type '<ReadI2C>"
  "shared_files/ReadI2C")