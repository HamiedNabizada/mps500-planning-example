





(define (problem mps500-v1)

  (:domain mps500-v1)

  (:objects
    roboticassembly - assembly
    rawstorage_cylinders - rawpartswarehouse
    thermo1 - product
    bu2 - conveyorbelt
    rcy1 - conveyorbelt
    rth3 - conveyorbelt
    as1 - conveyorbelt
    shippingarea - shipping
    pr1 - conveyorbelt
    rth1 - conveyorbelt
    processingstation - processing
    rcy3 - conveyorbelt
    rcy2 - conveyorbelt
    bu3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    sh2 - conveyorbelt
    as3 - conveyorbelt
    qu2 - conveyorbelt
    qu1 - conveyorbelt
    qualitycheck - quality
    qu3 - conveyorbelt
    pr3 - conveyorbelt
    sh3 - conveyorbelt
    pr2 - conveyorbelt
    sh1 - conveyorbelt
    as2 - conveyorbelt
    rth2 - conveyorbelt
    bufferstation - bufferstorage
    bu1 - conveyorbelt
    c1 - carrier
  )

  (:init
    (connected as3 as2)
    (connected bu2 bufferstation)
    (connected rth3 rth2)
    (connected qu2 qualitycheck)
    (connected qu3 qu2)
    (on c1 rth2)
    (connected rth2 rawstorage_thermometers)
    (connected as2 as1)
    (connected bu3 bu2)
    (connected sh2 sh1)
    (occupied rth2)
    (connected sh1 rth3)
    (connected rcy2 rcy1)
    (connected bu2 bu1)
    (connected rth1 rcy3)
    (connected as2 roboticassembly)
    (connected rcy1 pr3)
    (connected bu1 sh3)
    (connected pr3 pr2)
    (connected rcy3 rcy2)
    (connected rth2 rth1)
    (connected pr1 qu3)
    (connected sh2 shippingarea)
    (connected rcy2 rawstorage_cylinders)
    (connected sh3 sh2)
    (connected as1 bu3)
    (available thermo1 rawstorage_thermometers)
    (connected pr2 pr1)
    (connected qu1 as3)
    (empty c1)
    (connected qu2 qu1)
    (connected pr2 processingstation)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
