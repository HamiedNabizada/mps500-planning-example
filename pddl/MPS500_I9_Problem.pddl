





(define (problem mps500-i9)

  (:domain mps500-domain)

  (:objects
    rth3 - conveyorbelt
    t11 - conveyorbelt
    pr2 - conveyorbelt
    rcy3 - conveyorbelt
    c3 - carrier
    t12 - conveyorbelt
    bufferstation - bufferstorage
    rawstorage_cylinders - rawpartswarehouse
    rawstorage_thermometers - rawpartswarehouse
    c2 - carrier
    as2 - conveyorbelt
    bu1 - conveyorbelt
    thermo1 - product
    qualitycheck - quality
    cylinder2 - product
    qu3 - conveyorbelt
    cylinder1 - product
    shippingarea - shipping
    thermo2 - product
    sh3 - conveyorbelt
    qu2 - conveyorbelt
    c4 - carrier
    bu2 - conveyorbelt
    rcy2 - conveyorbelt
    as1 - conveyorbelt
    t13 - conveyorbelt
    as3 - conveyorbelt
    bu3 - conveyorbelt
    rth1 - conveyorbelt
    sh2 - conveyorbelt
    rcy1 - conveyorbelt
    pr3 - conveyorbelt
    c1 - carrier
    processingstation - processing
    pr1 - conveyorbelt
    sh1 - conveyorbelt
    roboticassembly - assembly
    rth2 - conveyorbelt
    qu1 - conveyorbelt
  )

  (:init
    (occupied sh2)
    (available thermo2 rawstorage_thermometers)
    (connected rcy1 pr3)
    (connected rcy2 rcy1)
    (empty c4)
    (connected as2 roboticassembly)
    (occupied pr2)
    (connected qu3 qu2)
    (connected sh2 sh1)
    (connected t12 t11)
    (connected bu2 bu1)
    (connected qu2 qualitycheck)
    (empty c1)
    (connected t11 as3)
    (connected rth3 rth2)
    (connected bu2 bufferstation)
    (connected as1 bu3)
    (connected rth2 rawstorage_thermometers)
    (available cylinder2 rawstorage_cylinders)
    (connected sh1 rth3)
    (connected qu1 t13)
    (available cylinder1 rawstorage_cylinders)
    (occupied rcy2)
    (connected bu1 sh3)
    (connected rcy2 rawstorage_cylinders)
    (empty c2)
    (connected sh2 shippingarea)
    (on c4 pr2)
    (on c1 sh2)
    (connected pr3 pr2)
    (connected pr1 qu3)
    (empty c3)
    (on c3 rcy2)
    (connected sh3 sh2)
    (occupied rth2)
    (connected rth2 rth1)
    (connected qu2 qu1)
    (connected pr2 pr1)
    (connected bu3 bu2)
    (connected t13 t12)
    (connected rth1 rcy3)
    (available thermo1 rawstorage_thermometers)
    (connected as2 as1)
    (connected as3 as2)
    (connected pr2 processingstation)
    (on c2 rth2)
    (connected rcy3 rcy2)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
