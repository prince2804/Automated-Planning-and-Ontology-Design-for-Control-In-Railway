(define (domain metrictest)
    (:requirements :strips :action-costs)
    (:predicates (done ?x))

    (:functions (total-cost) - number)

    (:action do1
        :parameters (?x)
        :precondition (not (done ?x))
        :effect (and (done ?x) (increase (total-cost) 1))
    )

    (:action do2
        :parameters (?x)
        :precondition (not (done ?x))
        :effect (and (done ?x) (increase (total-cost) 5))
    )
)