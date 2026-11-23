








(define (domain mps500-p3)


  (:requirements :strips :typing :negative-preconditions)

  (:types
    locatable capability carrier product - object
    quality - station
    rawpartswarehouse - station
    shipping - station
    conveyorbelt - locatable
    assembly - station
    bufferstorage - station
    station - locatable
    processing - station
  )

  (:predicates
    (empty ?c - carrier)
    (shipped ?p - product)
    (provides ?ct - station ?cp - capability)
    (connected ?cb - locatable ?ct - locatable)
    (done ?p - product ?cp - capability)
    (on ?c - carrier ?cb - conveyorbelt)
    (occupied ?cb - conveyorbelt)
    (available ?p - product ?ct - station)
    (loaded ?c - carrier ?p - product)
    (prereq ?pcp - capability ?cp - capability)
    (final_capability ?cp - capability)
  )



  (:action perform
    :parameters (?c - carrier  ?p - product  ?ct - station  ?cb - conveyorbelt  ?cp - capability  ?pcp - capability)
    :precondition (and (loaded ?c ?p) (on ?c ?cb) (connected ?cb ?ct) (provides ?ct ?cp) (prereq ?pcp ?cp) (done ?p ?pcp) (not (done ?p ?cp)))
    :effect (done ?p ?cp)
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 1, explicit deletes: 0)
  (:action load
    :parameters (?c - carrier  ?p - product  ?ct - rawpartswarehouse  ?cb - conveyorbelt)
    :precondition (and (available ?p ?ct) (empty ?c) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (loaded ?c ?p) (not (available ?p ?ct)) (not (empty ?c)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 6, Out: 2, explicit deletes: 0)
  (:action ship
    :parameters (?c - carrier  ?p - product  ?ct - shipping  ?cb - conveyorbelt  ?cp - capability)
    :precondition (and (loaded ?c ?p) (done ?p ?cp) (final_capability ?cp) (not (shipped ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (shipped ?p) (empty ?c) (not (loaded ?c ?p)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 2, explicit deletes: 1, pins with arguments: 7)
  (:action proceed
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (on ?c ?cb1) (not (occupied ?cb2)) (empty ?c) (connected ?cb1 ?cb2))
    :effect (and (on ?c ?cb2) (occupied ?cb2) (not (occupied ?cb1)) (not (on ?c ?cb1)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 2, explicit deletes: 1, pins with arguments: 7)
  (:action move
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (not (empty ?c)) (on ?c ?cb1) (not (occupied ?cb2)) (connected ?cb1 ?cb2))
    :effect (and (on ?c ?cb2) (occupied ?cb2) (not (occupied ?cb1)) (not (on ?c ?cb1)))
  )

)
