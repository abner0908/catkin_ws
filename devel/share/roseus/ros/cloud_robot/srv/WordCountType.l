;; Auto-generated. Do not edit!


(when (boundp 'cloud_robot::WordCountType)
  (if (not (find-package "CLOUD_ROBOT"))
    (make-package "CLOUD_ROBOT"))
  (shadow 'WordCountType (find-package "CLOUD_ROBOT")))
(unless (find-package "CLOUD_ROBOT::WORDCOUNTTYPE")
  (make-package "CLOUD_ROBOT::WORDCOUNTTYPE"))
(unless (find-package "CLOUD_ROBOT::WORDCOUNTTYPEREQUEST")
  (make-package "CLOUD_ROBOT::WORDCOUNTTYPEREQUEST"))
(unless (find-package "CLOUD_ROBOT::WORDCOUNTTYPERESPONSE")
  (make-package "CLOUD_ROBOT::WORDCOUNTTYPERESPONSE"))

(in-package "ROS")





(defclass cloud_robot::WordCountTypeRequest
  :super ros::object
  :slots (_words ))

(defmethod cloud_robot::WordCountTypeRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cloud_robot::WordCountTypeResponse
  :super ros::object
  :slots (_count ))

(defmethod cloud_robot::WordCountTypeResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cloud_robot::WordCountType
  :super ros::object
  :slots ())

(setf (get cloud_robot::WordCountType :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get cloud_robot::WordCountType :datatype-) "cloud_robot/WordCountType")
(setf (get cloud_robot::WordCountType :request) cloud_robot::WordCountTypeRequest)
(setf (get cloud_robot::WordCountType :response) cloud_robot::WordCountTypeResponse)

(defmethod cloud_robot::WordCountTypeRequest
  (:response () (instance cloud_robot::WordCountTypeResponse :init)))

(setf (get cloud_robot::WordCountTypeRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get cloud_robot::WordCountTypeRequest :datatype-) "cloud_robot/WordCountTypeRequest")
(setf (get cloud_robot::WordCountTypeRequest :definition-)
      "string words
---
uint32 count

")

(setf (get cloud_robot::WordCountTypeResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get cloud_robot::WordCountTypeResponse :datatype-) "cloud_robot/WordCountTypeResponse")
(setf (get cloud_robot::WordCountTypeResponse :definition-)
      "string words
---
uint32 count

")



(provide :cloud_robot/WordCountType "58903d21a3264f3408d79ba79e9f7c7e")


