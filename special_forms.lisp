;; defun - define a function
(defun hello ()
    (format  t "Hello World!" (force-output)))

;; defparameter - define special variable
;; Defines a parametere, a variable that doesn't change over the course of a computation
;; but that might change when we think of new things to add
(defparameter *the-answer* 42)

;; setf - set the value of a variable
(setf y 1)

;; let - bind local variable
(let y 1)

;; case - choose one of several alternatives
(case (+ 1 2)
    (0 "1+2 is 0")
    (1 "1+2 is 1")
    ((2 3) "1+2 is 2 or 3"))

;; if - do one thing or another, depending on a test
(if (> 0 1)
    (format t "0 is bigger than 1")
    (format t "0 is less or equal than 1"))

;; function(#') - refer to a function
#'(hello)
;; same as:
(function hello)

;; quote(') - introduce constant data.
'(something)
;; same as:
(quote something)