;;;; NOL.lisp

(in-package #:NOL)

(defparameter *canvas-w* 500)
(defparameter *canvas-h* 500)

;;========== View Port
(gamekit:defgame RandWalker () ()
		 (:viewport-width *canvas-w*)
		 (:viewport-height *canvas-h*)
		 (:viewport-title "Nature of Lisp: Random Walker")
		 )

;;========== Elements

(defparameter *walker* (make-instance 'Walker))
(setf (slot-value *walker* 'x) (/ *canvas-w* 2))
(setf (slot-value *walker* 'y) (/ *canvas-h* 2))


(defun choice ()
  (let ((i (random 4)))
    (if (eq i 0)
	 (setf (slot-value *walker* 'x) (+ 1 (slot-value *walker* 'x)))
	(if (eq i 1)
	     (setf (slot-value *walker* 'y) (+ 1 (slot-value *walker* 'y)))
	    (if (eq i 2)
		 (setf (slot-value *walker* 'x) (- 1 (slot-value *walker* 'x)))
		 (setf (slot-value *walker* 'y) (- 1 (slot-value *walker* 'y)))))
	)
    ))

;;========== Drawing
(defmethod gamekit:draw ((this RandWalker))
  (loop for x :below 10
        :do (choice) 
       :do (gamekit:draw-rect (gamekit:vec2 (slot-value *walker* 'x) (slot-value *walker* 'y)) 20 20
		       :fill-paint (gamekit:vec4 100 0 200 1)
		       )
       )
   ;; (gamekit:draw-rect (gamekit:vec2 (slot-value *walker* 'x) (slot-value *walker* 'y)) 20 20
   ;; 		       :fill-paint (gamekit:vec4 100 0 200 1)
   ;; 		       )
  )
;;========== Run
(gamekit:start 'RandWalker)
