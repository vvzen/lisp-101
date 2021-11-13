(defun hello()
    (format t "Hello")
    (terpri))

(hello)

;; By default, the last expression is what it's returned
(defun get-avg(num1 num2)
    (* (/ num1 num2) 0.5))

(format t "The average of 10 and 1 is ~s ~%" (get-avg 10 1))

;; You can be more explict and use the return-from symbol
;; This works
(defun difference (num1 num2)
    (return-from difference
        (- num1 num2)))

(format t "The difference of 2 and 1 is ~s ~%" (difference 2 1))

;; Optional parameters
;; y and z are optional, and set to NIL if not given
(defun print-list (w x &optional y z)
    (format t "List = ~a ~%" (list w x y z)))

(print-list 1 2)
(print-list 1 2 3)
(print-list 1 2 3 4)


(defvar *total* 0)
;; The &rest symbol let us pass an arbitrary number of arguments
(defun sum (&rest nums)
    (dolist (num nums)
        (setf *total* (+ *total* num))))

(sum 1 1)
(format t "1+1 = ~a ~%" *total*)

;; Named arguments are defined with the &key symbol
(defun print-list (&optional &key x y z)
    (format t "List ~a ~%" (list x y z)))

(print-list :x 1 :y 1 :z 2)

;; FLET is special form for local function binding.
;; Bindings are not recursive and cannot refer to each other
(flet (
    ;; function name
    (double-it (num)
    ;; function body
    (* num 2))
    ;; function name
    (triple-it (num)
    ;; function body
    (* num 3)))
    ;; Only things here will be able to access these functions
    (format t "The double of 2 is ~d ~%" (double-it 2))
    (format t "The triple of 2 is ~d ~%" (triple-it 2)))

;; The following:
;; (format t "The double of 2 is ~d ~%" (double-it 2))
;; will result in:
;; *** - EVAL: undefined function DOUBLE-IT

;; "labels is equivalent to flet except that the scope of the defined function
;; names for labels encompasses the function definitions themselves as well as the body"
;; extract from http://www.lispworks.com/documentation/lw71/CLHS/Body/s_flet_.htm
;; Honestly I have no idea what the above^ means.

(labels (
    (double-it (num)
        (* num 2))
    (triple-it (num)
        (* num 3)))
    (format t "The double of 2 is ~d ~%" (double-it 2))
    (format t "The triple of 2 is ~d ~%" (triple-it 2)))

;; Return multiple values from a function
(defun squares (num)
    (values (expt num 2) (expt num 3)))

;; Then bind this values to arbitrary names using 'multiple-value-bind' function
(multiple-value-bind (a b) (squares 2)
    (format t "2^2 = ~a 2^3 = ~a ~%" a b))


;; Higher order functions
(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))


(defun multiples (mult-func max-num)
    ;; mult-func is the function that we'll call
    ;; max-num is just another argument, let's say a number
    ;; that we use to drive the number of iterations
    (dotimes (x max-num)
        ; funcall let us call an arbitrary function object we have
        (format t "~d : ~d ~%" x (funcall mult-func x))))

(multiples #'times-3 10)
(multiples #'times-4 3)

;; Another function with a documentation line
(defun last-name (name)
    "Select the last name from a name represented as a list."
    (first (last name)))

;; A data-structure with lists of lists
(setf names '((Søren Kierkegaard)
              (Ludwig Wittgenstein)
              (Jacques Derrida)))

;; mapcar - apply an arbitrary function to a list
(mapcar #'last-name names)

;; let's make a recursive function that returns the first name of a list
(defparameter *titles*
    '(Mr Miss Misses Mister Sir Madam Dr Admiral Major General)
    "A list of titles that can appear at the start of a name")

(defun first-name (name)
    "Select the first name from a name represented as a list"
    (if (member (first name) *titles*)
        (first-name (rest name))
        (first name)))