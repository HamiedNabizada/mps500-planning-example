








(define (domain mps500-v2)


  (:requirements :strips :typing :negative-preconditions :numeric-fluents)

  (:types
    carrier product locatable - object
    processing - station
    bufferstorage - station
    quality - station
    conveyorbelt - locatable
    shipping - station
    assembly - station
    station - locatable
    rawpartswarehouse - station
  )

  (:predicates
    (loaded ?c - carrier ?p - product)
    (processed ?p - product)
    (stored ?p - product)
    (occupied ?cb - conveyorbelt)
    (shipped ?p - product)
    (available ?p - product ?ct - station)
    (assembled ?p - product)
    (empty ?c - carrier)
    (inspected ?p - product)
    (on ?c - carrier ?cb - conveyorbelt)
    (connected ?cb - locatable ?ct - locatable)
  )


  (:functions
    (total-cost) - number
    (energy-used) - number
  )


  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 2, explicit deletes: 0)
  (:action ship
    :parameters (?c - carrier  ?p - product  ?ct - shipping  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (assembled ?p) (not (shipped ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (shipped ?p) (empty ?c) (not (loaded ?c ?p)))
  )

  (:action throttle
    :parameters (?ct - processing  ?cb - conveyorbelt)
    :precondition (and (connected ?cb ?ct) (< (energy-used) 5.0))
    :effect (and (decrease (energy-used) 1.0) (scale-down (total-cost) 2.0))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action load
    :parameters (?c - carrier  ?p - product  ?ct - rawpartswarehouse  ?cb - conveyorbelt)
    :precondition (and (available ?p ?ct) (empty ?c) (not (processed ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (loaded ?c ?p) (not (available ?p ?ct)) (not (empty ?c)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 1, explicit deletes: 0)
  (:action process
    :parameters (?c - carrier  ?p - product  ?cb - conveyorbelt  ?ct - processing)
    :precondition (and (loaded ?c ?p) (on ?c ?cb) (connected ?cb ?ct) (not (processed ?p)))
    :effect (and (processed ?p))
  )

  (:action surge
    :parameters (?ct - processing  ?cb - conveyorbelt)
    :precondition (and (connected ?cb ?ct) (> (energy-used) 0.0))
    :effect (and (scale-up (energy-used) 2.0) (increase (total-cost) 1.0))
  )

  (:action calibrate
    :parameters (?ct - processing  ?cb - conveyorbelt)
    :precondition (and (connected ?cb ?ct) (>= (energy-used) 5.0))
    :effect (and (assign (energy-used) 0.0) (increase (total-cost) 4.0))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action inspect
    :parameters (?c - carrier  ?p - product  ?ct - quality  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (processed ?p) (not (inspected ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (inspected ?p))
  )

  (:action move
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (not (empty ?c)) (on ?c ?cb1) (not (occupied ?cb2)) (connected ?cb1 ?cb2))
    :effect (and (not (on ?c ?cb1)) (on ?c ?cb2) (not (occupied ?cb1)) (occupied ?cb2))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action assemble
    :parameters (?c - carrier  ?p - product  ?ct - assembly  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (inspected ?p) (not (assembled ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (assembled ?p))
  )

)
