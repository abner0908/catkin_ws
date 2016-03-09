
(cl:in-package :asdf)

(defsystem "cloud_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WordCountType" :depends-on ("_package_WordCountType"))
    (:file "_package_WordCountType" :depends-on ("_package"))
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "SortingInts" :depends-on ("_package_SortingInts"))
    (:file "_package_SortingInts" :depends-on ("_package"))
  ))