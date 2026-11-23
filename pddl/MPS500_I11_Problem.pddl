





(define (problem mps500-i11)

  (:domain mps500-domain)

  (:objects
    c1 - carrier
    qu1 - conveyorbelt
    as3 - conveyorbelt
    pr1 - conveyorbelt
    pr2 - conveyorbelt
    roboticassembly - assembly
    as1 - conveyorbelt
    qu2 - conveyorbelt
    bu1 - conveyorbelt
    t12 - conveyorbelt
    c3 - carrier
    mr3 - conveyorbelt
    t13 - conveyorbelt
    sh3 - conveyorbelt
    rth1 - conveyorbelt
    sh2 - conveyorbelt
    rcy1 - conveyorbelt
    c2 - carrier
    rawstorage_cylinders - rawpartswarehouse
    qu3 - conveyorbelt
    mr2 - conveyorbelt
    bu3 - conveyorbelt
    shippingarea - shipping
    cylinder2 - product
    t11 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    c4 - carrier
    qualitycheck - quality
    thermo1 - product
    bufferstation - bufferstorage
    mr1 - conveyorbelt
    rth2 - conveyorbelt
    cylinder1 - product
    rcy3 - conveyorbelt
    as2 - conveyorbelt
    rth3 - conveyorbelt
    sh1 - conveyorbelt
    rcy2 - conveyorbelt
    thermo2 - product
    pr3 - conveyorbelt
    processingstation - processing
    bu2 - conveyorbelt
  )

  (:init
    (connected pr1 qu3)
    (connected pr2 processingstation)
    (connected t13 t12)
    (connected pr1 mr3)
    (connected rth2 rawstorage_thermometers)
    (connected t12 t11)
    (connected qu2 qu1)
    (connected rcy2 rawstorage_cylinders)
    (connected bu2 bu1)
    (connected sh2 shippingarea)
    (connected as2 roboticassembly)
    (connected rth1 rcy3)
    (connected bu1 sh3)
    (available thermo2 rawstorage_thermometers)
    (connected as3 as2)
    (connected rth2 rth1)
    (connected sh1 rth3)
    (empty c3)
    (occupied rcy2)
    (connected pr3 pr2)
    (connected qu1 t13)
    (available cylinder1 rawstorage_cylinders)
    (available thermo1 rawstorage_thermometers)
    (connected sh3 sh2)
    (empty c1)
    (connected rth3 rth2)
    (connected bu3 bu2)
    (connected mr2 mr1)
    (connected rcy3 rcy2)
    (empty c2)
    (occupied pr2)
    (occupied rth2)
    (on c3 rcy2)
    (connected as1 bu3)
    (on c1 sh2)
    (connected pr2 pr1)
    (connected qu3 qu2)
    (on c2 rth2)
    (connected qu2 qualitycheck)
    (connected rcy2 rcy1)
    (occupied sh2)
    (connected mr1 bu3)
    (connected bu2 bufferstation)
    (available cylinder2 rawstorage_cylinders)
    (connected t11 as3)
    (connected rcy1 pr3)
    (empty c4)
    (connected sh2 sh1)
    (on c4 pr2)
    (connected as2 as1)
    (connected mr3 mr2)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
