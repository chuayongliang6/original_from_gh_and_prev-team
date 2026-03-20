;; Auto-generated. Do not edit!


(when (boundp 'diff_drive_controller::Acceleration)
  (if (not (find-package "DIFF_DRIVE_CONTROLLER"))
    (make-package "DIFF_DRIVE_CONTROLLER"))
  (shadow 'Acceleration (find-package "DIFF_DRIVE_CONTROLLER")))
(unless (find-package "DIFF_DRIVE_CONTROLLER::ACCELERATION")
  (make-package "DIFF_DRIVE_CONTROLLER::ACCELERATION"))
(unless (find-package "DIFF_DRIVE_CONTROLLER::ACCELERATIONREQUEST")
  (make-package "DIFF_DRIVE_CONTROLLER::ACCELERATIONREQUEST"))
(unless (find-package "DIFF_DRIVE_CONTROLLER::ACCELERATIONRESPONSE")
  (make-package "DIFF_DRIVE_CONTROLLER::ACCELERATIONRESPONSE"))

(in-package "ROS")





(defclass diff_drive_controller::AccelerationRequest
  :super ros::object
  :slots (_acceleration ))

(defmethod diff_drive_controller::AccelerationRequest
  (:init
   (&key
    ((:acceleration __acceleration) 0.0)
    )
   (send-super :init)
   (setq _acceleration (float __acceleration))
   self)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; float64 _acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass diff_drive_controller::AccelerationResponse
  :super ros::object
  :slots (_success ))

(defmethod diff_drive_controller::AccelerationResponse
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

(defclass diff_drive_controller::Acceleration
  :super ros::object
  :slots ())

(setf (get diff_drive_controller::Acceleration :md5sum-) "fad4e19098f080ace41a4a41c6498a2e")
(setf (get diff_drive_controller::Acceleration :datatype-) "diff_drive_controller/Acceleration")
(setf (get diff_drive_controller::Acceleration :request) diff_drive_controller::AccelerationRequest)
(setf (get diff_drive_controller::Acceleration :response) diff_drive_controller::AccelerationResponse)

(defmethod diff_drive_controller::AccelerationRequest
  (:response () (instance diff_drive_controller::AccelerationResponse :init)))

(setf (get diff_drive_controller::AccelerationRequest :md5sum-) "fad4e19098f080ace41a4a41c6498a2e")
(setf (get diff_drive_controller::AccelerationRequest :datatype-) "diff_drive_controller/AccelerationRequest")
(setf (get diff_drive_controller::AccelerationRequest :definition-)
      "float64 acceleration
---
bool success
")

(setf (get diff_drive_controller::AccelerationResponse :md5sum-) "fad4e19098f080ace41a4a41c6498a2e")
(setf (get diff_drive_controller::AccelerationResponse :datatype-) "diff_drive_controller/AccelerationResponse")
(setf (get diff_drive_controller::AccelerationResponse :definition-)
      "float64 acceleration
---
bool success
")



(provide :diff_drive_controller/Acceleration "fad4e19098f080ace41a4a41c6498a2e")


