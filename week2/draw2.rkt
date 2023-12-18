#lang racket

(require 2htdp/image)


(define (overlay-object top bottom) (overlay top bottom))

(define (create-red-circle radius) (circle radius "solid" "red"))

(define (create-green-square width) (rectangle width width "solid" "green"))

(define (rotate-45-deg object) (rotate 45 object))


(define (outer-square-layer) (create-green-square 100))
(define (outer-circle-layer) (create-red-circle 50))
(define (outer-layer) (overlay-object (outer-circle-layer) (outer-square-layer)))


(define (rotate-green-square) (rotate-45-deg (create-green-square 70)))
(define (middle-circle-layer) (create-red-circle 35))
(define (middle-layer) (overlay-object (middle-circle-layer) (rotate-green-square)))


(define (inner-square-layer) (create-green-square 50))
(define (inner-circle-layer) (create-red-circle 25))
(define (inner-layer) (overlay-object (inner-circle-layer) (inner-square-layer)))


(define (center-layer) (create-green-square 35))
(define (rotate-center-layer) (rotate-45-deg (center-layer)))


(define (overlay-outer-middle-layer) (overlay-object (middle-layer) (outer-layer)))

(define (overlay-out-mid-inner-layer) (overlay-object (inner-layer) (overlay-outer-middle-layer)))

(define (overlay-all-layer) (overlay-object (rotate-center-layer) (overlay-out-mid-inner-layer)))


(overlay-all-layer)
