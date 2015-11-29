;; Auto-generated. Do not edit!


(when (boundp 'cloud_robot::Complex)
  (if (not (find-package "CLOUD_ROBOT"))
    (make-package "CLOUD_ROBOT"))
  (shadow 'Complex (find-package "CLOUD_ROBOT")))
(unless (find-package "CLOUD_ROBOT::COMPLEX")
  (make-package "CLOUD_ROBOT::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude Complex.msg.html


(defclass cloud_robot::Complex
  :super ros::object
  :slots (_real _imaginary ))

(defmethod cloud_robot::Complex
  (:init
   (&key
    ((:real __real) 0.0)
    ((:imaginary __imaginary) 0.0)
    )
   (send-super :init)
   (setq _real (float __real))
   (setq _imaginary (float __imaginary))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginary
   (&optional __imaginary)
   (if __imaginary (setq _imaginary __imaginary)) _imaginary)
  (:serialization-length
   ()
   (+
    ;; float32 _real
    4
    ;; float32 _imaginary
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _real
       (sys::poke _real (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _imaginary
       (sys::poke _imaginary (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _real
     (setq _real (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _imaginary
     (setq _imaginary (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cloud_robot::Complex :md5sum-) "54da470dccf15d60bd273ab751e1c0a1")
(setf (get cloud_robot::Complex :datatype-) "cloud_robot/Complex")
(setf (get cloud_robot::Complex :definition-)
      "float32 real
float32 imaginary

")



(provide :cloud_robot/Complex "54da470dccf15d60bd273ab751e1c0a1")


