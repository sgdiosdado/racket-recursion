#lang racket

; Función armonica: Calcula la suma de la serie armónica de los primeros 'n' términos
(define (armonica a)
  (if (= a 1)
      1
      (+ (/ 1.0 a) (armonica (- a 1.0)))
      )
  )

; Funcrión bajasube: Despliega los numeros de N a 1 y de 1 a N para N > 0, separados por espacios

(define (bajasube n)

  (cond ; Con este cond se evita que si se llama (bajasube -10)  se imprima -10 antes de hacer la recursión
    [(>= n 1) 
     (printf "~a " n)

     (cond
       [(> n 1) (bajasube (- n 1))]
       )
     (printf "~a " n)
     ]
    )

)

; Función fibo: Regresa el n-ésimo termino de la serie de fibonacci.
(define (fibo n)

  (cond
    [(<= n 0) (printf "Favor de usar un n válido")]
    [(<= n 2) 1]
    [else (+ (fibo(- n 1)) (fibo(- n 2)))]
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

; NOTA: time(fibo(40)) -> CPU TIME: 5476, REAL TIME: 5485
; NOTA: time(fibot(40)) -> CPU TIME: 0, REAL TIME: 0SSSSSSSS