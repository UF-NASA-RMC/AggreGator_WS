
(cl:in-package :asdf)

(defsystem "shared_files-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WriteI2CRegister" :depends-on ("_package_WriteI2CRegister"))
    (:file "_package_WriteI2CRegister" :depends-on ("_package"))
    (:file "Ladder" :depends-on ("_package_Ladder"))
    (:file "_package_Ladder" :depends-on ("_package"))
    (:file "Bucket" :depends-on ("_package_Bucket"))
    (:file "_package_Bucket" :depends-on ("_package"))
    (:file "WriteI2C" :depends-on ("_package_WriteI2C"))
    (:file "_package_WriteI2C" :depends-on ("_package"))
    (:file "Angle" :depends-on ("_package_Angle"))
    (:file "_package_Angle" :depends-on ("_package"))
    (:file "Drive" :depends-on ("_package_Drive"))
    (:file "_package_Drive" :depends-on ("_package"))
  ))