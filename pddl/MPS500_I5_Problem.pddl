





(define (problem mps500-i5)

  (:domain mps500-domain)

  (:objects
    rcy2 - conveyorbelt
    processingstation - processing
    rawstorage_thermometers - rawpartswarehouse
    qu3 - conveyorbelt
    rth1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    as3 - conveyorbelt
    bu1 - conveyorbelt
    pr2 - conveyorbelt
    bufferstation - bufferstorage
    thermo1 - product
    rth2 - conveyorbelt
    rcy3 - conveyorbelt
    rcy1 - conveyorbelt
    shippingarea - shipping
    sh2 - conveyorbelt
    pr1 - conveyorbelt
    c1 - carrier
    bu3 - conveyorbelt
    as1 - conveyorbelt
    pr3 - conveyorbelt
    as2 - conveyorbelt
    bu2 - conveyorbelt
    qu1 - conveyorbelt
    roboticassembly - assembly
    sh1 - conveyorbelt
    sh3 - conveyorbelt
    qu2 - conveyorbelt
    rth3 - conveyorbelt
    qualitycheck - quality
  )

  (:init
    (connected rcy1 pr3)
    (inspected thermo1)
    (connected qu3 qu2)
    (connected pr1 qu3)
    (processed thermo1)
    (occupied rth2)
    (connected qu1 as3)
    (connected as1 bu3)
    (connected as2 as1)
    (connected sh1 rth3)
    (connected qu2 qu1)
    (connected as3 as2)
    (connected sh2 shippingarea)
    (connected rcy2 rawstorage_cylinders)
    (assembled thermo1)
    (connected pr2 pr1)
    (connected rth2 rth1)
    (connected sh3 sh2)
    (connected bu2 bufferstation)
    (connected rcy3 rcy2)
    (connected bu1 sh3)
    (connected pr2 processingstation)
    (on c1 rth2)
    (connected as2 roboticassembly)
    (connected sh2 sh1)
    (connected bu2 bu1)
    (connected pr3 pr2)
    (connected rth1 rcy3)
    (connected rth3 rth2)
    (connected rth2 rawstorage_thermometers)
    (connected bu3 bu2)
    (stored thermo1)
    (empty c1)
    (connected rcy2 rcy1)
    (connected qu2 qualitycheck)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
