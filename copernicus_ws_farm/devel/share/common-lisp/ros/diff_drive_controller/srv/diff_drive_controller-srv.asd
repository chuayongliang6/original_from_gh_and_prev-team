
(cl:in-package :asdf)

(defsystem "diff_drive_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Acceleration" :depends-on ("_package_Acceleration"))
    (:file "_package_Acceleration" :depends-on ("_package"))
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
  ))