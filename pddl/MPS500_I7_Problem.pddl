





(define (problem mps500-i7)

  (:domain mps500-domain)

  (:objects
    sh2 - conveyorbelt
    bufferstation - bufferstorage
    roboticassembly - assembly
    as2 - conveyorbelt
    pr3 - conveyorbelt
    shippingarea2 - shipping
    processingstation - processing
    sh3 - conveyorbelt
    rcy3 - conveyorbelt
    c1 - carrier
    qu3 - conveyorbelt
    as1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    qu2 - conveyorbelt
    rth1 - conveyorbelt
    rcy1 - conveyorbelt
    as3 - conveyorbelt
    sh1 - conveyorbelt
    bu3 - conveyorbelt
    qualitycheck - quality
    bu1 - conveyorbelt
    bu2 - conveyorbelt
    pr1 - conveyorbelt
    rth3 - conveyorbelt
    pr2 - conveyorbelt
    rth2 - conveyorbelt
    shippingarea - shipping
    thermo1 - product
    rawstorage_thermometers - rawpartswarehouse
    qu1 - conveyorbelt
    rcy2 - conveyorbelt
  )

  (:init
    (connected rcy2 rawstorage_cylinders)
    (connected as2 as1)
    (connected bu2 bu1)
    (connected rth2 rawstorage_thermometers)
    (connected sh3 shippingarea2)
    (connected rcy3 rcy2)
    (connected sh1 rth3)
    (connected sh2 shippingarea)
    (connected pr3 pr2)
    (connected rth2 rth1)
    (connected bu2 bufferstation)
    (connected pr2 pr1)
    (connected qu2 qualitycheck)
    (empty c1)
    (connected rcy2 rcy1)
    (occupied rth2)
    (connected pr2 processingstation)
    (connected rcy1 pr3)
    (connected sh3 sh2)
    (on c1 rth2)
    (connected as1 bu3)
    (connected qu1 as3)
    (connected bu3 bu2)
    (connected as2 roboticassembly)
    (connected sh2 sh1)
    (connected rth3 rth2)
    (connected as3 as2)
    (connected bu1 sh3)
    (connected pr1 qu3)
    (connected rth1 rcy3)
    (available thermo1 rawstorage_thermometers)
    (connected qu3 qu2)
    (connected qu2 qu1)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
