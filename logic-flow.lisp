;; nil stands for false or empty list
;; For clarity, people use 'nil' to refer to 'false' and () to refer to an empty list
;: https://www.gnu.org/software/emacs/manual/html_node/eintr/nil-explained.html
;; (eq x y) is true if and only if x and y are the same identical object.
;; see https://stackoverflow.com/questions/547436/whats-the-difference-between-eq-eql-equal-and-equalp-in-common-lisp

(defparameter *name* 'Derek)

;; Check equality of a symbol
(format t "(eq *name* 'Derek) = ~d ~%" (eq *name* 'Derek))

(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%"
    (equal (list 1 2 3) (list 1 2 3)))


;; Case insensitive comparison
(format t "equalp 1.0 1 = ~d ~%" (equalp 1.0 1))
(format t "equalp \"Derek\" \"derek\" = ~d ~%" (equalp "Derek" "derek"))

;;; If statements
(print "What's your age?")
(defvar *age* (read))

(if (>= *age* 18)
    (format t "You can vote~%")
    (format t "You can't vote~%"))

;; Same as above, but expressed in the other direction
;; (if (not (< *age* 18))
;;     (format t "You can vote~%")
;;     (format t "You can't vote~%"))

(if (and (>= *age* 20) (<= *age* 29))
    (format t "You're still a youngster!~%")
    (format t "You're getting better and better..~%"))

(if (or (>= *age* 20) (<= *age* 29))
    (format t "You're still a youngster!~%")
    (format t "You're getting better and better..~%"))

;; Perform more multiple things inside the if/else branches
(defvar *num* 2)
(defvar *num2* 3)

(format t "Num is ~d ~%" *num*)
(if (= *num* 2)
    (progn
        (setf *num* (* *num* 2))
        (setf *num2* (* *num2* 3)))
    (progn
        (format t "Num is not 2~%")))

(format t "Num is ~d ~%" *num*)
(format t "(= num 2) = ~d ~%" (= *num* 2))

;;; Switch/case

(defun get-school (age)
    (case age
        (5 "Kindergarten")
        (6 "First Grade")
        (otherwise "middle school")))

(format t "(get-school ~d) = ~d ~%" *age* (get-school *age*))

;; Prints a newline
(terpri)

;; Use 'when' if you don't need to handle the falsy case
(when (= *age* 18)
    (format t "Resetting age to 18~%")
    (setf *num* 18)
    (format t "Go to college, you're ~d ~%" *num*))

;; Conceptually same as above, but the cover the opposite scenario
(unless (= *age* 18)
    (format t "Resetting age to 18~%")
    (setf *num* 18)
    (format t "Go to college, you're ~d ~%" *num*))


(defvar *college-ready* nil)

(cond ( (>= *age* 18)
        (setf *college-ready* 'yes)
        (format t "Ready for college! ~%" *college-ready*))
      ( (= *age* 18)
        (setf *college-ready* 'no)
        (format "Not ready for college.. ~%"))
        ; None of the above
      (t
        (setf *college-ready* 'no)
        (format t "Not sure what to do.. ~%")))
