#lang racket
(require 2htdp/image)

; EXERCISE 1

(define (create-rectangle width height color) (rectangle width height "solid" color))

(define
  (create-m-cruve
    x1 y1 angle1 pull1
    x2 y2 angle2 pull2
  )
  (
   add-curve
    (create-rectangle 100 100 "transparent")
    x1 y1 angle1 pull1
    x2 y2 angle2 pull2
    "yellow"
  )
)

(define (change-to-x-axis object) (flip-horizontal object))

(define (change-to-y-axis object) (flip-vertical object))

(define (beside-m left-m right-m) (beside left-m right-m))

(define (create-white-text context size) (text context size "white"))

(define (obove-object top bottom) (above top bottom))

(define (overlay-object top bottom) (overlay top bottom+))

(define (first-half-m) (create-m-cruve 30 0 0 1/5 50 90 0 1/5))
 
(define (half-m) (create-m-cruve 0 10 0 1/5 50 90 0 1/5))

(define (second-half-m m) (change-to-x-axis m))

(define (overlay-m) (overlay-object (first-half-m) (second-half-m (half-m))))

(define (m-side) (change-to-y-axis (overlay-m)))

(define (Mc-yellow) (beside (m-side) (flip-horizontal (m-side))))

(define (mc-text) (create-white-text "McDonald's" 28))

(define (mc-logo) (obove-object (Mc-yellow) (mc-text)))

(define (mc-background) (create-rectangle 160 140 "red"))

(define (the-mc-donalds) (overlay-object (mc-logo) (mc-background)))

(the-mc-donalds)


; EXERCISE 2

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