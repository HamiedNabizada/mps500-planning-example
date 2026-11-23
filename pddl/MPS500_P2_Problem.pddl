





(define (problem mps500-p2)

  (:domain mps500-p2)

  (:objects
    thermo1 - product
    rcy3 - conveyorbelt
    pr2 - conveyorbelt
    qu2 - conveyorbelt
    rth2 - conveyorbelt
    pr3 - conveyorbelt
    sh3 - conveyorbelt
    qu3 - conveyorbelt
    pr1 - conveyorbelt
    as2 - conveyorbelt
    sh1 - conveyorbelt
    shippingarea - shipping
    part_th1 - component
    c1 - carrier
    bu2 - conveyorbelt
    part_cy1 - component
    rawstorage_cylinders - rawpartswarehouse
    bufferstation - bufferstorage
    rawstorage_thermometers - rawpartswarehouse
    cylinder1 - product
    bu3 - conveyorbelt
    bu1 - conveyorbelt
    as3 - conveyorbelt
    rth1 - conveyorbelt
    qu1 - conveyorbelt
    qualitycheck - quality
    sh2 - conveyorbelt
    rcy1 - conveyorbelt
    processingstation - processing
    roboticassembly - assembly
    rcy2 - conveyorbelt
    as1 - conveyorbelt
    rth3 - conveyorbelt
  )

  (:init
    (connected qu2 qualitycheck)
    (connected sh2 sh1)
    (connected rcy1 pr3)
    (connected pr2 processingstation)
    (connected rth2 rth1)
    (connected qu3 qu2)
    (part_at part_th1 roboticassembly)
    (connected bu1 sh3)
    (connected as3 as2)
    (connected rth3 rth2)
    (connected pr2 pr1)
    (connected pr1 qu3)
    (connected as2 as1)
    (connected bu2 bufferstation)
    (fits part_th1 thermo1)
    (connected qu2 qu1)
    (fits part_cy1 cylinder1)
    (connected as2 roboticassembly)
    (on c1 rth2)
    (connected qu1 as3)
    (part_at part_cy1 roboticassembly)
    (available thermo1 rawstorage_thermometers)
    (occupied rth2)
    (connected rth1 rcy3)
    (connected rcy2 rcy1)
    (connected sh2 shippingarea)
    (connected as1 bu3)
    (connected pr3 pr2)
    (connected sh3 sh2)
    (available cylinder1 rawstorage_cylinders)
    (empty c1)
    (connected sh1 rth3)
    (connected rcy3 rcy2)
    (connected rcy2 rawstorage_cylinders)
    (connected bu3 bu2)
    (connected rth2 rawstorage_thermometers)
    (connected bu2 bu1)
  )

  (:goal (and
    (shipped cylinder1)
    (shipped thermo1)
  ))


)
