;; Auto-generated. Do not edit!


(when (boundp 'diff_drive_controller::Velocity)
  (if (not (find-package "DIFF_DRIVE_CONTROLLER"))
    (make-package "DIFF_DRIVE_CONTROLLER"))
  (shadow 'Velocity (find-package "DIFF_DRIVE_CONTROLLER")))
(unless (find-package "DIFF_DRIVE_CONTROLLER::VELOCITY")
  (make-package "DIFF_DRIVE_CONTROLLER::VELOCITY"))
(unless (find-package "DIFF_DRIVE_CONTROLLER::VELOCITYREQUEST")
  (make-package "DIFF_DRIVE_CONTROLLER::VELOCITYREQUEST"))
(unless (find-package "DIFF_DRIVE_CONTROLLER::VELOCITYRESPONSE")
  (make-package "DIFF_DRIVE_CONTROLLER::VELOCITYRESPONSE"))

(in-package "ROS")





(defclass diff_drive_controller::VelocityRequest
  :super ros::object
  :slots (_velocity ))

(defmethod diff_drive_controller::VelocityRequest
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass diff_drive_controller::VelocityResponse
  :super ros::object
  :slots (_success ))

(defmethod diff_drive_controller::VelocityResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass diff_drive_controller::Velocity
  :super ros::object
  :slots ())

(setf (get diff_drive_controller::Velocity :md5sum-) "389d67e2fda96fe6bf741fde2129c825")
(setf (get diff_drive_controller::Velocity :datatype-) "diff_drive_controller/Velocity")
(setf (get diff_drive_controller::Velocity :request) diff_drive_controller::VelocityRequest)
(setf (get diff_drive_controller::Velocity :response) diff_drive_controller::VelocityResponse)

(defmethod diff_drive_controller::VelocityRequest
  (:response () (instance diff_drive_controller::VelocityResponse :init)))

(setf (get diff_drive_controller::VelocityRequest :md5sum-) "389d67e2fda96fe6bf741fde2129c825")
(setf (get diff_drive_controller::VelocityRequest :datatype-) "diff_drive_controller/VelocityRequest")
(setf (get diff_drive_controller::VelocityRequest :definition-)
      "float64 velocity
---
bool success
")

(setf (get diff_drive_controller::VelocityResponse :md5sum-) "389d67e2fda96fe6bf741fde2129c825")
(setf (get diff_drive_controller::VelocityResponse :datatype-) "diff_drive_controller/VelocityResponse")
(setf (get diff_drive_controller::VelocityResponse :definition-)
      "float64 velocity
---
bool success
")



(provide :diff_drive_controller/Velocity "389d67e2fda96fe6bf741fde2129c825")


