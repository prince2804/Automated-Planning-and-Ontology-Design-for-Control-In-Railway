(define (problem example-problem)
  (:domain example-domain)

  (:objects
    person1
    home
    work
  )

  (:init
    (at person1 home)
    (travel-time home work 20)
  )

  (:goal
    (at person1 work)
  )
)
