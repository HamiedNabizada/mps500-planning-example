





(define (problem mps500-p1)

  (:domain mps500-p1)

  (:objects
    c1 - carrier
    rcy3 - conveyorbelt
    shippingarea - shipping
    processingstation - processing
    qu3 - conveyorbelt
    bufferstation - bufferstorage
    thermo1 - product
    rth3 - conveyorbelt
    pr2 - conveyorbelt
    as3 - conveyorbelt
    bu3 - conveyorbelt
    qualitycheck - quality
    roboticassembly - assembly
    rth2 - conveyorbelt
    qu1 - conveyorbelt
    as1 - conveyorbelt
    pr3 - conveyorbelt
    as2 - conveyorbelt
    rcy2 - conveyorbelt
    sh2 - conveyorbelt
    qu2 - conveyorbelt
    rth1 - conveyorbelt
    sh1 - conveyorbelt
    pr1 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    sh3 - conveyorbelt
    bu2 - conveyorbelt
    rcy1 - conveyorbelt
    bu1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
  )

  (:init
    (on c1 rth2)
    (rework_needed thermo1)
    (connected pr2 pr1)
    (connected qu1 as3)
    (connected pr3 pr2)
    (connected sh1 rth3)
    (connected qu2 qu1)
    (connected rth2 rawstorage_thermometers)
    (connected as1 bu3)
    (connected rcy1 pr3)
    (connected rcy2 rawstorage_cylinders)
    (connected sh3 sh2)
    (connected sh2 sh1)
    (empty c1)
    (connected rcy2 rcy1)
    (connected qu2 qualitycheck)
    (connected rth2 rth1)
    (connected qu3 qu2)
    (connected bu2 bu1)
    (connected pr2 processingstation)
    (connected as2 roboticassembly)
    (connected pr1 qu3)
    (connected rcy3 rcy2)
    (occupied rth2)
    (connected sh2 shippingarea)
    (available thermo1 rawstorage_thermometers)
    (connected as3 as2)
    (connected bu1 sh3)
    (connected bu2 bufferstation)
    (connected as2 as1)
    (connected rth3 rth2)
    (connected bu3 bu2)
    (connected rth1 rcy3)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
