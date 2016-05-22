;Laila Iftikhar
;BESE-4B
;5260

#lang scheme

; Some definitions that will qe needed in further tasks

(define true  (λ (p q) (p)))
(define false (λ (p q) (q)))

(define iszero
  (λ (p)
    (p (λ (x)
         (false) true))))

; Zero function
(define zero
  (λ (p)
    (
     p		; Replace this 'p' with implementation of this function
     )))

; Successor function
(define succ
  (λ (p)
    (
     p		; Replace this 'a' with implementation of this function
     )))

; Predecessor function
(define pred
  (λ (p)
    (
     p		; Replace this 'a' with implementation of this function
     )))

	 
	 
;;;;;;;;;;;;; ### LAB TASK QUESTIONS ### ;;;;;;;;;;;;;


(define addition
  (λ (p q)
    (p succ (q succ zero))))


(define subtraction
  (λ (p q)
    (q pred p)))


(define ANDfunc
  (λ (x y)
    (λ (p q)
      (y (x p q) q))))


(define ORfunc
  (λ (x y)
    (λ (p q)
      (y p (x p q)))))


(define NOTfunc
  (λ (x)
    (λ (p q)
      (x q p))))


(define LEQfunc
  (λ (p q)
    (isZero (subtraction p q))))


(define GEQfunc
  (λ (p q)
    (LEQfunc p q)))