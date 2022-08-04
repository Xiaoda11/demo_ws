;; Auto-generated. Do not edit!


(when (boundp 'plumbing_srv::demo01)
  (if (not (find-package "PLUMBING_SRV"))
    (make-package "PLUMBING_SRV"))
  (shadow 'demo01 (find-package "PLUMBING_SRV")))
(unless (find-package "PLUMBING_SRV::DEMO01")
  (make-package "PLUMBING_SRV::DEMO01"))
(unless (find-package "PLUMBING_SRV::DEMO01REQUEST")
  (make-package "PLUMBING_SRV::DEMO01REQUEST"))
(unless (find-package "PLUMBING_SRV::DEMO01RESPONSE")
  (make-package "PLUMBING_SRV::DEMO01RESPONSE"))

(in-package "ROS")





(defclass plumbing_srv::demo01Request
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_srv::demo01Request
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_srv::demo01Response
  :super ros::object
  :slots (_sum ))

(defmethod plumbing_srv::demo01Response
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_srv::demo01
  :super ros::object
  :slots ())

(setf (get plumbing_srv::demo01 :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_srv::demo01 :datatype-) "plumbing_srv/demo01")
(setf (get plumbing_srv::demo01 :request) plumbing_srv::demo01Request)
(setf (get plumbing_srv::demo01 :response) plumbing_srv::demo01Response)

(defmethod plumbing_srv::demo01Request
  (:response () (instance plumbing_srv::demo01Response :init)))

(setf (get plumbing_srv::demo01Request :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_srv::demo01Request :datatype-) "plumbing_srv/demo01Request")
(setf (get plumbing_srv::demo01Request :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")

(setf (get plumbing_srv::demo01Response :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_srv::demo01Response :datatype-) "plumbing_srv/demo01Response")
(setf (get plumbing_srv::demo01Response :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")



(provide :plumbing_srv/demo01 "4781436a0c2affec8025955a6041e481")


