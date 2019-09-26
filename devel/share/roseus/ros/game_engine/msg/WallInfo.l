;; Auto-generated. Do not edit!


(when (boundp 'game_engine::WallInfo)
  (if (not (find-package "GAME_ENGINE"))
    (make-package "GAME_ENGINE"))
  (shadow 'WallInfo (find-package "GAME_ENGINE")))
(unless (find-package "GAME_ENGINE::WALLINFO")
  (make-package "GAME_ENGINE::WALLINFO"))

(in-package "ROS")
;;//! \htmlinclude WallInfo.msg.html


(defclass game_engine::WallInfo
  :super ros::object
  :slots (_id _cluster _x1 _x2 _y1 _y2 _xc _yc _life _vertical ))

(defmethod game_engine::WallInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:cluster __cluster) 0)
    ((:x1 __x1) 0)
    ((:x2 __x2) 0)
    ((:y1 __y1) 0)
    ((:y2 __y2) 0)
    ((:xc __xc) 0.0)
    ((:yc __yc) 0.0)
    ((:life __life) 0)
    ((:vertical __vertical) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _cluster (round __cluster))
   (setq _x1 (round __x1))
   (setq _x2 (round __x2))
   (setq _y1 (round __y1))
   (setq _y2 (round __y2))
   (setq _xc (float __xc))
   (setq _yc (float __yc))
   (setq _life (round __life))
   (setq _vertical __vertical)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:cluster
   (&optional __cluster)
   (if __cluster (setq _cluster __cluster)) _cluster)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:xc
   (&optional __xc)
   (if __xc (setq _xc __xc)) _xc)
  (:yc
   (&optional __yc)
   (if __yc (setq _yc __yc)) _yc)
  (:life
   (&optional __life)
   (if __life (setq _life __life)) _life)
  (:vertical
   (&optional __vertical)
   (if __vertical (setq _vertical __vertical)) _vertical)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; int8 _cluster
    1
    ;; int16 _x1
    2
    ;; int16 _x2
    2
    ;; int16 _y1
    2
    ;; int16 _y2
    2
    ;; float64 _xc
    8
    ;; float64 _yc
    8
    ;; int8 _life
    1
    ;; bool _vertical
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; int8 _cluster
       (write-byte _cluster s)
     ;; int16 _x1
       (write-word _x1 s)
     ;; int16 _x2
       (write-word _x2 s)
     ;; int16 _y1
       (write-word _y1 s)
     ;; int16 _y2
       (write-word _y2 s)
     ;; float64 _xc
       (sys::poke _xc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yc
       (sys::poke _yc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _life
       (write-byte _life s)
     ;; bool _vertical
       (if _vertical (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int8 _cluster
     (setq _cluster (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cluster 127) (setq _cluster (- _cluster 256)))
   ;; int16 _x1
     (setq _x1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _x2
     (setq _x2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y1
     (setq _y1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y2
     (setq _y2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _xc
     (setq _xc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yc
     (setq _yc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _life
     (setq _life (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _life 127) (setq _life (- _life 256)))
   ;; bool _vertical
     (setq _vertical (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get game_engine::WallInfo :md5sum-) "482f13cf5512672ba58ca13deaa6419c")
(setf (get game_engine::WallInfo :datatype-) "game_engine/WallInfo")
(setf (get game_engine::WallInfo :definition-)
      "int8 id
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



(provide :game_engine/WallInfo "482f13cf5512672ba58ca13deaa6419c")


