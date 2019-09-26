;; Auto-generated. Do not edit!


(when (boundp 'game_engine::ShootAndTurbo)
  (if (not (find-package "GAME_ENGINE"))
    (make-package "GAME_ENGINE"))
  (shadow 'ShootAndTurbo (find-package "GAME_ENGINE")))
(unless (find-package "GAME_ENGINE::SHOOTANDTURBO")
  (make-package "GAME_ENGINE::SHOOTANDTURBO"))

(in-package "ROS")
;;//! \htmlinclude ShootAndTurbo.msg.html


(defclass game_engine::ShootAndTurbo
  :super ros::object
  :slots (_shoot _turbo ))

(defmethod game_engine::ShootAndTurbo
  (:init
   (&key
    ((:shoot __shoot) nil)
    ((:turbo __turbo) nil)
    )
   (send-super :init)
   (setq _shoot __shoot)
   (setq _turbo __turbo)
   self)
  (:shoot
   (&optional __shoot)
   (if __shoot (setq _shoot __shoot)) _shoot)
  (:turbo
   (&optional __turbo)
   (if __turbo (setq _turbo __turbo)) _turbo)
  (:serialization-length
   ()
   (+
    ;; bool _shoot
    1
    ;; bool _turbo
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _shoot
       (if _shoot (write-byte -1 s) (write-byte 0 s))
     ;; bool _turbo
       (if _turbo (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _shoot
     (setq _shoot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _turbo
     (setq _turbo (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get game_engine::ShootAndTurbo :md5sum-) "6396303e74b55d0dd0145a9a5dfed363")
(setf (get game_engine::ShootAndTurbo :datatype-) "game_engine/ShootAndTurbo")
(setf (get game_engine::ShootAndTurbo :definition-)
      "bool shoot
bool turbo

")



(provide :game_engine/ShootAndTurbo "6396303e74b55d0dd0145a9a5dfed363")


