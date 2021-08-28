(loop for x from 1 to 10
    do (format t "~d~%" x))

(terpri)

(setq x 11)

;; Check for a condition while looping
(loop
    (format t "~d ~%" x)
    (setq x (+ x 1))
    (when (> x 20)
        (return x)))

(dotimes (y 12)
    (print y))