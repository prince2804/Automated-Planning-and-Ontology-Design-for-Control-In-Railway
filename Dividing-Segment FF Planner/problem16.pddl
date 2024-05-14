(define (problem railway-problem)
  (:domain railway)
  (:objects
    A B C D E F - StationID
    t1 t2 - TrainId
    red  green - SegSignalStatus    
    segment_length 1
  )
  (:init
    (atLocation t1 A)
    (atLocation t2 B)
    (hasSignal A green)
    (hasSignal B green)
    (hasSignal C green)
    (hasSignal D green)
    (hasSignal E green)
    (hasSignal F green)
    (connected A C)
    (= (distance A C) 10)
    (connected B C)
    (= (distance B C) 20)
    (connected C D) 
    (= (distance C D) 10)
    (connected C E) 
    (= (distance C E) 15)
    (connected D F) 
    (= (distance D F) 10)
    (connected E F) 
    (= (distance E F) 25)    
    (= (total-cost) 0)
  )
  (:goal (and
           (atLocation t1 F)
           (atLocation t2 F)
         ))
  
)
