(define (domain railway)
    (:requirements :strips :typing :fluents)
    (:types
        TrainId StationId TrackId location PlatformStatus Platformcnt Incident TrainName TrainType 
	TrackType TrainDelay TrainStatus SegProtocol Geometry Person SegId SegSignalStatus)
    (:predicates
        (hasName ?TrainId ?TrainName)
        (hasSchedule ?TrainId ?TrainSchedule)
        (hasType ?TrainId ?TrainType)
        (hasTrack ?TrainId ?TrackType)
        (hasOrigin ?TrainId ?StationId)
        (hasDestination ?TrainId ?StationId)
        (hasDelay ?TrainId ?TrainDelay)
        (hasStatus ?TrainId ?Status)
        (hasPlatform ?StationId ?Platformcnt)
        (hasIncident ?TrainId ?StationId ?StationId)
	(hasIncidentclear ?TrainId ?StationId ?StationId)
        (atLocation ?TrainId ?StationId)
        (atPlatform ?TrainId ?platformNumber)
        (hasProtocol ?TrainId ?SegProtocol)
        (hasGeometry ?TrainId ?Geometry)
        (hasDriver ?TrainId ?Person)
        (hasNumber ?TrainId ?int) ; Use 'int' for integer numbers
        (hasSegment ?TrackId ?SegmentID)
        (hasSignal ?StationID ?SegSignalStatus)
        (hasNearestJunction ?StationId ?StationId)
	(connected ?StationId ?StationId)
	(pathFree ?StationId ?StationId)
        (pathOccupied ?StationId ?StationId ?TrainId)
	(flag)
	
    )
    (:functions
	(distance ?from ?to)
    	(total-cost)
	(current-time)
	(train-time ?t)
        (pathOccupationTime ?from ?to)
    )

 
    (:action move
        :parameters (?t ?from ?to ?c)
        :precondition (and (>=(current-time)(train-time ?t))(atLocation ?t ?from)(connected ?from ?to)(pathFree ?from ?to)(hasSignal ?to ?c)
									 (not (= ?c red))(not (hasIncident ?t ?from ?to)))
        :effect (and (atLocation ?t ?to)(not (atLocation ?t ?from))(pathOccupied ?from ?to ?t)(assign (pathOccupationTime ?from ?to) (+ (current-time) 5))
					(flag)(not (pathFree ?from ?to))(increase (total-cost) (distance ?from ?to))
					(increase (train-time ?t) (distance ?from ?to)))
    ) 
     (:action freePath
    :parameters (?from ?to ?t)
    :precondition (and
      (pathOccupied ?from ?to ?t)
      (>= (current-time) (pathOccupationTime ?from ?to))
    )
    :effect (and
      (pathFree ?from ?to)(flag)
      (not (pathOccupied ?from ?to ?t))
    )
  )
  
 (:action IncrementTime
    :parameters ()
    :precondition (not(flag))
    :effect (increase (current-time) 1)
  )
	
  (:action change
    :precondition (flag)
    :effect (not(flag))
  )
 
    
)
