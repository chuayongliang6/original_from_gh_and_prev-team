;; Auto-generated. Do not edit!


(when (boundp 'copernicus_msgs::SonarSensor)
  (if (not (find-package "COPERNICUS_MSGS"))
    (make-package "COPERNICUS_MSGS"))
  (shadow 'SonarSensor (find-package "COPERNICUS_MSGS")))
(unless (find-package "COPERNICUS_MSGS::SONARSENSOR")
  (make-package "COPERNICUS_MSGS::SONARSENSOR"))

(in-package "ROS")
;;//! \htmlinclude SonarSensor.msg.html


(defclass copernicus_msgs::SonarSensor
  :super ros::object
  :slots (_SONAR ))

(defmethod copernicus_msgs::SonarSensor
  (:init
   (&key
    ((:SONAR __SONAR) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _SONAR __SONAR)
   self)
  (:SONAR
   (&optional __SONAR)
   (if __SONAR (setq _SONAR __SONAR)) _SONAR)
  (:serialization-length
   ()
   (+
    ;; uint16[6] _SONAR
    (* 2    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[6] _SONAR
     (dotimes (i 6)
       (write-word (elt _SONAR i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[6] _SONAR
   (dotimes (i (length _SONAR))
     (setf (elt _SONAR i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get copernicus_msgs::SonarSensor :md5sum-) "7d763eec883429d5f3e9ebc343ccfa65")
(setf (get copernicus_msgs::SonarSensor :datatype-) "copernicus_msgs/SonarSensor")
(setf (get copernicus_msgs::SonarSensor :definition-)
      "uint16[6]    SONAR
")



(provide :copernicus_msgs/SonarSensor "7d763eec883429d5f3e9ebc343ccfa65")


