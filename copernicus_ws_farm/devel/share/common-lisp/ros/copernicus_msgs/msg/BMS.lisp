; Auto-generated. Do not edit!


(cl:in-package copernicus_msgs-msg)


;//! \htmlinclude BMS.msg.html

(cl:defclass <BMS> (roslisp-msg-protocol:ros-message)
  ((SOC
    :reader SOC
    :initarg :SOC
    :type cl:fixnum
    :initform 0)
   (Voltage
    :reader Voltage
    :initarg :Voltage
    :type cl:fixnum
    :initform 0)
   (Current
    :reader Current
    :initarg :Current
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BMS (<BMS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BMS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BMS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name copernicus_msgs-msg:<BMS> is deprecated: use copernicus_msgs-msg:BMS instead.")))

(cl:ensure-generic-function 'SOC-val :lambda-list '(m))
(cl:defmethod SOC-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copernicus_msgs-msg:SOC-val is deprecated.  Use copernicus_msgs-msg:SOC instead.")
  (SOC m))

(cl:ensure-generic-function 'Voltage-val :lambda-list '(m))
(cl:defmethod Voltage-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copernicus_msgs-msg:Voltage-val is deprecated.  Use copernicus_msgs-msg:Voltage instead.")
  (Voltage m))

(cl:ensure-generic-function 'Current-val :lambda-list '(m))
(cl:defmethod Current-val ((m <BMS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copernicus_msgs-msg:Current-val is deprecated.  Use copernicus_msgs-msg:Current instead.")
  (Current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BMS>) ostream)
  "Serializes a message object of type '<BMS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SOC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SOC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Voltage)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BMS>) istream)
  "Deserializes a message object of type '<BMS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SOC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SOC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Voltage)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BMS>)))
  "Returns string type for a message object of type '<BMS>"
  "copernicus_msgs/BMS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BMS)))
  "Returns string type for a message object of type 'BMS"
  "copernicus_msgs/BMS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BMS>)))
  "Returns md5sum for a message object of type '<BMS>"
  "e56275de8110c71d2252135812351394")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BMS)))
  "Returns md5sum for a message object of type 'BMS"
  "e56275de8110c71d2252135812351394")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BMS>)))
  "Returns full string definition for message of type '<BMS>"
  (cl:format cl:nil "uint16 SOC~%uint16 Voltage~%int16 Current~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BMS)))
  "Returns full string definition for message of type 'BMS"
  (cl:format cl:nil "uint16 SOC~%uint16 Voltage~%int16 Current~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BMS>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BMS>))
  "Converts a ROS message object to a list"
  (cl:list 'BMS
    (cl:cons ':SOC (SOC msg))
    (cl:cons ':Voltage (Voltage msg))
    (cl:cons ':Current (Current msg))
))
