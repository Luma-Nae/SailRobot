
(cl:in-package :asdf)

(defsystem "sailrobot_custom_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Ais" :depends-on ("_package_Ais"))
    (:file "_package_Ais" :depends-on ("_package"))
    (:file "AisMultiArray" :depends-on ("_package_AisMultiArray"))
    (:file "_package_AisMultiArray" :depends-on ("_package"))
  ))