;;;; See also: https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node153.html

;;; Note: I'm writing the parenthesis out the 'non elegant' way for clarity/ease of reading

;; Define an association list (a-list)
;; It's a list of pairs. Each pair is an association.
;; The 'car' of pair is called the key, and the 'cdr' is called the datum
;; Not to be confused with hash-maps. The cost of lookup in a-list is linear, not constant.
(defparameter *heroes*
    '(
        (Superman (Clark Kent))
        (Spiderman (Peter Parker))
        (Batman (Bruce Wayne))
    ))

;; With assoc we can gather a specific 'key' of a structure
;; Remember that lisp is case insensitive
(format t "Superman data: ~a ~%" (assoc 'superman *heroes*))

;; Extract specific parts
(format t "Batman is: ~a ~%" (cadr (assoc 'batman *heroes*)))
(format t "Batman first name is: ~a ~%" (caar (cdr (assoc 'batman *heroes*))))

;; Other examples of data
;; Uff, I'm following a YT demo that doesn't use metric..
(defparameter *heroes-sizes*
    '(
        (Superman (6 ft 3 in) (230 lbs))
        (Spiderman (6 ft 0 in) (190 lbs))
        (Batman (6 ft 2 in) (210 lbs))
    )
)

(format t "Spiderman height is: ~a ~%" (cadr (assoc 'spiderman *heroes-sizes*)))
