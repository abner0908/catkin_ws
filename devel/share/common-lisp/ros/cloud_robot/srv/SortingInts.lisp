; Auto-generated. Do not edit!


(cl:in-package cloud_robot-srv)


;//! \htmlinclude SortingInts-request.msg.html

(cl:defclass <SortingInts-request> (roslisp-msg-protocol:ros-message)
  ((nums
    :reader nums
    :initarg :nums
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SortingInts-request (<SortingInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SortingInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SortingInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cloud_robot-srv:<SortingInts-request> is deprecated: use cloud_robot-srv:SortingInts-request instead.")))

(cl:ensure-generic-function 'nums-val :lambda-list '(m))
(cl:defmethod nums-val ((m <SortingInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cloud_robot-srv:nums-val is deprecated.  Use cloud_robot-srv:nums instead.")
  (nums m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SortingInts-request>) ostream)
  "Serializes a message object of type '<SortingInts-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nums))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'nums))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SortingInts-request>) istream)
  "Deserializes a message object of type '<SortingInts-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nums) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nums)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SortingInts-request>)))
  "Returns string type for a service object of type '<SortingInts-request>"
  "cloud_robot/SortingIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SortingInts-request)))
  "Returns string type for a service object of type 'SortingInts-request"
  "cloud_robot/SortingIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SortingInts-request>)))
  "Returns md5sum for a message object of type '<SortingInts-request>"
  "ff865f8228965906870e73f7c2b0295b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SortingInts-request)))
  "Returns md5sum for a message object of type 'SortingInts-request"
  "ff865f8228965906870e73f7c2b0295b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SortingInts-request>)))
  "Returns full string definition for message of type '<SortingInts-request>"
  (cl:format cl:nil "int64[] nums~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SortingInts-request)))
  "Returns full string definition for message of type 'SortingInts-request"
  (cl:format cl:nil "int64[] nums~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SortingInts-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nums) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SortingInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SortingInts-request
    (cl:cons ':nums (nums msg))
))
;//! \htmlinclude SortingInts-response.msg.html

(cl:defclass <SortingInts-response> (roslisp-msg-protocol:ros-message)
  ((sorted
    :reader sorted
    :initarg :sorted
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SortingInts-response (<SortingInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SortingInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SortingInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cloud_robot-srv:<SortingInts-response> is deprecated: use cloud_robot-srv:SortingInts-response instead.")))

(cl:ensure-generic-function 'sorted-val :lambda-list '(m))
(cl:defmethod sorted-val ((m <SortingInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cloud_robot-srv:sorted-val is deprecated.  Use cloud_robot-srv:sorted instead.")
  (sorted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SortingInts-response>) ostream)
  "Serializes a message object of type '<SortingInts-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sorted))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'sorted))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SortingInts-response>) istream)
  "Deserializes a message object of type '<SortingInts-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sorted) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sorted)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SortingInts-response>)))
  "Returns string type for a service object of type '<SortingInts-response>"
  "cloud_robot/SortingIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SortingInts-response)))
  "Returns string type for a service object of type 'SortingInts-response"
  "cloud_robot/SortingIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SortingInts-response>)))
  "Returns md5sum for a message object of type '<SortingInts-response>"
  "ff865f8228965906870e73f7c2b0295b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SortingInts-response)))
  "Returns md5sum for a message object of type 'SortingInts-response"
  "ff865f8228965906870e73f7c2b0295b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SortingInts-response>)))
  "Returns full string definition for message of type '<SortingInts-response>"
  (cl:format cl:nil "int64[] sorted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SortingInts-response)))
  "Returns full string definition for message of type 'SortingInts-response"
  (cl:format cl:nil "int64[] sorted~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SortingInts-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sorted) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SortingInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SortingInts-response
    (cl:cons ':sorted (sorted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SortingInts)))
  'SortingInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SortingInts)))
  'SortingInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SortingInts)))
  "Returns string type for a service object of type '<SortingInts>"
  "cloud_robot/SortingInts")