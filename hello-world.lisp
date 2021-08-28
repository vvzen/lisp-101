;;;; Hello world example

;; An evil global var
(print "What's your name?")

(defvar *name* (read))

;; ~% stands for newline \n
;; ~a is used to format inside of a string using a variable
;; ~10a will add ten spaces after before the variable
;; ~10@a will add ten spaces before the variable
(defun hello-you (*name*)
    (format t "Hello ~a! ~%" *name*))

(setq *print-case* :capitalize)

(hello-you *name*)
(+ 3 4)

(+ 5 (- 6 2))

(defvar number 0)
(setf *number 1)
(print "~%")
(print number)

(format t "Number with commas ~:d ~%" 1000000)
(format t "Pi to 5 characters ~5f ~%" 3.141593)
(format t "Pi to 5 decimals ~,5f~%" 3.141593)
(format t "10 Percent ~,,2f ~%" .10)
(format t "10 Dollars ~$ ~%" 10)

;; Some builtin functions
(format t "(eq 'dog 'dog) = ~d ~%" (eq 'dog 'dog))
(format t "(floor 5.5) = ~d ~%" (floor 5.5))
(format t "(ceiling 5.5) = ~d ~%" (ceiling 5.5))
(format t "(oddp 15) = ~d ~%" (oddp 15) )
(format t "(evenp 15) ; = ~d ~%" (evenp 15) )
(format t "(max 5 10)  = ~d ~%" (max 5 10))
(format t "(min 5 10) = ~d ~%" (min 5 10))
(format t "(log 1000 10) = ~d ~%" (log 1000 10))
(format t "(expt 4 2) = ~d ~%" (expt 4 2))
(format t "(sqrt 81) = ~d ~%" (sqrt 81) )
(format t "(numberp 2) = ~d ~%" (numberp 2))
(format t "(null nil) = ~d ~%" (null nil) )