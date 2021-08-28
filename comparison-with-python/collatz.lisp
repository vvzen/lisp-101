(defun collatz(n)
    (cond
        ( (= n 1) 1)
        ( (evenp n) (collatz (/ n 2)))
        (t (collatz (+ 1 (* 3 n))))))

(format t "Type a number: ")
(defvar *num* (round (read)))
(format t "Collatz of ~d is ~d ~%" *num* (collatz *num*))