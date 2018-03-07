; Auto-generated. Do not edit!


(cl:in-package vicon_j-srv)


;//! \htmlinclude position-request.msg.html

(cl:defclass <position-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (thetax
    :reader thetax
    :initarg :thetax
    :type cl:float
    :initform 0.0)
   (thetay
    :reader thetay
    :initarg :thetay
    :type cl:float
    :initform 0.0)
   (thetaz
    :reader thetaz
    :initarg :thetaz
    :type cl:float
    :initform 0.0))
)

(cl:defclass position-request (<position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon_j-srv:<position-request> is deprecated: use vicon_j-srv:position-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:x-val is deprecated.  Use vicon_j-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:y-val is deprecated.  Use vicon_j-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:z-val is deprecated.  Use vicon_j-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'thetax-val :lambda-list '(m))
(cl:defmethod thetax-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:thetax-val is deprecated.  Use vicon_j-srv:thetax instead.")
  (thetax m))

(cl:ensure-generic-function 'thetay-val :lambda-list '(m))
(cl:defmethod thetay-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:thetay-val is deprecated.  Use vicon_j-srv:thetay instead.")
  (thetay m))

(cl:ensure-generic-function 'thetaz-val :lambda-list '(m))
(cl:defmethod thetaz-val ((m <position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:thetaz-val is deprecated.  Use vicon_j-srv:thetaz instead.")
  (thetaz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position-request>) ostream)
  "Serializes a message object of type '<position-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thetax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thetay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thetaz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position-request>) istream)
  "Deserializes a message object of type '<position-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thetax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thetay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thetaz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position-request>)))
  "Returns string type for a service object of type '<position-request>"
  "vicon_j/positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position-request)))
  "Returns string type for a service object of type 'position-request"
  "vicon_j/positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position-request>)))
  "Returns md5sum for a message object of type '<position-request>"
  "6d7ca69a7dcb703d43878c445cd2c92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position-request)))
  "Returns md5sum for a message object of type 'position-request"
  "6d7ca69a7dcb703d43878c445cd2c92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position-request>)))
  "Returns full string definition for message of type '<position-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%float32 thetax~%float32 thetay~%float32 thetaz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position-request)))
  "Returns full string definition for message of type 'position-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%float32 thetax~%float32 thetay~%float32 thetaz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'position-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':thetax (thetax msg))
    (cl:cons ':thetay (thetay msg))
    (cl:cons ':thetaz (thetaz msg))
))
;//! \htmlinclude position-response.msg.html

(cl:defclass <position-response> (roslisp-msg-protocol:ros-message)
  ((inPosition
    :reader inPosition
    :initarg :inPosition
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass position-response (<position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon_j-srv:<position-response> is deprecated: use vicon_j-srv:position-response instead.")))

(cl:ensure-generic-function 'inPosition-val :lambda-list '(m))
(cl:defmethod inPosition-val ((m <position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_j-srv:inPosition-val is deprecated.  Use vicon_j-srv:inPosition instead.")
  (inPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <position-response>) ostream)
  "Serializes a message object of type '<position-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inPosition) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <position-response>) istream)
  "Deserializes a message object of type '<position-response>"
    (cl:setf (cl:slot-value msg 'inPosition) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<position-response>)))
  "Returns string type for a service object of type '<position-response>"
  "vicon_j/positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position-response)))
  "Returns string type for a service object of type 'position-response"
  "vicon_j/positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<position-response>)))
  "Returns md5sum for a message object of type '<position-response>"
  "6d7ca69a7dcb703d43878c445cd2c92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'position-response)))
  "Returns md5sum for a message object of type 'position-response"
  "6d7ca69a7dcb703d43878c445cd2c92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<position-response>)))
  "Returns full string definition for message of type '<position-response>"
  (cl:format cl:nil "~%bool inPosition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'position-response)))
  "Returns full string definition for message of type 'position-response"
  (cl:format cl:nil "~%bool inPosition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <position-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'position-response
    (cl:cons ':inPosition (inPosition msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'position)))
  'position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'position)))
  'position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'position)))
  "Returns string type for a service object of type '<position>"
  "vicon_j/position")