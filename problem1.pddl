(define (problem blocks-problem)
  (:domain blocks-world)
  (:objects
    A B C D E - block
    table - surface
  )
  (:init
    (clear A)     ; Blocks are initially clear
    (clear B)
    (clear C)
    (clear D)
    (clear E)
    (on A table)  ; Blocks are initially on the table
    (on B table)
    (on C table)
    (on D table)
    (on E table)
  )
  (:goal (and
           (on A B)  ; The goal is to stack block A on top of block B
           (on B C)  ; and then stack block B on top of block C
           (on C D)  ; and then stack block C on top of block D
           (on D E)  ; and then stack block D on top of block E
         ))
)
