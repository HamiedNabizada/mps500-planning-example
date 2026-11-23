








(define (domain mps500-p2)


  (:requirements :strips :typing :negative-preconditions)

  (:types
    component carrier product locatable - object
    rawpartswarehouse - station
    conveyorbelt - locatable
    quality - station
    processing - station
    assembly - station
    station - locatable
    shipping - station
    bufferstorage - station
  )

  (:predicates
    (assembled ?p - product)
    (on ?c - carrier ?cb - conveyorbelt)
    (empty ?c - carrier)
    (consumed ?k - component)
    (shipped ?p - product)
    (part_at ?k - component ?ct - assembly)
    (stored ?p - product)
    (occupied ?cb - conveyorbelt)
    (connected ?cb - locatable ?ct - locatable)
    (available ?p - product ?ct - station)
    (fits ?k - component ?p - product)
    (loaded ?c - carrier ?p - product)
    (inspected ?p - product)
    (processed ?p - product)
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

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 1, explicit deletes: 0)
  (:action inspect
    :parameters (?c - carrier  ?p - product  ?ct - quality  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (processed ?p) (not (inspected ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (inspected ?p))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 2, explicit deletes: 0)
  (:action ship
    :parameters (?c - carrier  ?p - product  ?ct - shipping  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (assembled ?p) (not (shipped ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (shipped ?p) (empty ?c) (not (loaded ?c ?p)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 7, Out: 2, explicit deletes: 0)
  (:action assemble
    :parameters (?c - carrier  ?p - product  ?k - component  ?ct - assembly  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (inspected ?p) (not (assembled ?p)) (connected ?cb ?ct) (on ?c ?cb) (part_at ?k ?ct) (fits ?k ?p))
    :effect (and (assembled ?p) (consumed ?k) (not (part_at ?k ?ct)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 4, Out: 1, explicit deletes: 0)
  (:action retrieve
    :parameters (?c - carrier  ?p - product  ?ct - bufferstorage  ?cb - conveyorbelt)
    :precondition (and (empty ?c) (stored ?p) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (loaded ?c ?p) (not (empty ?c)) (not (stored ?p)))
  )

  ;; Mode A: derived from predicate-typed pins (In: 5, Out: 2, explicit deletes: 0)
  (:action store
    :parameters (?c - carrier  ?p - product  ?ct - bufferstorage  ?cb - conveyorbelt)
    :precondition (and (loaded ?c ?p) (assembled ?p) (not (stored ?p)) (connected ?cb ?ct) (on ?c ?cb))
    :effect (and (stored ?p) (empty ?c) (not (loaded ?c ?p)))
  )

)
