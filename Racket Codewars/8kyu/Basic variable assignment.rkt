#|
Description

This code should store "codewa.rs" as a variable called name but it's not working. 
Can you figure out why?

#lang racket
(provide name)

(= a "code")
(= b "wa.rs")
(= name (string-append a b))
|#

#lang racket
(provide name)

(define a "code")
(define b "wa.rs")
(define name (string-append a b))