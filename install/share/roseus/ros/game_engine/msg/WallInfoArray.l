;; Auto-generated. Do not edit!


(when (boundp 'game_engine::WallInfoArray)
  (if (not (find-package "GAME_ENGINE"))
    (make-package "GAME_ENGINE"))
  (shadow 'WallInfoArray (find-package "GAME_ENGINE")))
(unless (find-package "GAME_ENGINE::WALLINFOARRAY")
  (make-package "GAME_ENGINE::WALLINFOARRAY"))

(in-package "ROS")
;;//! \htmlinclude WallInfoArray.msg.html


(defclass game_engine::WallInfoArray
  :super ros::object
  :slots (_wall ))

(defmethod game_engine::WallInfoArray
  (:init
   (&key
    ((:wall __wall) (let (r) (dotimes (i 0) (push (instance game_engine::WallInfo :init) r)) r))
    )
   (send-super :init)
   (setq _wall __wall)
   self)
  (:wall
   (&rest __wall)
   (if (keywordp (car __wall))
       (send* _wall __wall)
     (progn
       (if __wall (setq _wall (car __wall)))
       _wall)))
  (:serialization-length
   ()
   (+
    ;; game_engine/WallInfo[] _wall
    (apply #'+ (send-all _wall :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; game_engine/WallInfo[] _wall
     (write-long (length _wall) s)
     (dolist (elem _wall)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; game_engine/WallInfo[] _wall
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wall (let (r) (dotimes (i n) (push (instance game_engine::WallInfo :init) r)) r))
     (dolist (elem- _wall)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get game_engine::WallInfoArray :md5sum-) "00bbbcfc52895902500308e3cbae4262")
(setf (get game_engine::WallInfoArray :datatype-) "game_engine/WallInfoArray")
(setf (get game_engine::WallInfoArray :definition-)
      "WallInfo[] wall

================================================================================
MSG: game_engine/WallInfo
int8 id
int8 cluster
int16 x1
int16 x2
int16 y1
int16 y2
float64 xc
float64 yc
int8 life
bool vertical

")



(provide :game_engine/WallInfoArray "00bbbcfc52895902500308e3cbae4262")


