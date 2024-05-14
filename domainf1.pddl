(define (domain example-domain)
  (:requirements :durative-actions)

  (:types
    person
    place
  )

  (:predicates
    (at ?p - person ?l - place)
    (moving ?p - person)
  )

  (:durative-action move
    :parameters (?p - person ?l1 ?l2 - place)
    :duration (travel-time ?l1 ?l2)
    :condition (and
                (at start (at ?p ?l1))
                (at start (not (at ?p ?l2)))
                (at start (not (moving ?p)))
               )
    :effect (and
              (at start (moving ?p))
              (at end (at ?p ?l2))
              (at end (not (moving ?p)))
            )
  )
)
