;;;; scratchpad.lisp

(in-package :scratchpad)

;;; Some quick examples from Land of Lisp
(defparameter *big* 100)
(defparameter *small* 1)

(defun reset ()
  (setf *big* 100)
  (setf *small* 1)
  nil)

(defun start ()
  (current-guess))

(defun current-guess ()
  (ash (+ *big* *small*) -1))

(defun hint (base f)
  "Takes a base symbol and a modification function to be applied."
  (set base (funcall f (current-guess)))
  (current-guess))

(defun smaller ()
  (hint '*big* '1-))

(defun bigger ()
  (hint '*small* '1+))


;; TODO play with the debugger ... see https://vimeo.com/77004324
(defun add2 (a)
  (+ 2 a))
