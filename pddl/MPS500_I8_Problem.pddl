





(define (problem mps500-i8)

  (:domain mps500-domain)

  (:objects
    thermo1 - product
    roboticassembly - assembly
    c4 - carrier
    ml2 - conveyorbelt
    bufferstation - bufferstorage
    processingstation - processing
    rcy1 - conveyorbelt
    as2 - conveyorbelt
    bu2 - conveyorbelt
    shippingarea - shipping
    sh2 - conveyorbelt
    rcy2 - conveyorbelt
    pr3 - conveyorbelt
    rth3 - conveyorbelt
    thermo2 - product
    rawstorage_cylinders - rawpartswarehouse
    pr1 - conveyorbelt
    qualitycheck - quality
    c3 - carrier
    sh1 - conveyorbelt
    cylinder1 - product
    t12 - conveyorbelt
    as3 - conveyorbelt
    c2 - carrier
    mr2 - conveyorbelt
    sh3 - conveyorbelt
    qu2 - conveyorbelt
    bu3 - conveyorbelt
    rth2 - conveyorbelt
    cylinder2 - product
    qu1 - conveyorbelt
    t11 - conveyorbelt
    bu1 - conveyorbelt
    pr2 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    mr3 - conveyorbelt
    ml3 - conveyorbelt
    qu3 - conveyorbelt
    as1 - conveyorbelt
    c1 - carrier
    rcy3 - conveyorbelt
    ml1 - conveyorbelt
    mr1 - conveyorbelt
    rth1 - conveyorbelt
    t13 - conveyorbelt
  )

  (:init
    (connected rth2 rth1)
    (connected as2 roboticassembly)
    (on c1 sh2)
    (connected rcy1 pr3)
    (available thermo1 rawstorage_thermometers)
    (occupied rth2)
    (connected as1 bu3)
    (connected rth1 rcy3)
    (on c4 pr2)
    (available cylinder1 rawstorage_cylinders)
    (empty c3)
    (connected rth3 rth2)
    (connected pr1 mr3)
    (connected qu2 qu1)
    (available cylinder2 rawstorage_cylinders)
    (connected bu1 ml3)
    (connected rcy3 rcy2)
    (connected qu1 t13)
    (empty c1)
    (connected bu1 sh3)
    (connected t13 t12)
    (connected ml3 ml2)
    (connected pr2 processingstation)
    (connected bu3 bu2)
    (occupied sh2)
    (connected sh1 rth3)
    (connected mr2 mr1)
    (connected t11 as3)
    (connected ml2 ml1)
    (connected mr1 bu3)
    (connected sh2 shippingarea)
    (on c3 rcy2)
    (on c2 rth2)
    (connected rcy2 rawstorage_cylinders)
    (connected pr3 pr2)
    (connected qu3 qu2)
    (connected qu2 qualitycheck)
    (connected bu2 bu1)
    (available thermo2 rawstorage_thermometers)
    (occupied rcy2)
    (connected bu2 bufferstation)
    (connected pr1 qu3)
    (connected sh2 sh1)
    (connected rcy2 rcy1)
    (connected sh3 sh2)
    (connected rth2 rawstorage_thermometers)
    (occupied pr2)
    (empty c4)
    (connected t12 t11)
    (empty c2)
    (connected as3 as2)
    (connected pr2 pr1)
    (connected mr3 mr2)
    (connected as2 as1)
    (connected ml1 pr3)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
