;;;; scratchpad-test.asd

(asdf:defsystem :scratchpad-test
  :description "Test suite for scratchpad"
  :serial t
  :depends-on (:lisp-unit :scratchpad)
  :components ((:file "scratchpad-test")))
