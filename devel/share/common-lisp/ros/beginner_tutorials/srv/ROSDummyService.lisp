; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude ROSDummyService-request.msg.html

(cl:defclass <ROSDummyService-request> (roslisp-msg-protocol:ros-message)
  ((strIn
    :reader strIn
    :initarg :strIn
    :type cl:string
    :initform ""))
)

(cl:defclass ROSDummyService-request (<ROSDummyService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROSDummyService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROSDummyService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<ROSDummyService-request> is deprecated: use beginner_tutorials-srv:ROSDummyService-request instead.")))

(cl:ensure-generic-function 'strIn-val :lambda-list '(m))
(cl:defmethod strIn-val ((m <ROSDummyService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:strIn-val is deprecated.  Use beginner_tutorials-srv:strIn instead.")
  (strIn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROSDummyService-request>) ostream)
  "Serializes a message object of type '<ROSDummyService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strIn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strIn))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROSDummyService-request>) istream)
  "Deserializes a message object of type '<ROSDummyService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strIn) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strIn) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROSDummyService-request>)))
  "Returns string type for a service object of type '<ROSDummyService-request>"
  "beginner_tutorials/ROSDummyServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSDummyService-request)))
  "Returns string type for a service object of type 'ROSDummyService-request"
  "beginner_tutorials/ROSDummyServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROSDummyService-request>)))
  "Returns md5sum for a message object of type '<ROSDummyService-request>"
  "750b33477ca2c16afaec99713dc8cb06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROSDummyService-request)))
  "Returns md5sum for a message object of type 'ROSDummyService-request"
  "750b33477ca2c16afaec99713dc8cb06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROSDummyService-request>)))
  "Returns full string definition for message of type '<ROSDummyService-request>"
  (cl:format cl:nil "string strIn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROSDummyService-request)))
  "Returns full string definition for message of type 'ROSDummyService-request"
  (cl:format cl:nil "string strIn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROSDummyService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strIn))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROSDummyService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ROSDummyService-request
    (cl:cons ':strIn (strIn msg))
))
;//! \htmlinclude ROSDummyService-response.msg.html

(cl:defclass <ROSDummyService-response> (roslisp-msg-protocol:ros-message)
  ((strOut
    :reader strOut
    :initarg :strOut
    :type cl:string
    :initform ""))
)

(cl:defclass ROSDummyService-response (<ROSDummyService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROSDummyService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROSDummyService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<ROSDummyService-response> is deprecated: use beginner_tutorials-srv:ROSDummyService-response instead.")))

(cl:ensure-generic-function 'strOut-val :lambda-list '(m))
(cl:defmethod strOut-val ((m <ROSDummyService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:strOut-val is deprecated.  Use beginner_tutorials-srv:strOut instead.")
  (strOut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROSDummyService-response>) ostream)
  "Serializes a message object of type '<ROSDummyService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strOut))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strOut))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROSDummyService-response>) istream)
  "Deserializes a message object of type '<ROSDummyService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strOut) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strOut) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROSDummyService-response>)))
  "Returns string type for a service object of type '<ROSDummyService-response>"
  "beginner_tutorials/ROSDummyServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSDummyService-response)))
  "Returns string type for a service object of type 'ROSDummyService-response"
  "beginner_tutorials/ROSDummyServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROSDummyService-response>)))
  "Returns md5sum for a message object of type '<ROSDummyService-response>"
  "750b33477ca2c16afaec99713dc8cb06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROSDummyService-response)))
  "Returns md5sum for a message object of type 'ROSDummyService-response"
  "750b33477ca2c16afaec99713dc8cb06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROSDummyService-response>)))
  "Returns full string definition for message of type '<ROSDummyService-response>"
  (cl:format cl:nil "string strOut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROSDummyService-response)))
  "Returns full string definition for message of type 'ROSDummyService-response"
  (cl:format cl:nil "string strOut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROSDummyService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strOut))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROSDummyService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ROSDummyService-response
    (cl:cons ':strOut (strOut msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ROSDummyService)))
  'ROSDummyService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ROSDummyService)))
  'ROSDummyService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSDummyService)))
  "Returns string type for a service object of type '<ROSDummyService>"
  "beginner_tutorials/ROSDummyService")