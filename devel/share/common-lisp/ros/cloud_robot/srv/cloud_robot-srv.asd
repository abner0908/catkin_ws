
(cl:in-package :asdf)

(defsystem "cloud_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WordCountType" :depends-on ("_package_WordCountType"))
    (:file "_package_WordCountType" :depends-on ("_package"))
  ))