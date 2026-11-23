





(define (problem mps500-i10)

  (:domain mps500-domain)

  (:objects
    rcy2 - conveyorbelt
    sh2 - conveyorbelt
    bu3 - conveyorbelt
    qu1 - conveyorbelt
    pr2 - conveyorbelt
    sh3 - conveyorbelt
    cylinder1 - product
    rth2 - conveyorbelt
    sh1 - conveyorbelt
    ml3 - conveyorbelt
    c2 - carrier
    bu1 - conveyorbelt
    thermo1 - product
    c1 - carrier
    shippingarea - shipping
    c4 - carrier
    as2 - conveyorbelt
    as1 - conveyorbelt
    t12 - conveyorbelt
    thermo2 - product
    c3 - carrier
    cylinder2 - product
    t11 - conveyorbelt
    ml1 - conveyorbelt
    pr1 - conveyorbelt
    bufferstation - bufferstorage
    bu2 - conveyorbelt
    ml2 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    rth1 - conveyorbelt
    pr3 - conveyorbelt
    t13 - conveyorbelt
    processingstation - processing
    qu2 - conveyorbelt
    rcy3 - conveyorbelt
    rth3 - conveyorbelt
    qualitycheck - quality
    rawstorage_thermometers - rawpartswarehouse
    qu3 - conveyorbelt
    rcy1 - conveyorbelt
    as3 - conveyorbelt
    roboticassembly - assembly
  )

  (:init
    (connected bu2 bu1)
    (connected bu1 sh3)
    (connected qu2 qu1)
    (connected qu1 t13)
    (connected rcy2 rcy1)
    (connected t11 as3)
    (connected sh3 sh2)
    (connected rth2 rth1)
    (empty c4)
    (connected pr3 pr2)
    (occupied rth2)
    (connected sh2 shippingarea)
    (available thermo1 rawstorage_thermometers)
    (connected bu3 bu2)
    (on c2 rth2)
    (connected t12 t11)
    (available cylinder1 rawstorage_cylinders)
    (connected pr2 pr1)
    (connected as3 as2)
    (connected ml1 pr3)
    (connected pr2 processingstation)
    (connected t13 t12)
    (connected bu1 ml3)
    (on c3 rcy2)
    (connected rcy1 pr3)
    (connected as2 as1)
    (connected ml3 ml2)
    (connected pr1 qu3)
    (connected as2 roboticassembly)
    (connected qu2 qualitycheck)
    (available thermo2 rawstorage_thermometers)
    (occupied pr2)
    (connected rth1 rcy3)
    (connected sh1 rth3)
    (connected ml2 ml1)
    (connected sh2 sh1)
    (empty c1)
    (available cylinder2 rawstorage_cylinders)
    (connected rcy2 rawstorage_cylinders)
    (connected rth3 rth2)
    (empty c2)
    (connected qu3 qu2)
    (occupied rcy2)
    (connected as1 bu3)
    (occupied sh2)
    (empty c3)
    (connected rcy3 rcy2)
    (connected rth2 rawstorage_thermometers)
    (on c1 sh2)
    (connected bu2 bufferstation)
    (on c4 pr2)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
