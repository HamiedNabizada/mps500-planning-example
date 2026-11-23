





(define (problem mps500-i1)

  (:domain mps500-domain)

  (:objects
    rth1 - conveyorbelt
    qu3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    bufferstation - bufferstorage
    rth2 - conveyorbelt
    pr3 - conveyorbelt
    rcy2 - conveyorbelt
    sh1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    pr2 - conveyorbelt
    bu2 - conveyorbelt
    as2 - conveyorbelt
    rcy1 - conveyorbelt
    bu1 - conveyorbelt
    processingstation - processing
    thermo2 - product
    qualitycheck - quality
    shippingarea - shipping
    sh3 - conveyorbelt
    roboticassembly - assembly
    sh2 - conveyorbelt
    as1 - conveyorbelt
    rcy3 - conveyorbelt
    c1 - carrier
    rth3 - conveyorbelt
    cylinder1 - product
    as3 - conveyorbelt
    bu3 - conveyorbelt
    pr1 - conveyorbelt
    thermo1 - product
    qu1 - conveyorbelt
    qu2 - conveyorbelt
  )

  (:init
    (available thermo2 rawstorage_thermometers)
    (connected bu1 sh3)
    (connected as3 as2)
    (connected rth2 rawstorage_thermometers)
    (connected rcy1 pr3)
    (connected as2 as1)
    (connected qu2 qualitycheck)
    (connected rcy2 rcy1)
    (connected sh2 sh1)
    (connected rth1 rcy3)
    (connected sh2 shippingarea)
    (connected sh1 rth3)
    (connected pr2 processingstation)
    (connected pr3 pr2)
    (connected bu2 bufferstation)
    (on c1 rth2)
    (available cylinder1 rawstorage_cylinders)
    (connected rth3 rth2)
    (connected rcy2 rawstorage_cylinders)
    (connected pr1 qu3)
    (connected as2 roboticassembly)
    (empty c1)
    (available thermo1 rawstorage_thermometers)
    (connected as1 bu3)
    (connected rcy3 rcy2)
    (connected qu3 qu2)
    (connected qu1 as3)
    (connected pr2 pr1)
    (connected bu2 bu1)
    (occupied rth2)
    (connected rth2 rth1)
    (connected bu3 bu2)
    (connected sh3 sh2)
    (connected qu2 qu1)
  )

  (:goal (and
    (shipped thermo2)
    (shipped thermo1)
    (shipped cylinder1)
  ))


)
