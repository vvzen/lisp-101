;;;; Hello world example

(print "What's your name?")

;; An evil global var
;; LISP people use the * to denote it's global
(defvar *name* (read))

;; Sets the print-case variable to the :capitalize symbol
;; This variable drives how things are printed to the stdout
;; to be more precise, read: http://www.ai.mit.edu/projects/iiip/doc/CommonLISP/HyperSpec/Body/var_stprint-casest.html
(setq *print-case* :capitalize)

;; ~% stands for newline (the usual \n)
;; ~a is used to format inside of a string using a variable
;; ~10a will add ten spaces after before the variable
;; ~10@a will add ten spaces before the variable
(defun hello-you (*name*)
    (format t "Hello ~a! ~%" *name*))

(hello-you *name*)

;; Addition
(+ 3 4)

;; Compute 6 - 2 and then add 5
(+ 5 (- 6 2))