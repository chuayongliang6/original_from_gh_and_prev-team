;; Auto-generated. Do not edit!


(when (boundp 'farm_node::farm_node)
  (if (not (find-package "FARM_NODE"))
    (make-package "FARM_NODE"))
  (shadow 'farm_node (find-package "FARM_NODE")))
(unless (find-package "FARM_NODE::FARM_NODE")
  (make-package "FARM_NODE::FARM_NODE"))
(unless (find-package "FARM_NODE::FARM_NODEREQUEST")
  (make-package "FARM_NODE::FARM_NODEREQUEST"))
(unless (find-package "FARM_NODE::FARM_NODERESPONSE")
  (make-package "FARM_NODE::FARM_NODERESPONSE"))

(in-package "ROS")





(defclass farm_node::farm_nodeRequest
  :super ros::object
  :slots (_ip ))

(defmethod farm_node::farm_nodeRequest
  (:init
   (&key
    ((:ip __ip) nil)
    )
   (send-super :init)
   (setq _ip __ip)
   self)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:serialization-length
   ()
   (+
    ;; bool _ip
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ip
       (if _ip (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ip
     (setq _ip (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass farm_node::farm_nodeResponse
  :super ros::object
  :slots (_op ))

(defmethod farm_node::farm_nodeResponse
  (:init
   (&key
    ((:op __op) nil)
    )
   (send-super :init)
   (setq _op __op)
   self)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:serialization-length
   ()
   (+
    ;; bool _op
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _op
       (if _op (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _op
     (setq _op (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass farm_node::farm_node
  :super ros::object
  :slots ())

(setf (get farm_node::farm_node :md5sum-) "84e7488d3da383232f3536b550a9c06e")
(setf (get farm_node::farm_node :datatype-) "farm_node/farm_node")
(setf (get farm_node::farm_node :request) farm_node::farm_nodeRequest)
(setf (get farm_node::farm_node :response) farm_node::farm_nodeResponse)

(defmethod farm_node::farm_nodeRequest
  (:response () (instance farm_node::farm_nodeResponse :init)))

(setf (get farm_node::farm_nodeRequest :md5sum-) "84e7488d3da383232f3536b550a9c06e")
(setf (get farm_node::farm_nodeRequest :datatype-) "farm_node/farm_nodeRequest")
(setf (get farm_node::farm_nodeRequest :definition-)
      "bool ip
---
bool op

")

(setf (get farm_node::farm_nodeResponse :md5sum-) "84e7488d3da383232f3536b550a9c06e")
(setf (get farm_node::farm_nodeResponse :datatype-) "farm_node/farm_nodeResponse")
(setf (get farm_node::farm_nodeResponse :definition-)
      "bool ip
---
bool op

")



(provide :farm_node/farm_node "84e7488d3da383232f3536b550a9c06e")


