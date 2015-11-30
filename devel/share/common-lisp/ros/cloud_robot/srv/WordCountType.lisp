; Auto-generated. Do not edit!


(cl:in-package cloud_robot-srv)


;//! \htmlinclude WordCountType-request.msg.html

(cl:defclass <WordCountType-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass WordCountType-request (<WordCountType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WordCountType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WordCountType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cloud_robot-srv:<WordCountType-request> is deprecated: use cloud_robot-srv:WordCountType-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <WordCountType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cloud_robot-srv:words-val is deprecated.  Use cloud_robot-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WordCountType-request>) ostream)
  "Serializes a message object of type '<WordCountType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WordCountType-request>) istream)
  "Deserializes a message object of type '<WordCountType-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WordCountType-request>)))
  "Returns string type for a service object of type '<WordCountType-request>"
  "cloud_robot/WordCountTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCountType-request)))
  "Returns string type for a service object of type 'WordCountType-request"
  "cloud_robot/WordCountTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WordCountType-request>)))
  "Returns md5sum for a message object of type '<WordCountType-request>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WordCountType-request)))
  "Returns md5sum for a message object of type 'WordCountType-request"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WordCountType-request>)))
  "Returns full string definition for message of type '<WordCountType-request>"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WordCountType-request)))
  "Returns full string definition for message of type 'WordCountType-request"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WordCountType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WordCountType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WordCountType-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude WordCountType-response.msg.html

(cl:defclass <WordCountType-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass WordCountType-response (<WordCountType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WordCountType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WordCountType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cloud_robot-srv:<WordCountType-response> is deprecated: use cloud_robot-srv:WordCountType-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <WordCountType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cloud_robot-srv:count-val is deprecated.  Use cloud_robot-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WordCountType-response>) ostream)
  "Serializes a message object of type '<WordCountType-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WordCountType-response>) istream)
  "Deserializes a message object of type '<WordCountType-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WordCountType-response>)))
  "Returns string type for a service object of type '<WordCountType-response>"
  "cloud_robot/WordCountTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCountType-response)))
  "Returns string type for a service object of type 'WordCountType-response"
  "cloud_robot/WordCountTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WordCountType-response>)))
  "Returns md5sum for a message object of type '<WordCountType-response>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WordCountType-response)))
  "Returns md5sum for a message object of type 'WordCountType-response"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WordCountType-response>)))
  "Returns full string definition for message of type '<WordCountType-response>"
  (cl:format cl:nil "uint32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WordCountType-response)))
  "Returns full string definition for message of type 'WordCountType-response"
  (cl:format cl:nil "uint32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WordCountType-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WordCountType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WordCountType-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WordCountType)))
  'WordCountType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WordCountType)))
  'WordCountType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCountType)))
  "Returns string type for a service object of type '<WordCountType>"
  "cloud_robot/WordCountType")