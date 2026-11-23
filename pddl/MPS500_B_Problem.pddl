





(define (problem mps500-b)

  (:domain mps500-domain)

  (:objects
    qu2 - conveyorbelt
    as1 - conveyorbelt
    bu1 - conveyorbelt
    pr1 - conveyorbelt
    as2 - conveyorbelt
    rth3 - conveyorbelt
    pr2 - conveyorbelt
    bu2 - conveyorbelt
    pr3 - conveyorbelt
    rth2 - conveyorbelt
    roboticassembly - assembly
    qu3 - conveyorbelt
    sh3 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    sh1 - conveyorbelt
    rcy3 - conveyorbelt
    rth1 - conveyorbelt
    bu3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    thermo1 - product
    rcy2 - conveyorbelt
    rcy1 - conveyorbelt
    sh2 - conveyorbelt
    c1 - carrier
    processingstation - processing
    bufferstation - bufferstorage
    as3 - conveyorbelt
    qualitycheck - quality
    qu1 - conveyorbelt
    shippingarea - shipping
  )

  (:init
    (connected pr2 pr1)
    (connected sh3 sh2)
    (connected qu2 qualitycheck)
    (empty c1)
    (connected as2 roboticassembly)
    (connected pr2 processingstation)
    (connected rth3 rth2)
    (connected pr1 qu3)
    (connected sh2 shippingarea)
    (connected rcy2 rcy1)
    (connected rth2 rth1)
    (connected sh1 rth3)
    (connected bu2 bu1)
    (connected qu3 qu2)
    (connected qu1 as3)
    (connected bu2 bufferstation)
    (connected rcy1 pr3)
    (on c1 rth2)
    (connected bu1 sh3)
    (connected rcy2 rawstorage_cylinders)
    (connected rth2 rawstorage_thermometers)
    (occupied rth2)
    (connected bu3 bu2)
    (connected as1 bu3)
    (connected sh2 sh1)
    (available thermo1 rawstorage_thermometers)
    (connected pr3 pr2)
    (connected as3 as2)
    (connected qu2 qu1)
    (connected as2 as1)
    (connected rcy3 rcy2)
    (connected rth1 rcy3)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
