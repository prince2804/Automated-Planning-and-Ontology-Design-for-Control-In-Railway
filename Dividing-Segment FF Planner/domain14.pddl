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
    )

 
    (:action move
        :parameters (?t ?from ?to ?c)
        :precondition (and (atLocation ?t ?from)(connected ?from ?to)(pathFree ?from ?to))
        :effect (and (atLocation ?t ?to)(not (atLocation ?t ?from))(pathOccupied ?from ?to ?t)(not(pathFree ?from ?to))
							(increase (total-cost) (distance ?from ?to)))
    ) 
    
(:action freeSegment
    :parameters (?from ?to ?t)
    :precondition (and (connected ?from ?to) (pathOccupied ?from ?to ?t)(atLocation ?t ?to)(not(pathFree ?from ?to)))
    :effect (and
      (pathFree ?from ?to)(not (pathOccupied ?from ?to ?t))
      (increase (total-cost) 1)
    )
  )
)
