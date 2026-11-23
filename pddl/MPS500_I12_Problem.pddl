





(define (problem mps500-i12)

  (:domain mps500-domain)

  (:objects
    shippingarea - shipping
    bu3 - conveyorbelt
    sh2 - conveyorbelt
    processingstation - processing
    as1 - conveyorbelt
    pr3 - conveyorbelt
    thermo1 - product
    bu2 - conveyorbelt
    as2 - conveyorbelt
    sh1 - conveyorbelt
    sh3 - conveyorbelt
    pr2 - conveyorbelt
    c1 - carrier
    rcy1 - conveyorbelt
    rth1 - conveyorbelt
    qualitycheck - quality
    bufferstation - bufferstorage
    rcy3 - conveyorbelt
    pr1 - conveyorbelt
    qu3 - conveyorbelt
    rth3 - conveyorbelt
    bu1 - conveyorbelt
    roboticassembly - assembly
    rawstorage_cylinders - rawpartswarehouse
    rth2 - conveyorbelt
    as3 - conveyorbelt
    qu2 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    qu1 - conveyorbelt
    rcy2 - conveyorbelt
  )

  (:init
    (connected bu2 bu1)
    (available thermo1 rawstorage_thermometers)
    (connected pr3 pr2)
    (connected pr2 pr1)
    (connected rcy3 rcy2)
    (connected rth3 rth2)
    (connected rth2 rawstorage_thermometers)
    (connected bu3 bu2)
    (connected as1 bu3)
    (connected qu2 qualitycheck)
    (connected qu3 qu2)
    (connected sh3 sh2)
    (connected sh1 rth3)
    (connected pr1 qu3)
    (connected as2 roboticassembly)
    (connected sh2 shippingarea)
    (connected rth1 rcy3)
    (connected qu1 as3)
    (connected bu1 sh3)
    (connected bu1 sh2)
    (connected qu2 qu1)
    (connected as2 as1)
    (connected sh2 sh1)
    (connected rcy2 rawstorage_cylinders)
    (connected pr2 processingstation)
    (connected rcy2 rcy1)
    (connected as3 as2)
    (connected bu2 bufferstation)
    (on c1 rth2)
    (connected rth2 rth1)
    (empty c1)
    (connected rcy1 pr3)
    (occupied rth2)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
