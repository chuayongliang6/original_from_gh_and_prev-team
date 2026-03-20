
(cl:in-package :asdf)

(defsystem "farm_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "farm_node" :depends-on ("_package_farm_node"))
    (:file "_package_farm_node" :depends-on ("_package"))
  ))