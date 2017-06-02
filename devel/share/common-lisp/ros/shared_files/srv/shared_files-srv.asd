
(cl:in-package :asdf)

(defsystem "shared_files-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ReadI2C" :depends-on ("_package_ReadI2C"))
    (:file "_package_ReadI2C" :depends-on ("_package"))
    (:file "ReadI2CRegister" :depends-on ("_package_ReadI2CRegister"))
    (:file "_package_ReadI2CRegister" :depends-on ("_package"))
  ))