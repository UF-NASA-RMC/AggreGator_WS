; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude WriteI2CRegister.msg.html

(cl:defclass <WriteI2CRegister> (roslisp-msg-protocol:ros-message)
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
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass WriteI2CRegister (<WriteI2CRegister>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteI2CRegister>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteI2CRegister)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<WriteI2CRegister> is deprecated: use shared_files-msg:WriteI2CRegister instead.")))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <WriteI2CRegister>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:addr-val is deprecated.  Use shared_files-msg:addr instead.")
  (addr m))

(cl:ensure-generic-function 'reg-val :lambda-list '(m))
(cl:defmethod reg-val ((m <WriteI2CRegister>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:reg-val is deprecated.  Use shared_files-msg:reg instead.")
  (reg m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WriteI2CRegister>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:data-val is deprecated.  Use shared_files-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteI2CRegister>) ostream)
  "Serializes a message object of type '<WriteI2CRegister>"
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteI2CRegister>) istream)
  "Deserializes a message object of type '<WriteI2CRegister>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteI2CRegister>)))
  "Returns string type for a message object of type '<WriteI2CRegister>"
  "shared_files/WriteI2CRegister")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteI2CRegister)))
  "Returns string type for a message object of type 'WriteI2CRegister"
  "shared_files/WriteI2CRegister")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteI2CRegister>)))
  "Returns md5sum for a message object of type '<WriteI2CRegister>"
  "73fab66272b043e250c3aa49bf42d5bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteI2CRegister)))
  "Returns md5sum for a message object of type 'WriteI2CRegister"
  "73fab66272b043e250c3aa49bf42d5bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteI2CRegister>)))
  "Returns full string definition for message of type '<WriteI2CRegister>"
  (cl:format cl:nil "int8 addr~%int8 reg~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteI2CRegister)))
  "Returns full string definition for message of type 'WriteI2CRegister"
  (cl:format cl:nil "int8 addr~%int8 reg~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteI2CRegister>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteI2CRegister>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteI2CRegister
    (cl:cons ':addr (addr msg))
    (cl:cons ':reg (reg msg))
    (cl:cons ':data (data msg))
))
