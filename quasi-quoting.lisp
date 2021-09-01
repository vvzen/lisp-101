(defparameter *heroes-sizes*
    '(
        (Superman (6 ft 3 in) (230 lbs))
        (Spiderman (6 ft 0 in) (190 lbs))
        (Batman (6 ft 2 in) (210 lbs))
    )
)
(defun get-hero-data (size)
    (format t "~a ~%"
        ; The ` let us move in data mode
        `(, (caar size) is , (cadar size) and , (cddar size))
    ))

(get-hero-data *heroes-sizes*)


(format t "Which one is a number? ~a ~%" (mapcar #'numberp '(1 2 3 f g)))