(define (domain blocks-world)
  (:requirements :strips)
  (:predicates
    (on ?x ?y)      ; Block x is on top of block y
    (clear ?x)      ; Block x is clear (not on top of any other block)
    (holding ?x)    ; Agent is holding block x
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (on ?x table))
    :effect (and (holding ?x)
                 (not (clear ?x))
                 (not (on ?x table)))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (clear ?x)
                 (on ?x table)
                 (not (holding ?x)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y)
                 (clear ?x)
                 (not (holding ?x)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x))
    :effect (and (not (on ?x ?y))
                 (clear ?y)
                 (holding ?x)))
)
