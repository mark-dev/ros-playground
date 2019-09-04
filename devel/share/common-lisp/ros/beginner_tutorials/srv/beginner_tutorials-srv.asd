
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ROSDummyService" :depends-on ("_package_ROSDummyService"))
    (:file "_package_ROSDummyService" :depends-on ("_package"))
  ))