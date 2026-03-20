
(cl:in-package :asdf)

(defsystem "copernicus_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BMS" :depends-on ("_package_BMS"))
    (:file "_package_BMS" :depends-on ("_package"))
    (:file "Diagnostics" :depends-on ("_package_Diagnostics"))
    (:file "_package_Diagnostics" :depends-on ("_package"))
    (:file "RPM" :depends-on ("_package_RPM"))
    (:file "_package_RPM" :depends-on ("_package"))
    (:file "SonarSensor" :depends-on ("_package_SonarSensor"))
    (:file "_package_SonarSensor" :depends-on ("_package"))
    (:file "Velocities" :depends-on ("_package_Velocities"))
    (:file "_package_Velocities" :depends-on ("_package"))
  ))