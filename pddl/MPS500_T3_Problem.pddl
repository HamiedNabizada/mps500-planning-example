





(define (problem mps500-t3)

  (:domain mps500-t3)

  (:objects
    rcy1 - conveyorbelt
    sh3 - conveyorbelt
    bu2 - conveyorbelt
    thermo1 - thermometer
    rcy2 - conveyorbelt
    pr1 - conveyorbelt
    as1 - conveyorbelt
    pr2 - conveyorbelt
    sh2 - conveyorbelt
    sh1 - conveyorbelt
    bu3 - conveyorbelt
    pr3 - conveyorbelt
    as2 - conveyorbelt
    rth2 - conveyorbelt
    rcy3 - conveyorbelt
    bu1 - conveyorbelt
    shippingarea - shipping
    processingstation - processing
    rth3 - conveyorbelt
    qualitycheck - quality
    roboticassembly - assembly
    rth1 - conveyorbelt
    qu3 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    bufferstation - bufferstorage
    as3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    c1 - carrier
    qu1 - conveyorbelt
    cylinder1 - cylinder
    qu2 - conveyorbelt
  )

  (:init
    (connected sh1 rth3)
    (empty c1)
    (connected rcy1 pr3)
    (connected qu1 as3)
    (connected rcy2 rawstorage_cylinders)
    (connected qu2 qualitycheck)
    (connected rcy2 rcy1)
    (connected bu2 bufferstation)
    (available thermo1 rawstorage_thermometers)
    (connected bu2 bu1)
    (connected as3 as2)
    (connected pr3 pr2)
    (occupied rth2)
    (connected rth1 rcy3)
    (available cylinder1 rawstorage_cylinders)
    (connected pr2 processingstation)
    (connected sh3 sh2)
    (connected rth2 rawstorage_thermometers)
    (connected bu1 sh3)
    (connected as2 roboticassembly)
    (connected pr1 qu3)
    (connected sh2 sh1)
    (connected pr2 pr1)
    (connected as2 as1)
    (connected as1 bu3)
    (connected rth3 rth2)
    (connected qu3 qu2)
    (connected bu3 bu2)
    (connected qu2 qu1)
    (on c1 rth2)
    (connected rth2 rth1)
    (connected sh2 shippingarea)
    (connected rcy3 rcy2)
  )

  (:goal (and
    (shipped thermo1)
    (shipped cylinder1)
  ))


)
