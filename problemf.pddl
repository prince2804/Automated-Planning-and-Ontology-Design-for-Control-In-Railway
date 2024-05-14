(define (problem zeno-travel-1) (:domain zeno-travel)

(:objects plane -aircraft
	ernie scott dan-person
	city-a city-b city-c city-d - city)
(:init(= total-fuel-used 0) (= debarking-time 20) (= boarding-time 30) 
	(= (distance city-a city-b) 600)(= (distance city-b city-a) 600)
	(= (distance city-b city-c) 800) (= (distance city-c city-b) 800) 
	(= (distance city-a city-c) 1000) (= (distance city-c city-a) 1000) 
	(= (distance city-c city-d) 1000) (= (distance city-d city-c) 1000) 
	(= (fast-speed plane) (/ 600 60)) (= (slow-speed plane) (/ 400 60)) 
	(= (fuel plane) 750) (= (capacity plane) 750)
	(= (fast-burn plane) (1 2))(= (refuel-rate plane) (/ 750 60))
	(= (slow-burn plane) (/ 1 3))
	(at plane city-a) (at scott city-a) (at dan city-c) (at ernie city-c)) 
(:goal (and (at dan city-a) (at ernie city-d) (at scott city-d)))
(:metric minimize total-time)
)