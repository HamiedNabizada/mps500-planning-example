





(define (problem mps500-i3)

  (:domain mps500-domain)

  (:objects
    qu2 - conveyorbelt
    bu3 - conveyorbelt
    shippingarea - shipping
    roboticassembly - assembly
    rcy3 - conveyorbelt
    thermo2 - product
    bufferstation - bufferstorage
    pr1 - conveyorbelt
    c1 - carrier
    as1 - conveyorbelt
    qu3 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    bu1 - conveyorbelt
    sh2 - conveyorbelt
    qu1 - conveyorbelt
    rth3 - conveyorbelt
    rth2 - conveyorbelt
    pr2 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    sh1 - conveyorbelt
    rth1 - conveyorbelt
    pr3 - conveyorbelt
    processingstation - processing
    rcy2 - conveyorbelt
    as3 - conveyorbelt
    thermo1 - product
    qualitycheck - quality
    rcy1 - conveyorbelt
    as2 - conveyorbelt
    sh3 - conveyorbelt
    bu2 - conveyorbelt
  )

  (:init
    (connected rcy2 rawstorage_cylinders)
    (connected bu2 bu1)
    (connected as2 as1)
    (connected as2 roboticassembly)
    (empty c1)
    (connected qu1 as3)
    (available thermo1 rawstorage_thermometers)
    (connected rcy2 rcy1)
    (connected rcy1 pr3)
    (connected rth3 rth2)
    (connected rth2 rth1)
    (connected sh3 sh2)
    (connected bu2 bufferstation)
    (connected as1 bu3)
    (connected qu2 qualitycheck)
    (connected rth2 rawstorage_thermometers)
    (connected pr2 pr1)
    (connected as3 as2)
    (connected rcy3 rcy2)
    (available thermo2 rawstorage_thermometers)
    (occupied rth2)
    (connected qu2 qu1)
    (connected qu3 qu2)
    (connected pr2 processingstation)
    (connected sh2 shippingarea)
    (connected pr1 qu3)
    (connected sh1 rth3)
    (connected bu3 bu2)
    (connected rth1 rcy3)
    (connected bu1 sh3)
    (connected sh2 sh1)
    (connected pr3 pr2)
    (on c1 rth2)
  )

  (:goal (and
    (stored thermo1)
    (shipped thermo2)
  ))


)
