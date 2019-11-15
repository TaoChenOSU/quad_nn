
(cl:in-package :asdf)

(defsystem "crazyflie_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FullState" :depends-on ("_package_FullState"))
    (:file "_package_FullState" :depends-on ("_package"))
    (:file "GenericLogData" :depends-on ("_package_GenericLogData"))
    (:file "_package_GenericLogData" :depends-on ("_package"))
    (:file "Hover" :depends-on ("_package_Hover"))
    (:file "_package_Hover" :depends-on ("_package"))
    (:file "LogBlock" :depends-on ("_package_LogBlock"))
    (:file "_package_LogBlock" :depends-on ("_package"))
    (:file "Position" :depends-on ("_package_Position"))
    (:file "_package_Position" :depends-on ("_package"))
    (:file "TrajectoryPolynomialPiece" :depends-on ("_package_TrajectoryPolynomialPiece"))
    (:file "_package_TrajectoryPolynomialPiece" :depends-on ("_package"))
    (:file "crtpPacket" :depends-on ("_package_crtpPacket"))
    (:file "_package_crtpPacket" :depends-on ("_package"))
  ))