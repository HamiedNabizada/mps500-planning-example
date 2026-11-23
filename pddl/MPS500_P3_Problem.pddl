





(define (problem mps500-p3)

  (:domain mps500-p3)

  (:objects
    qu3 - conveyorbelt
    bu3 - conveyorbelt
    pr3 - conveyorbelt
    bu2 - conveyorbelt
    sh3 - conveyorbelt
    sh1 - conveyorbelt
    roboticassembly - assembly
    pr2 - conveyorbelt
    cap_inspect - capability
    bu1 - conveyorbelt
    as1 - conveyorbelt
    shippingarea - shipping
    sh2 - conveyorbelt
    pr1 - conveyorbelt
    thermo1 - product
    rcy3 - conveyorbelt
    rawstorage_cylinders - rawpartswarehouse
    cap_process - capability
    rawstorage_thermometers - rawpartswarehouse
    rcy2 - conveyorbelt
    processingstation - processing
    cap0 - capability
    cap_assemble - capability
    qu2 - conveyorbelt
    bufferstation - bufferstorage
    as3 - conveyorbelt
    rth1 - conveyorbelt
    as2 - conveyorbelt
    c1 - carrier
    qu1 - conveyorbelt
    rth2 - conveyorbelt
    rth3 - conveyorbelt
    qualitycheck - quality
    rcy1 - conveyorbelt
  )

  (:init
    (connected bu2 bufferstation)
    (provides processingstation cap_process)
    (connected pr2 pr1)
    (connected pr2 processingstation)
    (connected rcy2 rcy1)
    (connected rth2 rth1)
    (connected rcy3 rcy2)
    (connected bu2 bu1)
    (connected bu1 sh3)
    (connected as3 as2)
    (connected qu2 qu1)
    (connected sh2 sh1)
    (on c1 rth2)
    (done thermo1 cap0)
    (connected qu1 as3)
    (provides qualitycheck cap_inspect)
    (prereq cap_inspect cap_assemble)
    (final_capability cap_assemble)
    (connected bu3 bu2)
    (connected rth1 rcy3)
    (connected rcy1 pr3)
    (connected as1 bu3)
    (connected sh1 rth3)
    (provides roboticassembly cap_assemble)
    (connected qu2 qualitycheck)
    (prereq cap0 cap_process)
    (connected as2 roboticassembly)
    (connected sh2 shippingarea)
    (connected pr3 pr2)
    (connected qu3 qu2)
    (connected rcy2 rawstorage_cylinders)
    (connected as2 as1)
    (connected sh3 sh2)
    (empty c1)
    (connected rth2 rawstorage_thermometers)
    (connected rth3 rth2)
    (occupied rth2)
    (connected pr1 qu3)
    (prereq cap_process cap_inspect)
    (available thermo1 rawstorage_thermometers)
  )

  (:goal (and
    (shipped thermo1)
  ))


)
