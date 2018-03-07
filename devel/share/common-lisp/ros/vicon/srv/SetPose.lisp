; Auto-generated. Do not edit!


(cl:in-package vicon-srv)


;//! \htmlinclude SetPose-request.msg.html

(cl:defclass <SetPose-request> (roslisp-msg-protocol:ros-message)
  ((subject_name
    :reader subject_name
    :initarg :subject_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetPose-request (<SetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon-srv:<SetPose-request> is deprecated: use vicon-srv:SetPose-request instead.")))

(cl:ensure-generic-function 'subject_name-val :lambda-list '(m))
(cl:defmethod subject_name-val ((m <SetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon-srv:subject_name-val is deprecated.  Use vicon-srv:subject_name instead.")
  (subject_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon-srv:pose-val is deprecated.  Use vicon-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose-request>) ostream)
  "Serializes a message object of type '<SetPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose-request>) istream)
  "Deserializes a message object of type '<SetPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose-request>)))
  "Returns string type for a service object of type '<SetPose-request>"
  "vicon/SetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose-request)))
  "Returns string type for a service object of type 'SetPose-request"
  "vicon/SetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose-request>)))
  "Returns md5sum for a message object of type '<SetPose-request>"
  "9073f079ef6a99118cd85a569b78a1cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose-request)))
  "Returns md5sum for a message object of type 'SetPose-request"
  "9073f079ef6a99118cd85a569b78a1cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose-request>)))
  "Returns full string definition for message of type '<SetPose-request>"
  (cl:format cl:nil "string subject_name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose-request)))
  "Returns full string definition for message of type 'SetPose-request"
  (cl:format cl:nil "string subject_name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose-request
    (cl:cons ':subject_name (subject_name msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetPose-response.msg.html

(cl:defclass <SetPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPose-response (<SetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon-srv:<SetPose-response> is deprecated: use vicon-srv:SetPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose-response>) ostream)
  "Serializes a message object of type '<SetPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose-response>) istream)
  "Deserializes a message object of type '<SetPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose-response>)))
  "Returns string type for a service object of type '<SetPose-response>"
  "vicon/SetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose-response)))
  "Returns string type for a service object of type 'SetPose-response"
  "vicon/SetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose-response>)))
  "Returns md5sum for a message object of type '<SetPose-response>"
  "9073f079ef6a99118cd85a569b78a1cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose-response)))
  "Returns md5sum for a message object of type 'SetPose-response"
  "9073f079ef6a99118cd85a569b78a1cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose-response>)))
  "Returns full string definition for message of type '<SetPose-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose-response)))
  "Returns full string definition for message of type 'SetPose-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPose)))
  'SetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPose)))
  'SetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose)))
  "Returns string type for a service object of type '<SetPose>"
  "vicon/SetPose")