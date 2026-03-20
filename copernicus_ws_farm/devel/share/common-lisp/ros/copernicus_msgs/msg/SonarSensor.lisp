; Auto-generated. Do not edit!


(cl:in-package copernicus_msgs-msg)


;//! \htmlinclude SonarSensor.msg.html

(cl:defclass <SonarSensor> (roslisp-msg-protocol:ros-message)
  ((SONAR
    :reader SONAR
    :initarg :SONAR
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SonarSensor (<SonarSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name copernicus_msgs-msg:<SonarSensor> is deprecated: use copernicus_msgs-msg:SonarSensor instead.")))

(cl:ensure-generic-function 'SONAR-val :lambda-list '(m))
(cl:defmethod SONAR-val ((m <SonarSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copernicus_msgs-msg:SONAR-val is deprecated.  Use copernicus_msgs-msg:SONAR instead.")
  (SONAR m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarSensor>) ostream)
  "Serializes a message object of type '<SonarSensor>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'SONAR))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarSensor>) istream)
  "Deserializes a message object of type '<SonarSensor>"
  (cl:setf (cl:slot-value msg 'SONAR) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'SONAR)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarSensor>)))
  "Returns string type for a message object of type '<SonarSensor>"
  "copernicus_msgs/SonarSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSensor)))
  "Returns string type for a message object of type 'SonarSensor"
  "copernicus_msgs/SonarSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarSensor>)))
  "Returns md5sum for a message object of type '<SonarSensor>"
  "7d763eec883429d5f3e9ebc343ccfa65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarSensor)))
  "Returns md5sum for a message object of type 'SonarSensor"
  "7d763eec883429d5f3e9ebc343ccfa65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarSensor>)))
  "Returns full string definition for message of type '<SonarSensor>"
  (cl:format cl:nil "uint16[6]    SONAR~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarSensor)))
  "Returns full string definition for message of type 'SonarSensor"
  (cl:format cl:nil "uint16[6]    SONAR~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarSensor>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'SONAR) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarSensor
    (cl:cons ':SONAR (SONAR msg))
))
