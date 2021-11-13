;; defun - define a function
(defun hello ()
    (format  t "Hello World!" (force-output)))

;; defparameter - define special variable
;; It sets the value of a variable (even if it has already been defined)
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

;; quote(') - introduce constant data
'(something)