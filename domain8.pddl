(define (domain blocks_world)
  (:requirements :strips :typing)

  (:types block)
  
  (:predicates
    (on ?x - block ?y - block)
    (clear ?x - block)
    (table ?x - block)
  )

  (:action move
    :parameters (?b - block ?x - block ?y - block)
    :precondition (and (clear ?b) (on ?b ?x) (clear ?y))
    :effect (and (not (on ?b ?x)) (not (clear ?y)) (clear ?x) (on ?b ?y))
  )
  
  (:action move-to-table
    :parameters (?b - block ?x - block)
    :precondition (and (clear ?b) (on ?b ?x))
    :effect (and (not (on ?b ?x)) (clear ?x) (table ?b))
  )
)
