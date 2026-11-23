





(define (problem mps500-i2)

  (:domain mps500-domain)

  (:objects
    roboticassembly - assembly
    rawstorage_thermometers - rawpartswarehouse
    rth2 - conveyorbelt
    qu2 - conveyorbelt
    bu1 - conveyorbelt
    qu1 - conveyorbelt
    bu2 - conveyorbelt
    sh2 - conveyorbelt
    pr1 - conveyorbelt
    thermo1 - product
    as3 - conveyorbelt
    rth1 - conveyorbelt
    as1 - conveyorbelt
    processingstation - processing
    pr3 - conveyorbelt
    c1 - carrier
    qualitycheck - quality
    shippingarea - shipping
    c3 - carrier
    bufferstation - bufferstorage
    rcy2 - conveyorbelt
    cylinder1 - product
    rth3 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    pr2 - conveyorbelt
    rcy3 - conveyorbelt
    sh1 - conveyorbelt
    c2 - carrier
    c4 - carrier
    qu3 - conveyorbelt
    bu3 - conveyorbelt
    as2 - conveyorbelt
    rcy1 - conveyorbelt
    sh3 - conveyorbelt
  )

  (:init
    (connected pr2 processingstation)
    (connected as2 roboticassembly)
    (connected bu3 bu2)
    (empty c1)
    (connected qu3 qu2)
    (occupied qu2)
    (connected sh1 rth3)
    (on c1 rth2)
    (available thermo1 rawstorage_thermometers)
    (connected as2 as1)
    (connected as1 bu3)
    (connected as3 as2)
    (occupied rcy2)
    (occupied pr2)
    (connected pr2 pr1)
    (connected rcy1 pr3)
    (connected rcy2 rcy1)
    (occupied rth2)
    (on c4 qu2)
    (connected bu2 bu1)
    (connected pr3 pr2)
    (connected bu1 sh3)
    (connected sh2 shippingarea)
    (connected sh2 sh1)
    (connected rcy2 rawstorage_cylinders)
    (empty c3)
    (connected rth1 rcy3)
    (connected rth2 rawstorage_thermometers)
    (connected pr1 qu3)
    (empty c4)
    (connected qu1 as3)
    (connected bu2 bufferstation)
    (connected sh3 sh2)
    (on c3 pr2)
    (connected rth3 rth2)
    (connected qu2 qualitycheck)
    (connected rth2 rth1)
    (connected qu2 qu1)
    (empty c2)
    (available cylinder1 rawstorage_cylinders)
    (on c2 rcy2)
    (connected rcy3 rcy2)
  )

  (:goal (and
    (shipped thermo1)
    (shipped cylinder1)
  ))


)
