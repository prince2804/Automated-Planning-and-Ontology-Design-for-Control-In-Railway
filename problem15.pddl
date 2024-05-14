(define (problem railway-problem)
  (:domain railway)
  (:objects
    A B C D E F - StationId
    t1 t2 - TrainId
    red  green - SegSignalStatus  	

  )
  (:init
    (not (flag))
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
    (= (distance B C) 10)
    (connected C D) 
    (= (distance C D) 15)
    (connected C E) 
    (= (distance C E) 20)
    (connected D F) 
    (= (distance D F) 10)
    (connected E F) 
    (= (distance E F) 25)   
	
    (pathFree A C)
    (pathFree B C)
    (pathFree C D)
    (pathFree C E)
    (pathFree D F)
    (pathFree E F) 
    (= (total-cost) 0)
    (= (current-time) 0)
    (= (train-time t1) 0) 
    (= (train-time t2) 0)
  )
  (:goal (and
           (atLocation t1 F)
	   (atLocation t2 F)
         ))
  (:metric minimize (+(train-time t1)(total-cost)))

)
