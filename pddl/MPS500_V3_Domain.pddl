








(define (domain mps500-v3)


  (:requirements :strips :typing :negative-preconditions :disjunctive-preconditions :quantified-preconditions :conditional-effects)

  (:types
    carrier locatable product - object
    bufferstorage - station
    processing - station
    quality - station
    rawpartswarehouse - station
    shipping - station
    assembly - station
    conveyorbelt - locatable
    station - locatable
  )

  (:predicates
    (empty ?c - carrier)
    (occupied ?cb - conveyorbelt)
    (connected ?cb - locatable ?ct - locatable)
    (urgent ?p - product)
    (loaded ?c - carrier ?p - product)
    (assembled ?p - product)
    (stored ?p - product)
    (cleared ?ct - station)
    (shipped ?p - product)
    (available ?p - product ?ct - station)
    (on ?c - carrier ?cb - conveyorbelt)
    (inspected ?p - product)
    (processed ?p - product)
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

  (:action route
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (on ?c ?cb1) (UNKNOWN-OR-f17) (not (occupied ?cb2)))
    :effect (and (not (on ?c ?cb1)) (on ?c ?cb2) (not (occupied ?cb1)) (occupied ?cb2))
  )

  (:action release
    :parameters (?ct - station)
    :precondition (forall (?p - product) (UNKNOWN-IMPLY-f29))
    :effect (cleared ?ct)
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 2, explicit deletes: 0)
  (:action ship
    :parameters (?c - carrier  ?p - product  ?ct - shipping  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (assembled ?p) (not (shipped ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (shipped ?p) (empty ?c) (not (loaded ?c ?p)))
  )

  (:action move
    :parameters (?c - carrier  ?cb1 - conveyorbelt  ?cb2 - conveyorbelt)
    :precondition (and (not (empty ?c)) (on ?c ?cb1) (not (occupied ?cb2)) (connected ?cb1 ?cb2))
    :effect (and (not (on ?c ?cb1)) (on ?c ?cb2) (not (occupied ?cb1)) (occupied ?cb2))
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 1, explicit deletes: 0)
  (:action process
    :parameters (?c - carrier  ?p - product  ?cb - conveyorbelt  ?ct - processing)
    :precondition (and (loaded ?c ?p) (on ?c ?cb) (connected ?cb ?ct) (not (processed ?p)))
    :effect (and (processed ?p))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action load
    :parameters (?c - carrier  ?p - product  ?ct - rawpartswarehouse  ?cb - conveyorbelt)
    :precondition (and (available ?p ?ct) (empty ?c) (not (processed ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (loaded ?c ?p) (not (available ?p ?ct)) (not (empty ?c)))
  )

  (:action escalate
    :parameters (?p - product  ?ct - quality)
    :precondition (> (UNKNOWN-LITERAL-f32) 0.0)
    :effect (when (processed ?p) (urgent ?p))
  )

)
