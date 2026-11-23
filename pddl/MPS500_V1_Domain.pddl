








(define (domain mps500-v1)


  (:requirements :strips :typing :negative-preconditions :disjunctive-preconditions :quantified-preconditions :conditional-effects)

  (:types
    carrier locatable product - object
    quality - station
    station - locatable
    shipping - station
    assembly - station
    conveyorbelt - locatable
    bufferstorage - station
    rawpartswarehouse - station
    processing - station
  )

  (:predicates
    (inspected ?p - product)
    (on ?c - carrier ?cb - conveyorbelt)
    (shipped ?p - product)
    (loaded ?c - carrier ?p - product)
    (assembled ?p - product)
    (available ?p - product ?ct - station)
    (cleared ?ct - station)
    (stored ?p - product)
    (empty ?c - carrier)
    (connected ?cb - locatable ?ct - locatable)
    (occupied ?cb - conveyorbelt)
    (urgent ?p - product)
    (processed ?p - product)
  )



  (:action release
    :parameters (?ct - station)
    :precondition (forall (?p - product) (imply (processed ?p) (inspected ?p)))
    :effect (cleared ?ct)
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action load
    :parameters (?c - carrier  ?p - product  ?ct - rawpartswarehouse  ?cb - conveyorbelt)
    :precondition (and (available ?p ?ct) (empty ?c) (not (processed ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (loaded ?c ?p) (not (available ?p ?ct)) (not (empty ?c)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action inspect
    :parameters (?c - carrier  ?p - product  ?ct - quality  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (processed ?p) (not (inspected ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (inspected ?p))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action assemble
    :parameters (?c - carrier  ?p - product  ?ct - assembly  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (inspected ?p) (not (assembled ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (assembled ?p))
  )

  (:action escalate
    :parameters (?p - product  ?ct - quality)
    :precondition (exists (?cb - conveyorbelt) (and (connected ?cb ?ct) (occupied ?cb)))
    :effect (when (processed ?p) (urgent ?p))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 2, explicit deletes: 0)
  (:action ship
    :parameters (?c - carrier  ?p - product  ?ct - shipping  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (assembled ?p) (not (shipped ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (shipped ?p) (empty ?c) (not (loaded ?c ?p)))
  )

  (:action route
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (on ?c ?cb1) (or (connected ?cb1 ?cb2) (connected ?cb2 ?cb1)) (not (occupied ?cb2)))
    :effect (and (not (on ?c ?cb1)) (on ?c ?cb2) (not (occupied ?cb1)) (occupied ?cb2))
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 1, explicit deletes: 0)
  (:action process
    :parameters (?c - carrier  ?p - product  ?cb - conveyorbelt  ?ct - processing)
    :precondition (and (loaded ?c ?p) (on ?c ?cb) (connected ?cb ?ct) (not (processed ?p)))
    :effect (and (processed ?p))
  )

  (:action move
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (not (empty ?c)) (on ?c ?cb1) (not (occupied ?cb2)) (connected ?cb1 ?cb2))
    :effect (and (not (on ?c ?cb1)) (on ?c ?cb2) (not (occupied ?cb1)) (occupied ?cb2))
  )

)
