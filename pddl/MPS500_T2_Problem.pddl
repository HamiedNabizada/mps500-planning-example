





(define (problem mps500-t2)

  (:domain mps500-t2)

  (:objects
    rth2 - conveyorbelt
    pr3 - conveyorbelt
    qualitycheck - quality
    fin2 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    fin3 - conveyorbelt
    bu2 - conveyorbelt
    as1 - conveyorbelt
    roboticassembly - assembly
    processingstation - processing
    as3 - conveyorbelt
    rth3 - conveyorbelt
    rcy1 - conveyorbelt
    pr1 - conveyorbelt
    sh3 - conveyorbelt
    qu2 - conveyorbelt
    c1 - carrier
    rth1 - conveyorbelt
    shippingarea - shipping
    sh2 - conveyorbelt
    qu1 - conveyorbelt
    bu1 - conveyorbelt
    rcy3 - conveyorbelt
    bu3 - conveyorbelt
    sh1 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    fin1 - conveyorbelt
    finishingstation - finishing
    thermo1 - product
    bufferstation - bufferstorage
    rcy2 - conveyorbelt
    qu3 - conveyorbelt
    pr2 - conveyorbelt
    as2 - conveyorbelt
  )

  (:init
    (connected qu2 qualitycheck)
    (occupied rth2)
    (connected fin2 finishingstation)
    (connected as2 as1)
    (connected bu2 bufferstation)
    (connected rth1 rcy3)
    (empty c1)
    (connected bu1 sh3)
    (connected pr2 pr1)
    (available thermo1 rawstorage_thermometers)
    (connected rcy3 rcy2)
    (connected qu1 as3)
    (on c1 rth2)
    (connected fin1 bu3)
    (connected as2 roboticassembly)
    (connected rth3 rth2)
    (connected qu3 qu2)
    (connected fin3 fin2)
    (connected sh3 sh2)
    (connected bu3 bu2)
    (connected rth2 rawstorage_thermometers)
    (connected as3 as2)
    (connected pr2 processingstation)
    (connected fin2 fin1)
    (connected rcy2 rcy1)
    (connected rth2 rth1)
    (connected pr1 qu3)
    (connected sh1 rth3)
    (connected bu2 bu1)
    (connected sh2 shippingarea)
    (connected sh2 sh1)
    (connected rcy1 pr3)
    (connected qu2 qu1)
    (connected as1 fin3)
    (connected rcy2 rawstorage_cylinders)
    (connected pr3 pr2)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
