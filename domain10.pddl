(define (domain railway)
    (:requirements :strips)
    (:types
        TrainId StationId TrackId location PlatformStatus Platformcnt incident TrainName TrainType TrackType TrainDelay TrainStatus SegProtocol Geometry Person SegId SegSignalStatus)
    (:predicates
        (hasName ?TrainId - train ?name - TrainName)
        (hasSchedule ?train - train ?schedule - TrainSchedule)
        (hasType ?train - train ?type - TrainType)
        (hasTrack ?train - train ?track - TrackType)
        (hasOrigin ?train - train ?origin - StationId)
        (hasDestination ?train - train ?destination - StationId)
        (hasDelay ?train - train ?delay - TrainDelay)
        (hasStatus ?train - train ?status - Status)
        (hasPlatform ?station - station ?platform - Platformcnt)
        (hasIncident ?train - train ?incident - Incident)
        (atLocation ?train - train ?location - Location)
        (atPlatform ?train - train ?platform - Platformcnt)
        (hasProtocol ?train - train ?protocol - SegProtocol)
        (hasGeometry ?train - train ?geometry - Geometry)
        (hasDriver ?train - train ?driver - Person)
        (hasNumber ?train - train ?number - int) ; Use 'int' for integer numbers
        (hasSegment ?track - track ?segment - SegmentID)
        (hasSignal ?track - track ?signal - SegSignalStatus)
        (hasNearestJunction ?station - station ?junction - StationId)
    )
    (:action move
        :parameters (?t - train ?from - location ?to - location)
        :precondition (and (atLocation ?t ?from) (not (hasDelay ?t Open)))
        :effect (and (atLocation ?t ?to) (not (atLocation ?t ?from)))
    )

    (:action depart
        :parameters (?t - train ?p - platform)
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

(:action signalArrival
    :parameters (?t - train ?s - station)
    :precondition (and (atLocation ?t ?s) (not (hasDelay ?t Open)))
    :effect (and (hasStatus ?t Arrived) (not (hasStatus ?t OnRoute)))
)


(:action changeTrack
    :parameters (?t - train ?old - track ?new - track)
    :precondition (and (hasTrack ?t ?old) (not (hasDelay ?t Open)))
    :effect (and (hasTrack ?t ?new) (not (hasTrack ?t ?old)))
)

(:action reportIncident
    :parameters (?t - train ?i - incident)
    :precondition (and (atLocation ?t ?l) (not (hasIncident ?t ?i)))
    :effect (hasIncident ?t ?i)
)

(:action clearIncident
    :parameters (?t - train ?i - incident)
    :precondition (hasIncident ?t ?i)
    :effect (not (hasIncident ?t ?i))
)
)
