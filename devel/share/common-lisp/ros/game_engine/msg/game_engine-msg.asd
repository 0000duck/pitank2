
(cl:in-package :asdf)

(defsystem "game_engine-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotDescription" :depends-on ("_package_RobotDescription"))
    (:file "_package_RobotDescription" :depends-on ("_package"))
    (:file "RobotDescriptionArray" :depends-on ("_package_RobotDescriptionArray"))
    (:file "_package_RobotDescriptionArray" :depends-on ("_package"))
    (:file "ShootAndTurbo" :depends-on ("_package_ShootAndTurbo"))
    (:file "_package_ShootAndTurbo" :depends-on ("_package"))
    (:file "UIState" :depends-on ("_package_UIState"))
    (:file "_package_UIState" :depends-on ("_package"))
    (:file "WallInfo" :depends-on ("_package_WallInfo"))
    (:file "_package_WallInfo" :depends-on ("_package"))
    (:file "WallInfoArray" :depends-on ("_package_WallInfoArray"))
    (:file "_package_WallInfoArray" :depends-on ("_package"))
  ))