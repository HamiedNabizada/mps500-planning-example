





(define (problem mps500-v2)

  (:domain mps500-v2)

  (:objects
    bu2 - conveyorbelt
    shippingarea - shipping
    pr2 - conveyorbelt
    rcy2 - conveyorbelt
    rth2 - conveyorbelt
    as3 - conveyorbelt
    qu2 - conveyorbelt
    as2 - conveyorbelt
    bu3 - conveyorbelt
    as1 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    pr1 - conveyorbelt
    bufferstation - bufferstorage
    qualitycheck - quality
    roboticassembly - assembly
    rcy3 - conveyorbelt
    rth1 - conveyorbelt
    bu1 - conveyorbelt
    sh2 - conveyorbelt
    thermo1 - product
    qu1 - conveyorbelt
    qu3 - conveyorbelt
    c1 - carrier
    processingstation - processing
    sh3 - conveyorbelt
    sh1 - conveyorbelt
    rth3 - conveyorbelt
    pr3 - conveyorbelt
    rawstorage_thermometers - rawpartswarehouse
    rcy1 - conveyorbelt
  )

  (:init
    (connected bu2 bu1)
    (connected sh1 rth3)
    (connected rcy3 rcy2)
    (connected bu2 bufferstation)
    (connected bu1 sh3)
    (connected qu1 as3)
    (connected sh3 sh2)
    (connected sh2 sh1)
    (connected pr2 pr1)
    (connected rth1 rcy3)
    (connected rcy2 rcy1)
    (connected pr3 pr2)
    (connected as2 roboticassembly)
    (on c1 rth2)
    (connected rth2 rth1)
    (empty c1)
    (occupied rth2)
    (connected as3 as2)
    (connected qu2 qualitycheck)
    (= (energy-used) 3)
    (connected sh2 shippingarea)
    (= (total-cost) 0)
    (connected rth2 rawstorage_thermometers)
    (connected rcy1 pr3)
    (connected pr2 processingstation)
    (connected as2 as1)
    (connected qu2 qu1)
    (connected rth3 rth2)
    (connected bu3 bu2)
    (connected qu3 qu2)
    (connected as1 bu3)
    (available thermo1 rawstorage_thermometers)
    (connected pr1 qu3)
    (connected rcy2 rawstorage_cylinders)
  )

  (:goal (and
    (shipped thermo1)
  ))


  (:metric minimize (total-cost))

)
