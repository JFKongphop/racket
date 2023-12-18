#lang racket

; WEEK 1 DAY 2

; EXERCISE 1 | Rectangle Area
(define (rec_area w l) (* w l))
(rec_area 5 6)

; EXERCISE 2 | Square Area
(define (squ_area w) (* w w))
(squ_area 5)

; EXERCISE 3 | Circle Area
(define (cir_area r) (* pi (* r r)))
(cir_area 7)

; EXERCISE 4 | Shadow Area
(define (sha_area w) (- (* pi (* (/ w 2) (/ w 2))) (/ (* w w) 2)))
(sha_area 10)