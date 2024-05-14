(define (problem railway-problem)
  (:domain railway)
  (:objects
    A B C D  - StationID
    t - TrainId
    red  green - SegSignalStatus 
    Y N - Incident
  )
  (:init
    (atLocation t A)
    (hasSignal A green)
    (hasSignal B red)
    (hasSignal C green)
    (hasSignal D green)
    (hasIncident t B C)
    (connected A B)
    (= (distance A B) 10)
    (connected B C)
    (= (distance B C) 10)
    (connected C D)
    (= (distance C D) 20)
    (= (total-cost) 0)
  )
  (:goal (and
           (atLocation t D)
         ))
  (:metric minimize (total-cost))

)