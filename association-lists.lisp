(defparameter *heroes*
    '(
        (Superman (Clark Kent))
        ((Spiderman (Peter Parker))
        ((Batman (Bruce Wayne)))
    )))

;; Remember that lisp is case insensitive
;; With assoc we can gather a specific 'key' of a structure
(format t "Superman data: ~a ~%" (assoc ('superman *heroes*)))