
(cl:in-package :asdf)

(defsystem "plumbing_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ADDINTS" :depends-on ("_package_ADDINTS"))
    (:file "_package_ADDINTS" :depends-on ("_package"))
  ))