;; Define variables (only if it's hasn't been defined)
(defvar *number* 0)
(format t "Number is ~d~%" *number*)
(defvar *number* 10)
(format t "Number is ~d~%" *number*)

;; Set the value of a variable (even if it has already been defined)
(defparameter *number* 1)
(format t "Number is ~d~%" *number*)

;; Defining a variable with setf or setq in the global lexical scope is undefined.
;; Some implementations will create a dynamically scoped variable for you, some will not.
;; You may see diagnostic messages when you do it for the first time.
(setf *number* 2)
(format t "Number is ~d~%" *number*)

(format t "Number plus itself is ~d~%" (+ *number* *number*))