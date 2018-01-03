(defpackage :scratchpad-test
  (:use :cl :lisp-unit :scratchpad))

(in-package :scratchpad-test)

(define-test test-add2
  (assert-equal 5 (add2 3)))

;; run tests and show failures and errors
(let ((*print-failures* t)
      (*print-errors* t))
  (run-tests))
