
(cl:in-package :asdf)

(defsystem "vicon_j-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "vicon" :depends-on ("_package_vicon"))
    (:file "_package_vicon" :depends-on ("_package"))
  ))