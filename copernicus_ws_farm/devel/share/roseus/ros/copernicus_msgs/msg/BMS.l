;; Auto-generated. Do not edit!


(when (boundp 'copernicus_msgs::BMS)
  (if (not (find-package "COPERNICUS_MSGS"))
    (make-package "COPERNICUS_MSGS"))
  (shadow 'BMS (find-package "COPERNICUS_MSGS")))
(unless (find-package "COPERNICUS_MSGS::BMS")
  (make-package "COPERNICUS_MSGS::BMS"))

(in-package "ROS")
;;//! \htmlinclude BMS.msg.html


(defclass copernicus_msgs::BMS
  :super ros::object
  :slots (_SOC _Voltage _Current ))

(defmethod copernicus_msgs::BMS
  (:init
   (&key
    ((:SOC __SOC) 0)
    ((:Voltage __Voltage) 0)
    ((:Current __Current) 0)
    )
   (send-super :init)
   (setq _SOC (round __SOC))
   (setq _Voltage (round __Voltage))
   (setq _Current (round __Current))
   self)
  (:SOC
   (&optional __SOC)
   (if __SOC (setq _SOC __SOC)) _SOC)
  (:Voltage
   (&optional __Voltage)
   (if __Voltage (setq _Voltage __Voltage)) _Voltage)
  (:Current
   (&optional __Current)
   (if __Current (setq _Current __Current)) _Current)
  (:serialization-length
   ()
   (+
    ;; uint16 _SOC
    2
    ;; uint16 _Voltage
    2
    ;; int16 _Current
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _SOC
       (write-word _SOC s)
     ;; uint16 _Voltage
       (write-word _Voltage s)
     ;; int16 _Current
       (write-word _Current s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _SOC
     (setq _SOC (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Voltage
     (setq _Voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Current
     (setq _Current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get copernicus_msgs::BMS :md5sum-) "e56275de8110c71d2252135812351394")
(setf (get copernicus_msgs::BMS :datatype-) "copernicus_msgs/BMS")
(setf (get copernicus_msgs::BMS :definition-)
      "uint16 SOC
uint16 Voltage
int16 Current
")



(provide :copernicus_msgs/BMS "e56275de8110c71d2252135812351394")


