(define (domain railway)
    (:requirements :strips)
    (:types
        TrainId StationId TrackId location PlatformStatus Platformcnt Incident TrainName TrainType TrackType TrainDelay TrainStatus SegProtocol Geometry Person SegId SegSignalStatus)
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
    )
    (:functions
        (currentDelay ?t) ; Define the currentDelay function for the TrainId
	(distance ?from ?to)
    	(total-cost)
    )
  
    (:action move
        :parameters (?t ?from ?to ?c)
        :precondition (and (atLocation ?t ?from)(connected ?from ?to)(hasSignal ?to ?c) (not (= ?c red))(not (hasIncident ?t ?from ?to)))
        :effect (and (atLocation ?t ?to) (not (atLocation ?t ?from))(increase (total-cost) (distance ?from ?to)))
    ) 
    
 
   (:action signalArrival
    :parameters (?t ?from ?to ?c)
        :precondition (and (atLocation ?t ?from)(connected ?from ?to)(hasSignal ?to ?c) (= ?c red))
        :effect (and (atLocation ?t ?to) (not (atLocation ?t ?from)) (increase (total-cost) (distance ?from ?to))
									(increase (total-cost) 5))
   )
   (:action reportIncident
        :parameters (?t ?from ?to)
        :precondition (and (atLocation ?t ?from)(hasIncident ?t ?from ?to))
        :effect (and (hasIncidentclear ?t ?from ?to))
    )
   (:action clearIncident
        :parameters (?t ?from ?to)
        :precondition (and (atLocation ?t ?from)(connected ?from ?to)(hasIncidentclear ?t ?from ?to))
        :effect (and (atLocation ?t ?to) (increase (total-cost) (distance ?from ?to))
									(increase (total-cost) 50))
    )
    (:action depart
        :parameters (?t - TrainId ?p - Platform)
        :precondition (and (atPlatform ?t ?p) (not (hasDelay ?t Open)))
        :effect (and (not (atPlatform ?t ?p)) (hasDelay ?t Closed))
    )

   (:action loadPassengers
    :parameters (?t - train ?p - platform)
    :precondition (and (atPlatform ?t ?p) (not (hasDelay ?t Open)))
    :effect (increase (passengerCount ?t) (passengerCountAt ?t ?p))
   )

    (:action unloadPassengers
        :parameters (?t - train ?p - platform)
        :precondition (and (atPlatform ?t ?p) (not (hasDelay ?t Open)))
        :effect (and (decrease (passengerCount ?t) (passengerCountAt ?t ?p)) (not (passengerCountAt ?t ?p)))
    )

    (:action changeTrack
        :parameters (?t - train ?old - track ?new - track)
        :precondition (and (hasTrack ?t ?old) (not (hasDelay ?t Open)))
        :effect (and (hasTrack ?t ?new) (not (hasTrack ?t ?old)))
    )

    
)
