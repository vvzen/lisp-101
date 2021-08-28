;; (setq *print-case* :downcase)

;; Define a list
(list 'superman 'batman 'flash)

;; Constructs a compound data object with 2 components, the car and cdr
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
