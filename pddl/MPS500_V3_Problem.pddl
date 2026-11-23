





(define (problem mps500-v3)

  (:domain mps500-v3)

  (:objects
    roboticassembly - assembly
    rcy2 - conveyorbelt
    qu1 - conveyorbelt
    bu1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    as2 - conveyorbelt
    pr2 - conveyorbelt
    processingstation - processing
    rth2 - conveyorbelt
    rth1 - conveyorbelt
    qu2 - conveyorbelt
    rcy1 - conveyorbelt
    sh3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    pr1 - conveyorbelt
    pr3 - conveyorbelt
    as1 - conveyorbelt
    thermo1 - product
    rth3 - conveyorbelt
    bu2 - conveyorbelt
    bufferstation - bufferstorage
    shippingarea - shipping
    sh1 - conveyorbelt
    rcy3 - conveyorbelt
    bu3 - conveyorbelt
    qualitycheck - quality
    qu3 - conveyorbelt
    as3 - conveyorbelt
    sh2 - conveyorbelt
    c1 - carrier
  )

  (:init
    (connected qu2 qu1)
    (connected bu3 bu2)
    (connected rcy3 rcy2)
    (connected rth2 rth1)
    (connected pr2 processingstation)
    (connected as2 roboticassembly)
    (occupied rth2)
    (connected pr2 pr1)
    (connected qu1 as3)
    (connected as1 bu3)
    (connected qu2 qualitycheck)
    (available thermo1 rawstorage_thermometers)
    (empty c1)
    (connected sh3 sh2)
    (connected rth2 rawstorage_thermometers)
    (connected pr3 pr2)
    (connected rth1 rcy3)
    (on c1 rth2)
    (connected rcy1 pr3)
    (connected pr1 qu3)
    (connected as2 as1)
    (connected bu2 bufferstation)
    (connected sh2 shippingarea)
    (connected sh2 sh1)
    (connected bu2 bu1)
    (connected rcy2 rcy1)
    (connected as3 as2)
    (connected qu3 qu2)
    (connected sh1 rth3)
    (connected bu1 sh3)
    (connected rth3 rth2)
    (connected rcy2 rawstorage_cylinders)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
