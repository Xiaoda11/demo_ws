; Auto-generated. Do not edit!


(cl:in-package plumbing_srv-srv)


;//! \htmlinclude ADDINTS-request.msg.html

(cl:defclass <ADDINTS-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass ADDINTS-request (<ADDINTS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADDINTS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADDINTS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_srv-srv:<ADDINTS-request> is deprecated: use plumbing_srv-srv:ADDINTS-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <ADDINTS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_srv-srv:num1-val is deprecated.  Use plumbing_srv-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <ADDINTS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_srv-srv:num2-val is deprecated.  Use plumbing_srv-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADDINTS-request>) ostream)
  "Serializes a message object of type '<ADDINTS-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADDINTS-request>) istream)
  "Deserializes a message object of type '<ADDINTS-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADDINTS-request>)))
  "Returns string type for a service object of type '<ADDINTS-request>"
  "plumbing_srv/ADDINTSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADDINTS-request)))
  "Returns string type for a service object of type 'ADDINTS-request"
  "plumbing_srv/ADDINTSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADDINTS-request>)))
  "Returns md5sum for a message object of type '<ADDINTS-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADDINTS-request)))
  "Returns md5sum for a message object of type 'ADDINTS-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADDINTS-request>)))
  "Returns full string definition for message of type '<ADDINTS-request>"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADDINTS-request)))
  "Returns full string definition for message of type 'ADDINTS-request"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADDINTS-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADDINTS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ADDINTS-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude ADDINTS-response.msg.html

(cl:defclass <ADDINTS-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADDINTS-response (<ADDINTS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADDINTS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADDINTS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_srv-srv:<ADDINTS-response> is deprecated: use plumbing_srv-srv:ADDINTS-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <ADDINTS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_srv-srv:sum-val is deprecated.  Use plumbing_srv-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADDINTS-response>) ostream)
  "Serializes a message object of type '<ADDINTS-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADDINTS-response>) istream)
  "Deserializes a message object of type '<ADDINTS-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADDINTS-response>)))
  "Returns string type for a service object of type '<ADDINTS-response>"
  "plumbing_srv/ADDINTSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADDINTS-response)))
  "Returns string type for a service object of type 'ADDINTS-response"
  "plumbing_srv/ADDINTSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADDINTS-response>)))
  "Returns md5sum for a message object of type '<ADDINTS-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADDINTS-response)))
  "Returns md5sum for a message object of type 'ADDINTS-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADDINTS-response>)))
  "Returns full string definition for message of type '<ADDINTS-response>"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADDINTS-response)))
  "Returns full string definition for message of type 'ADDINTS-response"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADDINTS-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADDINTS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ADDINTS-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ADDINTS)))
  'ADDINTS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ADDINTS)))
  'ADDINTS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADDINTS)))
  "Returns string type for a service object of type '<ADDINTS>"
  "plumbing_srv/ADDINTS")