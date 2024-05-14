(define (problem railway-problem)
  (:domain railway)
  (:objects
    Train1 - train
    StationA StationB StationC StationD - station
    SegmentAB SegmentBC SegmentCD - track
  )

  (:init
    (atLocation Train1 StationA)
    (connected StationA StationB SegmentAB)
    (connected StationB StationC SegmentBC)
    (connected StationC StationD SegmentCD)
    (not (hasDelay Train1 Open))
  )

  (:goal (and
    (atLocation Train1 StationD)
  ))

  (:init
    (atLocation Train1 StationA)
    (not (atLocation Train1 StationB))
    (not (atLocation Train1 StationC))
    (not (atLocation Train1 StationD))
  )

  (:goal (and
    (atLocation Train1 StationB)
    (atLocation Train1 StationC)
    (atLocation Train1 StationD)
  ))

)
