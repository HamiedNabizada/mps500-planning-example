





(define (problem mps500-i4)

  (:domain mps500-domain)

  (:objects
    rcy2 - conveyorbelt
    pr1 - conveyorbelt
    qu1 - conveyorbelt
    c1 - carrier
    sh3 - conveyorbelt
    rth1 - conveyorbelt
    pr2 - conveyorbelt
    sh2 - conveyorbelt
    rth2 - conveyorbelt
    qu2 - conveyorbelt
    processingstation - processing
    rcy3 - conveyorbelt
    as3 - conveyorbelt
    thermo1 - product
    as1 - conveyorbelt
    shippingarea - shipping
    bu1 - conveyorbelt
    qu3 - conveyorbelt
    rth3 - conveyorbelt
    bu2 - conveyorbelt
    bufferstation - bufferstorage
    as2 - conveyorbelt
    bu3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    qualitycheck - quality
    pr3 - conveyorbelt
    sh1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    rcy1 - conveyorbelt
    roboticassembly - assembly
  )

  (:init
    (connected qu2 qualitycheck)
    (connected rth2 rth1)
    (connected rcy3 rcy2)
    (connected rcy2 rcy1)
    (connected qu3 qu2)
    (empty c1)
    (connected sh3 sh2)
    (connected qu2 qu1)
    (connected rcy1 pr3)
    (occupied rth2)
    (connected rth1 rcy3)
    (on c1 rth2)
    (available thermo1 rawstorage_thermometers)
    (connected pr3 pr2)
    (connected bu2 bufferstation)
    (connected pr2 processingstation)
    (connected rcy2 rawstorage_cylinders)
    (connected bu3 bu2)
    (connected sh2 sh1)
    (connected as1 bu3)
    (connected sh1 rth3)
    (connected as3 as2)
    (connected rth3 rth2)
    (connected pr2 pr1)
    (connected qu1 as3)
    (connected as2 as1)
    (connected bu1 sh3)
    (connected rth2 rawstorage_thermometers)
    (connected bu2 bu1)
    (connected pr1 qu3)
    (connected sh2 shippingarea)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
