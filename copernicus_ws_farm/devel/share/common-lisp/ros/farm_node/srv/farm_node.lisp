; Auto-generated. Do not edit!


(cl:in-package farm_node-srv)


;//! \htmlinclude farm_node-request.msg.html

(cl:defclass <farm_node-request> (roslisp-msg-protocol:ros-message)
  ((ip
    :reader ip
    :initarg :ip
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass farm_node-request (<farm_node-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <farm_node-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'farm_node-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name farm_node-srv:<farm_node-request> is deprecated: use farm_node-srv:farm_node-request instead.")))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <farm_node-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader farm_node-srv:ip-val is deprecated.  Use farm_node-srv:ip instead.")
  (ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <farm_node-request>) ostream)
  "Serializes a message object of type '<farm_node-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ip) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <farm_node-request>) istream)
  "Deserializes a message object of type '<farm_node-request>"
    (cl:setf (cl:slot-value msg 'ip) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<farm_node-request>)))
  "Returns string type for a service object of type '<farm_node-request>"
  "farm_node/farm_nodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'farm_node-request)))
  "Returns string type for a service object of type 'farm_node-request"
  "farm_node/farm_nodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<farm_node-request>)))
  "Returns md5sum for a message object of type '<farm_node-request>"
  "84e7488d3da383232f3536b550a9c06e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'farm_node-request)))
  "Returns md5sum for a message object of type 'farm_node-request"
  "84e7488d3da383232f3536b550a9c06e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<farm_node-request>)))
  "Returns full string definition for message of type '<farm_node-request>"
  (cl:format cl:nil "bool ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'farm_node-request)))
  "Returns full string definition for message of type 'farm_node-request"
  (cl:format cl:nil "bool ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <farm_node-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <farm_node-request>))
  "Converts a ROS message object to a list"
  (cl:list 'farm_node-request
    (cl:cons ':ip (ip msg))
))
;//! \htmlinclude farm_node-response.msg.html

(cl:defclass <farm_node-response> (roslisp-msg-protocol:ros-message)
  ((op
    :reader op
    :initarg :op
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass farm_node-response (<farm_node-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <farm_node-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'farm_node-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name farm_node-srv:<farm_node-response> is deprecated: use farm_node-srv:farm_node-response instead.")))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <farm_node-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader farm_node-srv:op-val is deprecated.  Use farm_node-srv:op instead.")
  (op m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <farm_node-response>) ostream)
  "Serializes a message object of type '<farm_node-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'op) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <farm_node-response>) istream)
  "Deserializes a message object of type '<farm_node-response>"
    (cl:setf (cl:slot-value msg 'op) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<farm_node-response>)))
  "Returns string type for a service object of type '<farm_node-response>"
  "farm_node/farm_nodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'farm_node-response)))
  "Returns string type for a service object of type 'farm_node-response"
  "farm_node/farm_nodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<farm_node-response>)))
  "Returns md5sum for a message object of type '<farm_node-response>"
  "84e7488d3da383232f3536b550a9c06e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'farm_node-response)))
  "Returns md5sum for a message object of type 'farm_node-response"
  "84e7488d3da383232f3536b550a9c06e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<farm_node-response>)))
  "Returns full string definition for message of type '<farm_node-response>"
  (cl:format cl:nil "bool op~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'farm_node-response)))
  "Returns full string definition for message of type 'farm_node-response"
  (cl:format cl:nil "bool op~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <farm_node-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <farm_node-response>))
  "Converts a ROS message object to a list"
  (cl:list 'farm_node-response
    (cl:cons ':op (op msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'farm_node)))
  'farm_node-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'farm_node)))
  'farm_node-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'farm_node)))
  "Returns string type for a service object of type '<farm_node>"
  "farm_node/farm_node")