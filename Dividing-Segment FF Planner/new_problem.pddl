(define (problem railway-problem)



  (:domain railway)



(:objects
AC1 AC2 AC3 AC4 AC5 AC6 AC7 AC8 AC9  - StationID
BC1 BC2 BC3 BC4 BC5 BC6 BC7 BC8 BC9 BC10 BC11 BC12 BC13 BC14 BC15 BC16 BC17 BC18 BC19  - StationID
CD1 CD2 CD3 CD4 CD5 CD6 CD7 CD8 CD9  - StationID
CE1 CE2 CE3 CE4 CE5 CE6 CE7 CE8 CE9 CE10 CE11 CE12 CE13 CE14  - StationID
DF1 DF2 DF3 DF4 DF5 DF6 DF7 DF8 DF9  - StationID
EF1 EF2 EF3 EF4 EF5 EF6 EF7 EF8 EF9 EF10 EF11 EF12 EF13 EF14 EF15 EF16 EF17 EF18 EF19 EF20 EF21 EF22 EF23 EF24  - StationID


    A B C D E F - StationID



    t1 t2 - TrainId



    red  green - SegSignalStatus    



  )



  (:init



    (atLocation t1 A)



    (atLocation t2 B)



    (hasSignal A green)



    (hasSignal B green)



    (hasSignal C green)



    (hasSignal D green)



    (hasSignal E green)



    (hasSignal F green)



  (connected A AC1)

  (= (distance A AC1) 1)

  (pathFree A AC1)

  (connected AC1 AC2)

  (= (distance AC1 AC2) 1)

  (pathFree AC1 AC2)

  (connected AC2 AC3)

  (= (distance AC2 AC3) 1)

  (pathFree AC2 AC3)

  (connected AC3 AC4)

  (= (distance AC3 AC4) 1)

  (pathFree AC3 AC4)

  (connected AC4 AC5)

  (= (distance AC4 AC5) 1)

  (pathFree AC4 AC5)

  (connected AC5 AC6)

  (= (distance AC5 AC6) 1)

  (pathFree AC5 AC6)

  (connected AC6 AC7)

  (= (distance AC6 AC7) 1)

  (pathFree AC6 AC7)

  (connected AC7 AC8)

  (= (distance AC7 AC8) 1)

  (pathFree AC7 AC8)

  (connected AC8 AC9)

  (= (distance AC8 AC9) 1)

  (pathFree AC8 AC9)

  (connected AC9 C)

  (= (distance AC9 C) 1)

  (pathFree AC9 C)

  (connected B BC1)

  (= (distance B BC1) 1)

  (pathFree B BC1)

  (connected BC1 BC2)

  (= (distance BC1 BC2) 1)

  (pathFree BC1 BC2)

  (connected BC2 BC3)

  (= (distance BC2 BC3) 1)

  (pathFree BC2 BC3)

  (connected BC3 BC4)

  (= (distance BC3 BC4) 1)

  (pathFree BC3 BC4)

  (connected BC4 BC5)

  (= (distance BC4 BC5) 1)

  (pathFree BC4 BC5)

  (connected BC5 BC6)

  (= (distance BC5 BC6) 1)

  (pathFree BC5 BC6)

  (connected BC6 BC7)

  (= (distance BC6 BC7) 1)

  (pathFree BC6 BC7)

  (connected BC7 BC8)

  (= (distance BC7 BC8) 1)

  (pathFree BC7 BC8)

  (connected BC8 BC9)

  (= (distance BC8 BC9) 1)

  (pathFree BC8 BC9)

  (connected BC9 BC10)

  (= (distance BC9 BC10) 1)

  (pathFree BC9 BC10)

  (connected BC10 BC11)

  (= (distance BC10 BC11) 1)

  (pathFree BC10 BC11)

  (connected BC11 BC12)

  (= (distance BC11 BC12) 1)

  (pathFree BC11 BC12)

  (connected BC12 BC13)

  (= (distance BC12 BC13) 1)

  (pathFree BC12 BC13)

  (connected BC13 BC14)

  (= (distance BC13 BC14) 1)

  (pathFree BC13 BC14)

  (connected BC14 BC15)

  (= (distance BC14 BC15) 1)

  (pathFree BC14 BC15)

  (connected BC15 BC16)

  (= (distance BC15 BC16) 1)

  (pathFree BC15 BC16)

  (connected BC16 BC17)

  (= (distance BC16 BC17) 1)

  (pathFree BC16 BC17)

  (connected BC17 BC18)

  (= (distance BC17 BC18) 1)

  (pathFree BC17 BC18)

  (connected BC18 BC19)

  (= (distance BC18 BC19) 1)

  (pathFree BC18 BC19)

  (connected BC19 C)

  (= (distance BC19 C) 1)

  (pathFree BC19 C)

  (connected C CD1)

  (= (distance C CD1) 1)

  (pathFree C CD1)

  (connected CD1 CD2)

  (= (distance CD1 CD2) 1)

  (pathFree CD1 CD2)

  (connected CD2 CD3)

  (= (distance CD2 CD3) 1)

  (pathFree CD2 CD3)

  (connected CD3 CD4)

  (= (distance CD3 CD4) 1)

  (pathFree CD3 CD4)

  (connected CD4 CD5)

  (= (distance CD4 CD5) 1)

  (pathFree CD4 CD5)

  (connected CD5 CD6)

  (= (distance CD5 CD6) 1)

  (pathFree CD5 CD6)

  (connected CD6 CD7)

  (= (distance CD6 CD7) 1)

  (pathFree CD6 CD7)

  (connected CD7 CD8)

  (= (distance CD7 CD8) 1)

  (pathFree CD7 CD8)

  (connected CD8 CD9)

  (= (distance CD8 CD9) 1)

  (pathFree CD8 CD9)

  (connected CD9 D)

  (= (distance CD9 D) 1)

  (pathFree CD9 D)

  (connected C CE1)

  (= (distance C CE1) 1)

  (pathFree C CE1)

  (connected CE1 CE2)

  (= (distance CE1 CE2) 1)

  (pathFree CE1 CE2)

  (connected CE2 CE3)

  (= (distance CE2 CE3) 1)

  (pathFree CE2 CE3)

  (connected CE3 CE4)

  (= (distance CE3 CE4) 1)

  (pathFree CE3 CE4)

  (connected CE4 CE5)

  (= (distance CE4 CE5) 1)

  (pathFree CE4 CE5)

  (connected CE5 CE6)

  (= (distance CE5 CE6) 1)

  (pathFree CE5 CE6)

  (connected CE6 CE7)

  (= (distance CE6 CE7) 1)

  (pathFree CE6 CE7)

  (connected CE7 CE8)

  (= (distance CE7 CE8) 1)

  (pathFree CE7 CE8)

  (connected CE8 CE9)

  (= (distance CE8 CE9) 1)

  (pathFree CE8 CE9)

  (connected CE9 CE10)

  (= (distance CE9 CE10) 1)

  (pathFree CE9 CE10)

  (connected CE10 CE11)

  (= (distance CE10 CE11) 1)

  (pathFree CE10 CE11)

  (connected CE11 CE12)

  (= (distance CE11 CE12) 1)

  (pathFree CE11 CE12)

  (connected CE12 CE13)

  (= (distance CE12 CE13) 1)

  (pathFree CE12 CE13)

  (connected CE13 CE14)

  (= (distance CE13 CE14) 1)

  (pathFree CE13 CE14)

  (connected CE14 E)

  (= (distance CE14 E) 1)

  (pathFree CE14 E)

  (connected D DF1)

  (= (distance D DF1) 1)

  (pathFree D DF1)

  (connected DF1 DF2)

  (= (distance DF1 DF2) 1)

  (pathFree DF1 DF2)

  (connected DF2 DF3)

  (= (distance DF2 DF3) 1)

  (pathFree DF2 DF3)

  (connected DF3 DF4)

  (= (distance DF3 DF4) 1)

  (pathFree DF3 DF4)

  (connected DF4 DF5)

  (= (distance DF4 DF5) 1)

  (pathFree DF4 DF5)

  (connected DF5 DF6)

  (= (distance DF5 DF6) 1)

  (pathFree DF5 DF6)

  (connected DF6 DF7)

  (= (distance DF6 DF7) 1)

  (pathFree DF6 DF7)

  (connected DF7 DF8)

  (= (distance DF7 DF8) 1)

  (pathFree DF7 DF8)

  (connected DF8 DF9)

  (= (distance DF8 DF9) 1)

  (pathFree DF8 DF9)

  (connected DF9 F)

  (= (distance DF9 F) 1)

  (pathFree DF9 F)

  (connected E EF1)

  (= (distance E EF1) 1)

  (pathFree E EF1)

  (connected EF1 EF2)

  (= (distance EF1 EF2) 1)

  (pathFree EF1 EF2)

  (connected EF2 EF3)

  (= (distance EF2 EF3) 1)

  (pathFree EF2 EF3)

  (connected EF3 EF4)

  (= (distance EF3 EF4) 1)

  (pathFree EF3 EF4)

  (connected EF4 EF5)

  (= (distance EF4 EF5) 1)

  (pathFree EF4 EF5)

  (connected EF5 EF6)

  (= (distance EF5 EF6) 1)

  (pathFree EF5 EF6)

  (connected EF6 EF7)

  (= (distance EF6 EF7) 1)

  (pathFree EF6 EF7)

  (connected EF7 EF8)

  (= (distance EF7 EF8) 1)

  (pathFree EF7 EF8)

  (connected EF8 EF9)

  (= (distance EF8 EF9) 1)

  (pathFree EF8 EF9)

  (connected EF9 EF10)

  (= (distance EF9 EF10) 1)

  (pathFree EF9 EF10)

  (connected EF10 EF11)

  (= (distance EF10 EF11) 1)

  (pathFree EF10 EF11)

  (connected EF11 EF12)

  (= (distance EF11 EF12) 1)

  (pathFree EF11 EF12)

  (connected EF12 EF13)

  (= (distance EF12 EF13) 1)

  (pathFree EF12 EF13)

  (connected EF13 EF14)

  (= (distance EF13 EF14) 1)

  (pathFree EF13 EF14)

  (connected EF14 EF15)

  (= (distance EF14 EF15) 1)

  (pathFree EF14 EF15)

  (connected EF15 EF16)

  (= (distance EF15 EF16) 1)

  (pathFree EF15 EF16)

  (connected EF16 EF17)

  (= (distance EF16 EF17) 1)

  (pathFree EF16 EF17)

  (connected EF17 EF18)

  (= (distance EF17 EF18) 1)

  (pathFree EF17 EF18)

  (connected EF18 EF19)

  (= (distance EF18 EF19) 1)

  (pathFree EF18 EF19)

  (connected EF19 EF20)

  (= (distance EF19 EF20) 1)

  (pathFree EF19 EF20)

  (connected EF20 EF21)

  (= (distance EF20 EF21) 1)

  (pathFree EF20 EF21)

  (connected EF21 EF22)

  (= (distance EF21 EF22) 1)

  (pathFree EF21 EF22)

  (connected EF22 EF23)

  (= (distance EF22 EF23) 1)

  (pathFree EF22 EF23)

  (connected EF23 EF24)

  (= (distance EF23 EF24) 1)

  (pathFree EF23 EF24)

  (connected EF24 F)

  (= (distance EF24 F) 1)

  (pathFree EF24 F)

    (= (total-cost) 0)



  )



  (:goal (and



           (atLocation t1 F)



     (atLocation t2 F)



         ))



  



)



