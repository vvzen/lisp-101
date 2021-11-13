;; (setq *print-case* :downcase)

;; Define a variable to store a list
;; Note that the ' character is used to block the evaluation of an expression, instead
;; returning it literally. If we didn't use it, it (superman batman flash) would have been
;; evaluated by looking for a function named 'batman'
(setf mylist '(superman batman flash))

;; Append two lists together
(append '(Pat Kim) '(Robin Sandy))
;; Same as:
(append '(Pat Kim) (list 'Robin 'Sandy))

;; Get the number of elements in a list
(length '(My Elements Here))

;; Get the various elements in a list
(first '(One Two Three))
(second '(One Two Three))
(third '(One Two Three))
;; Perversely, 'last' returns a list of composed of the last element..
(last '(One Two Three))
;; .. so you need to use 'first' on it to get the actual element
(first (last '(One Two Three)))
;; The reasoning, is that in ANSI Common LISP, 'last' can return the
;; 'n' last elements. So that's a little bit less perverse
(last '(One Two Three) 2)

;; In Common LISP, list indexes start at 0
(nth 0 '(One Two Three))
;; Everything except the first element
(rest '(One Two Three))

;; 'car' and 'cdr' are the old ways for 'first' and 'rest', respectively.
;; CAR stands for 'Content of the Address Register' and CDR for 'Content of the decrement register'
;; the instructions that were used in the first implementation of Lisp on the IBM 704!

;; cons is a function that stands for 'Construct'.
;; It takes as arguments an element an a list,
;; and constructs a new list whose first is the element and rest is the original list
(cons 'superman 'batman)
(defvar *superheroes* (cons 'spiderman '(superman batman dr-strange)))

(format t "All super heroes: ~d~%" *superheroes*)
;; Use the car to get the first item
(format t "First super hero: ~d~%" (car *superheroes*))
;; Use the cdr to get everything but the first item
(format t "All super heroes except the first one: ~d~%" (cdr *superheroes*))

;; List traversal can be achieved with a combination of a and d
(format t "Second item: ~d~%" (car (cdr *superheroes*)))
(format t "Second item: ~d~%" (cadr *superheroes*))
(format t "Second to last item: ~d~%" (caddr *superheroes*))

;; Check if an object is a list
(format t "Is ~d a list? ~d~%" '(batman superman) (listp '(batman superman)))

;; Check if a list contains an element
(format t "Is ~d in list? ~d~%" ' 3 (if (member 3 '(1 2 4)) 't nil))

;; Add an item to a list
(format t "~d~%" (append '(just) '(some) '(words together)))

;; Prepend an item to a list
(defvar *nums* '(2 4 6))
(push 1 *nums*)
(format t "Nums: ~d~%" *nums*)

;; Another approach for getting items in lists
(format t "The 3rd number in the ~d is ~a~%" *nums* (nth 2 *nums*))

;; Key values data structures
(defvar *superman* (list :name "Superman" :secret-id "Clark Kent"))
(defvar *hero-list* nil)

(push *superman* *hero-list*)

;; Iterate through a list
(dolist (hero *hero-list*)
    ; Get the data in the data structure
    ; ~{ and ~} are used to retrieve all of the key/values in the structure
    (format t "Current hero: ~{~a : ~a ~}~%" hero))
