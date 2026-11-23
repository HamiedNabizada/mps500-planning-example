





(define (problem mps500-i6)

  (:domain mps500-domain)

  (:objects
    c1 - carrier
    as3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    bu3 - conveyorbelt
    pr1 - conveyorbelt
    rth2 - conveyorbelt
    bufferstation - bufferstorage
    sh3 - conveyorbelt
    bu1 - conveyorbelt
    shippingarea - shipping
    c3 - carrier
    rth3 - conveyorbelt
    qu2 - conveyorbelt
    c5 - carrier
    as1 - conveyorbelt
    bu2 - conveyorbelt
    rth1 - conveyorbelt
    rcy3 - conveyorbelt
    qualitycheck - quality
    c2 - carrier
    pr3 - conveyorbelt
    c6 - carrier
    qu3 - conveyorbelt
    rcy1 - conveyorbelt
    sh1 - conveyorbelt
    thermo1 - product
    c4 - carrier
    as2 - conveyorbelt
    rcy2 - conveyorbelt
    pr2 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    qu1 - conveyorbelt
    processingstation - processing
    sh2 - conveyorbelt
    roboticassembly - assembly
  )

  (:init
    (empty c1)
    (connected rcy2 rawstorage_cylinders)
    (on c4 rcy2)
    (connected qu2 qu1)
    (connected sh1 rth3)
    (occupied rth2)
    (on c3 qu2)
    (connected rcy2 rcy1)
    (connected rth2 rawstorage_thermometers)
    (connected rth1 rcy3)
    (connected pr3 pr2)
    (connected pr2 processingstation)
    (connected as3 as2)
    (connected pr1 qu3)
    (on c6 as2)
    (connected sh2 shippingarea)
    (on c2 pr2)
    (available thermo1 rawstorage_thermometers)
    (connected qu3 qu2)
    (connected as2 roboticassembly)
    (connected pr2 pr1)
    (empty c5)
    (occupied bu2)
    (connected bu3 bu2)
    (connected sh2 sh1)
    (empty c6)
    (connected bu2 bu1)
    (connected as1 bu3)
    (occupied qu2)
    (connected as2 as1)
    (connected bu1 sh3)
    (occupied as2)
    (empty c2)
    (empty c3)
    (occupied pr2)
    (connected qu2 qualitycheck)
    (connected sh3 sh2)
    (connected qu1 as3)
    (connected rth3 rth2)
    (connected bu2 bufferstation)
    (on c5 bu2)
    (connected rcy1 pr3)
    (on c1 rth2)
    (connected rcy3 rcy2)
    (occupied rcy2)
    (empty c4)
    (connected rth2 rth1)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
