





(define (problem mps500-t1)

  (:domain mps500-t1)

  (:objects
    pr2 - conveyorbelt
    rth2 - conveyorbelt
    shippingarea - shipping
    sh1 - conveyorbelt
    qu3 - conveyorbelt
    qu2 - conveyorbelt
    rcy2 - conveyorbelt
    processingstation - processing
    rcy3 - conveyorbelt
    qu1 - conveyorbelt
    thermo1 - product
    qualitycheck - quality
    rawstorage_cylinders - rawpartswarehouse
    rth1 - conveyorbelt
    pr3 - conveyorbelt
    c1 - carrier
    rawstorage_thermometers - rawpartswarehouse
    pr1 - conveyorbelt
    sh3 - conveyorbelt
    sh2 - conveyorbelt
    rth3 - conveyorbelt
    rcy1 - conveyorbelt
  )

  (:init
    (connected pr2 pr1)
    (connected qu1 sh3)
    (connected rth1 rcy3)
    (connected rcy1 pr3)
    (connected pr3 pr2)
    (connected rth2 rawstorage_thermometers)
    (connected rcy3 rcy2)
    (on c1 rth2)
    (connected rth2 rth1)
    (connected sh1 rth3)
    (connected sh2 sh1)
    (connected rcy2 rcy1)
    (connected qu3 qu2)
    (connected sh2 shippingarea)
    (connected rcy2 rawstorage_cylinders)
    (connected rth3 rth2)
    (connected sh3 sh2)
    (connected qu2 qualitycheck)
    (connected qu2 qu1)
    (occupied rth2)
    (connected pr1 qu3)
    (available thermo1 rawstorage_thermometers)
    (empty c1)
    (connected pr2 processingstation)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
