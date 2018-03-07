
(cl:in-package :asdf)

(defsystem "cyphy_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PosVec" :depends-on ("_package_PosVec"))
    (:file "_package_PosVec" :depends-on ("_package"))
  ))