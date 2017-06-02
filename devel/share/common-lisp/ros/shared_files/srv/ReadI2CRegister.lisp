; Auto-generated. Do not edit!


(cl:in-package shared_files-srv)


;//! \htmlinclude ReadI2CRegister-request.msg.html

(cl:defclass <ReadI2CRegister-request> (roslisp-msg-protocol:ros-message)
  ((addr
    :reader addr
    :initarg :addr
    :type cl:fixnum
    :initform 0)
   (reg
    :reader reg
    :initarg :reg
    :type cl:fixnum
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadI2CRegister-request (<ReadI2CRegister-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadI2CRegister-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadI2CRegister-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-srv:<ReadI2CRegister-request> is deprecated: use shared_files-srv:ReadI2CRegister-request instead.")))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <ReadI2CRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:addr-val is deprecated.  Use shared_files-srv:addr instead.")
  (addr m))

(cl:ensure-generic-function 'reg-val :lambda-list '(m))
(cl:defmethod reg-val ((m <ReadI2CRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:reg-val is deprecated.  Use shared_files-srv:reg instead.")
  (reg m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <ReadI2CRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:size-val is deprecated.  Use shared_files-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadI2CRegister-request>) ostream)
  "Serializes a message object of type '<ReadI2CRegister-request>"
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadI2CRegister-request>) istream)
  "Deserializes a message object of type '<ReadI2CRegister-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadI2CRegister-request>)))
  "Returns string type for a service object of type '<ReadI2CRegister-request>"
  "shared_files/ReadI2CRegisterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadI2CRegister-request)))
  "Returns string type for a service object of type 'ReadI2CRegister-request"
  "shared_files/ReadI2CRegisterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadI2CRegister-request>)))
  "Returns md5sum for a message object of type '<ReadI2CRegister-request>"
  "e0f881584c1cdaf6c52e091fbeb83b32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadI2CRegister-request)))
  "Returns md5sum for a message object of type 'ReadI2CRegister-request"
  "e0f881584c1cdaf6c52e091fbeb83b32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadI2CRegister-request>)))
  "Returns full string definition for message of type '<ReadI2CRegister-request>"
  (cl:format cl:nil "int8 addr~%int8 reg~%int8 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadI2CRegister-request)))
  "Returns full string definition for message of type 'ReadI2CRegister-request"
  (cl:format cl:nil "int8 addr~%int8 reg~%int8 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadI2CRegister-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadI2CRegister-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadI2CRegister-request
    (cl:cons ':addr (addr msg))
    (cl:cons ':reg (reg msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude ReadI2CRegister-response.msg.html

(cl:defclass <ReadI2CRegister-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ReadI2CRegister-response (<ReadI2CRegister-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadI2CRegister-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadI2CRegister-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-srv:<ReadI2CRegister-response> is deprecated: use shared_files-srv:ReadI2CRegister-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ReadI2CRegister-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-srv:data-val is deprecated.  Use shared_files-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadI2CRegister-response>) ostream)
  "Serializes a message object of type '<ReadI2CRegister-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadI2CRegister-response>) istream)
  "Deserializes a message object of type '<ReadI2CRegister-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadI2CRegister-response>)))
  "Returns string type for a service object of type '<ReadI2CRegister-response>"
  "shared_files/ReadI2CRegisterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadI2CRegister-response)))
  "Returns string type for a service object of type 'ReadI2CRegister-response"
  "shared_files/ReadI2CRegisterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadI2CRegister-response>)))
  "Returns md5sum for a message object of type '<ReadI2CRegister-response>"
  "e0f881584c1cdaf6c52e091fbeb83b32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadI2CRegister-response)))
  "Returns md5sum for a message object of type 'ReadI2CRegister-response"
  "e0f881584c1cdaf6c52e091fbeb83b32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadI2CRegister-response>)))
  "Returns full string definition for message of type '<ReadI2CRegister-response>"
  (cl:format cl:nil "uint8[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadI2CRegister-response)))
  "Returns full string definition for message of type 'ReadI2CRegister-response"
  (cl:format cl:nil "uint8[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadI2CRegister-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadI2CRegister-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadI2CRegister-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadI2CRegister)))
  'ReadI2CRegister-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadI2CRegister)))
  'ReadI2CRegister-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadI2CRegister)))
  "Returns string type for a service object of type '<ReadI2CRegister>"
  "shared_files/ReadI2CRegister")