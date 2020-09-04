#lang racket

; Función armonica: Calcula la suma de la serie armónica de los primeros 'n' términos
(define (armonica a)
  (if (= a 1)
      1
      (+ (/ 1.0 a) (armonica (- a 1.0)))
      )
  )

; Función fibot: Calcula el 'n-ésimo' elemento de la serie fibonacci. Se utiliza recursión terminal o tail recursion
; Demo:
; Para n = 3
; i p c
; 3 1 0
; 2 1 1
; 1 2 1
; 0 3 2 <--
; // Output: 2
(define (fibotAux i p c)
  (if (= i 0)
      c
      (fibotAux (- i 1) (+ p c) p)
      )
  )

(define (fibot n)
  (fibotAux n 1 0)
  )