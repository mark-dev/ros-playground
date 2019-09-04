;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::ROSDummyService)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'ROSDummyService (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ROSDUMMYSERVICE")
  (make-package "BEGINNER_TUTORIALS::ROSDUMMYSERVICE"))
(unless (find-package "BEGINNER_TUTORIALS::ROSDUMMYSERVICEREQUEST")
  (make-package "BEGINNER_TUTORIALS::ROSDUMMYSERVICEREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::ROSDUMMYSERVICERESPONSE")
  (make-package "BEGINNER_TUTORIALS::ROSDUMMYSERVICERESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::ROSDummyServiceRequest
  :super ros::object
  :slots (_strIn ))

(defmethod beginner_tutorials::ROSDummyServiceRequest
  (:init
   (&key
    ((:strIn __strIn) "")
    )
   (send-super :init)
   (setq _strIn (string __strIn))
   self)
  (:strIn
   (&optional __strIn)
   (if __strIn (setq _strIn __strIn)) _strIn)
  (:serialization-length
   ()
   (+
    ;; string _strIn
    4 (length _strIn)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _strIn
       (write-long (length _strIn) s) (princ _strIn s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _strIn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strIn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::ROSDummyServiceResponse
  :super ros::object
  :slots (_strOut ))

(defmethod beginner_tutorials::ROSDummyServiceResponse
  (:init
   (&key
    ((:strOut __strOut) "")
    )
   (send-super :init)
   (setq _strOut (string __strOut))
   self)
  (:strOut
   (&optional __strOut)
   (if __strOut (setq _strOut __strOut)) _strOut)
  (:serialization-length
   ()
   (+
    ;; string _strOut
    4 (length _strOut)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _strOut
       (write-long (length _strOut) s) (princ _strOut s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _strOut
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strOut (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::ROSDummyService
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::ROSDummyService :md5sum-) "750b33477ca2c16afaec99713dc8cb06")
(setf (get beginner_tutorials::ROSDummyService :datatype-) "beginner_tutorials/ROSDummyService")
(setf (get beginner_tutorials::ROSDummyService :request) beginner_tutorials::ROSDummyServiceRequest)
(setf (get beginner_tutorials::ROSDummyService :response) beginner_tutorials::ROSDummyServiceResponse)

(defmethod beginner_tutorials::ROSDummyServiceRequest
  (:response () (instance beginner_tutorials::ROSDummyServiceResponse :init)))

(setf (get beginner_tutorials::ROSDummyServiceRequest :md5sum-) "750b33477ca2c16afaec99713dc8cb06")
(setf (get beginner_tutorials::ROSDummyServiceRequest :datatype-) "beginner_tutorials/ROSDummyServiceRequest")
(setf (get beginner_tutorials::ROSDummyServiceRequest :definition-)
      "string strIn
---
string strOut
")

(setf (get beginner_tutorials::ROSDummyServiceResponse :md5sum-) "750b33477ca2c16afaec99713dc8cb06")
(setf (get beginner_tutorials::ROSDummyServiceResponse :datatype-) "beginner_tutorials/ROSDummyServiceResponse")
(setf (get beginner_tutorials::ROSDummyServiceResponse :definition-)
      "string strIn
---
string strOut
")



(provide :beginner_tutorials/ROSDummyService "750b33477ca2c16afaec99713dc8cb06")


