(declare-sort V 0)
(declare-fun U1 (V) Bool)
(declare-fun U2 (V) Bool)
(declare-fun U3 (V) Bool)
(declare-fun U4 (V) Bool)
(declare-fun U5 (V) Bool)
(declare-fun U6 (V) Bool)
(declare-fun U7 (V) Bool)
(declare-fun U8 (V) Bool)
(declare-fun U9 (V) Bool)
(declare-fun U10 (V) Bool)
(declare-fun U11 (V) Bool)
(declare-fun U12 (V) Bool)
(declare-fun U13 (V) Bool)
(declare-fun U14 (V) Bool)
(declare-fun U15 (V) Bool)
(declare-fun U16 (V) Bool)
(declare-fun U17 (V) Bool)
(declare-fun U18 (V) Bool)
(declare-fun U19 (V) Bool)
(declare-fun U20 (V) Bool)
(declare-fun U21 (V) Bool)
(declare-fun U22 (V) Bool)
(declare-fun U23 (V) Bool)
(declare-fun U24 (V) Bool)
(declare-fun U25 (V) Bool)
(declare-fun U26 (V) Bool)
(declare-fun U27 (V) Bool)
(declare-fun U28 (V) Bool)
(declare-fun U29 (V) Bool)
(declare-fun U30 (V) Bool)
(declare-fun U31 (V) Bool)
(declare-fun U32 (V) Bool)
(declare-fun U33 (V) Bool)
(declare-fun U34 (V) Bool)
(declare-fun U35 (V) Bool)
(declare-fun U36 (V) Bool)
(declare-fun U37 (V) Bool)
(declare-fun U38 (V) Bool)
(declare-fun U39 (V) Bool)
(declare-fun U40 (V) Bool)
(declare-fun R1 (V V) Bool)
(declare-fun R2 (V V) Bool)
(declare-fun R3 (V V) Bool)
(declare-fun R4 (V V) Bool)
(declare-fun R5 (V V) Bool)
(declare-fun R6 (V V) Bool)
(declare-fun R7 (V V) Bool)
(declare-fun R8 (V V) Bool)
(declare-fun R9 (V V) Bool)
(declare-fun R10 (V V) Bool)
(declare-fun R11 (V V) Bool)
(declare-fun R12 (V V) Bool)
(declare-fun R13 (V V) Bool)
(declare-fun R14 (V V) Bool)
(declare-fun R15 (V V) Bool)
(declare-fun R16 (V V) Bool)
(declare-fun R17 (V V) Bool)
(declare-fun R18 (V V) Bool)
(declare-fun R19 (V V) Bool)
(declare-fun R20 (V V) Bool)
(declare-fun R21 (V V) Bool)
(declare-fun R22 (V V) Bool)
(declare-fun R23 (V V) Bool)
(declare-fun R24 (V V) Bool)
(declare-fun R25 (V V) Bool)
(declare-fun R26 (V V) Bool)
(declare-fun R27 (V V) Bool)
(declare-fun R28 (V V) Bool)
(declare-fun R29 (V V) Bool)
(declare-fun R30 (V V) Bool)
(declare-fun R31 (V V) Bool)
(declare-fun R32 (V V) Bool)
(declare-fun R33 (V V) Bool)
(declare-fun R34 (V V) Bool)
(declare-fun R35 (V V) Bool)
(declare-fun R36 (V V) Bool)
(declare-fun R37 (V V) Bool)
(declare-fun R38 (V V) Bool)
(declare-fun R39 (V V) Bool)
(declare-fun R40 (V V) Bool)

(assert (forall ((x V)) (and (or (not (U17 x)) (not (R8 x x)) (R17 x x) ) (or (not (U39 x)) (not (U12 x)) (not (U9 x)) ) (or (not (R16 x x)) (not (R26 x x)) (not (R8 x x)) ) (or (R8 x x) (R5 x x) (not (R24 x x)) ) (or (not (U31 x)) (R39 x x) (R23 x x) ) (or (not (R7 x x)) (R30 x x) (not (R15 x x)) ) (or (R26 x x) (not (R21 x x)) (R17 x x) ) (or (R7 x x) (not (U28 x)) (not (U1 x)) ) (or (U23 x) (not (R29 x x)) (R3 x x) ) (or (not (R40 x x)) (not (R17 x x)) (U7 x) ) (or (not (U7 x)) (not (R25 x x)) (not (U23 x)) ) (or (not (U12 x)) (U6 x) (U9 x) ) (or (not (R3 x x)) (not (U23 x)) (U9 x) ) (or (not (U22 x)) (R10 x x) (U14 x) ) (or (U27 x) (not (R2 x x)) (R31 x x) ) (or (U28 x) (not (R37 x x)) (U4 x) ) (or (U14 x) (not (U18 x)) (U15 x) ) (or (not (R20 x x)) (R13 x x) (not (R26 x x)) ) (or (R38 x x) (R22 x x) (not (U1 x)) ) (or (R16 x x) (R13 x x) (not (R36 x x)) ) (or (not (U38 x)) (not (R22 x x)) (U25 x) ) (or (U19 x) (R29 x x) (R20 x x) ) (or (not (R40 x x)) (R9 x x) (R17 x x) ) (or (not (R1 x x)) (R19 x x) (not (R18 x x)) ) (or (R4 x x) (U39 x) (R6 x x) ) (or (U11 x) (not (U36 x)) (U35 x) ) (or (R27 x x) (not (U17 x)) (not (U3 x)) ) (or (not (R4 x x)) (U6 x) (R6 x x) ) (or (R2 x x) (not (R27 x x)) (R23 x x) ) (or (R33 x x) (not (R7 x x)) (not (R24 x x)) ) (or (not (R12 x x)) (R28 x x) (not (R24 x x)) ) (or (U6 x) (R27 x x) (R2 x x) ) (or (not (U24 x)) (not (U31 x)) (R8 x x) ) (or (U9 x) (R13 x x) (U4 x) ) (or (not (R4 x x)) (R25 x x) (U2 x) ) (or (not (R40 x x)) (not (R10 x x)) (not (R6 x x)) ) (or (U40 x) (R20 x x) (not (R35 x x)) ) (or (not (U30 x)) (not (U10 x)) (R7 x x) ) (or (R40 x x) (R33 x x) (not (U20 x)) ) (or (R29 x x) (not (U16 x)) (not (R3 x x)) ) (or (not (R28 x x)) (R30 x x) (not (U35 x)) ) (or (not (R2 x x)) (R34 x x) (R12 x x) ) (or (not (R7 x x)) (R36 x x) (U34 x) ) (or (R8 x x) (R26 x x) (U31 x) ) (or (not (U30 x)) (not (U14 x)) (not (U10 x)) ) (or (R31 x x) (not (R1 x x)) (U3 x) ) (or (not (U19 x)) (U34 x) (R30 x x) ) (or (R11 x x) (R28 x x) (not (U29 x)) ) (or (R36 x x) (not (R1 x x)) (R33 x x) ) (or (not (R30 x x)) (U20 x) (not (R38 x x)) ) (or (R35 x x) (not (R23 x x)) (not (U26 x)) ) (or (R3 x x) (not (U18 x)) (not (U8 x)) ) (or (U29 x) (R39 x x) (U26 x) ) (or (R15 x x) (not (U34 x)) (not (R29 x x)) ) (or (R39 x x) (not (R9 x x)) (U20 x) ) (or (U34 x) (not (U23 x)) (R13 x x) ) (or (U30 x) (U34 x) (U27 x) ) (or (U5 x) (not (U10 x)) (U35 x) ) (or (not (R17 x x)) (not (R2 x x)) (not (U28 x)) ) (or (not (R35 x x)) (U16 x) (not (R19 x x)) ) (or (U35 x) (not (U25 x)) (R20 x x) ) (or (U1 x) (U20 x) (not (U26 x)) ) (or (U16 x) (U19 x) (U2 x) ) (or (not (R40 x x)) (not (U6 x)) (not (R28 x x)) ) (or (R32 x x) (U38 x) (U4 x) ) (or (U3 x) (not (R27 x x)) (not (R38 x x)) ) (or (U3 x) (not (R23 x x)) (not (U27 x)) ) (or (not (R11 x x)) (not (U32 x)) (U3 x) ) (or (not (U1 x)) (U30 x) (R36 x x) ) (or (not (U3 x)) (R8 x x) (R34 x x) ) (or (U39 x) (not (R6 x x)) (U17 x) ) (or (U13 x) (not (U9 x)) (not (U32 x)) ) (or (U10 x) (not (U36 x)) (R10 x x) ) (or (not (R19 x x)) (U25 x) (not (R38 x x)) ) (or (R3 x x) (not (U29 x)) (not (R35 x x)) ) (or (not (U16 x)) (not (R17 x x)) (U27 x) ) (or (not (U21 x)) (R2 x x) (not (U31 x)) ) (or (R27 x x) (not (U37 x)) (not (R4 x x)) ) (or (not (R29 x x)) (R20 x x) (R13 x x) ) (or (R36 x x) (R33 x x) (R29 x x) ) (or (not (R31 x x)) (not (R36 x x)) (U16 x) ) (or (U26 x) (U18 x) (not (R29 x x)) ) (or (not (R2 x x)) (U30 x) (R40 x x) ) (or (U25 x) (U26 x) (U17 x) ) (or (R1 x x) (not (U28 x)) (U39 x) ) (or (not (R39 x x)) (R37 x x) (R4 x x) ) (or (not (U14 x)) (R26 x x) (U25 x) ) (or (not (U8 x)) (R34 x x) (U25 x) ) (or (not (R3 x x)) (U37 x) (not (U39 x)) ) (or (not (R1 x x)) (not (R4 x x)) (U27 x) ) (or (U29 x) (U9 x) (R21 x x) ) (or (not (U28 x)) (U14 x) (R25 x x) ) (or (not (R11 x x)) (U15 x) (not (U10 x)) ) (or (not (U32 x)) (not (R12 x x)) (not (U22 x)) ) (or (U35 x) (not (R38 x x)) (not (U16 x)) ) (or (R25 x x) (not (R37 x x)) (R23 x x) ) (or (R6 x x) (R37 x x) (not (U7 x)) ) (or (U3 x) (U36 x) (R7 x x) ) (or (not (R37 x x)) (not (U37 x)) (R16 x x) ) (or (not (R24 x x)) (R37 x x) (U17 x) ) (or (not (U25 x)) (R30 x x) (not (R23 x x)) ) (or (not (R29 x x)) (U29 x) (not (U29 x)) ) (or (not (U2 x)) (not (U32 x)) (not (U39 x)) ) (or (U30 x) (R12 x x) (not (U12 x)) ) (or (not (U36 x)) (not (U35 x)) (R36 x x) ) (or (R7 x x) (not (R9 x x)) (R21 x x) ) (or (U8 x) (not (U40 x)) (not (R33 x x)) ) (or (not (U40 x)) (not (R22 x x)) (not (R2 x x)) ) (or (U35 x) (R35 x x) (not (U14 x)) ) (or (R30 x x) (not (R26 x x)) (not (R33 x x)) ) (or (R30 x x) (not (R22 x x)) (not (R17 x x)) ) (or (not (R28 x x)) (not (U24 x)) (not (U11 x)) ) (or (R5 x x) (not (R40 x x)) (not (R21 x x)) ) (or (not (R1 x x)) (not (R32 x x)) (R6 x x) ) (or (not (R35 x x)) (R16 x x) (R3 x x) ) (or (not (U15 x)) (not (R36 x x)) (R22 x x) ) (or (R24 x x) (not (R18 x x)) (U3 x) ) (or (not (R34 x x)) (U26 x) (not (R17 x x)) ) (or (not (R39 x x)) (R26 x x) (U39 x) ) (or (U10 x) (U35 x) (not (U38 x)) ) (or (not (U8 x)) (R3 x x) (R2 x x) ) (or (not (R11 x x)) (not (R40 x x)) (R39 x x) ) (or (R31 x x) (not (U12 x)) (not (U36 x)) ) (or (not (R1 x x)) (not (R30 x x)) (R16 x x) ) (or (not (R7 x x)) (U23 x) (R25 x x) ) (or (not (R37 x x)) (U33 x) (U13 x) ) (or (not (U27 x)) (R34 x x) (not (U11 x)) ) (or (not (R30 x x)) (R9 x x) (not (R28 x x)) ) (or (not (R11 x x)) (U14 x) (R2 x x) ) (or (not (U13 x)) (not (R11 x x)) (R22 x x) ) (or (R22 x x) (U17 x) (U33 x) ) (or (not (R36 x x)) (not (R12 x x)) (not (R27 x x)) ) (or (not (R13 x x)) (not (R37 x x)) (not (U15 x)) ) (or (not (R1 x x)) (R8 x x) (not (U26 x)) ) (or (not (U28 x)) (not (R24 x x)) (R39 x x) ) (or (not (U26 x)) (not (U3 x)) (not (R6 x x)) ) (or (not (R18 x x)) (R11 x x) (U13 x) ) (or (not (U25 x)) (U17 x) (U33 x) ) (or (not (U17 x)) (not (R28 x x)) (U27 x) ) (or (not (U40 x)) (not (R3 x x)) (not (U7 x)) ) (or (not (U29 x)) (U39 x) (not (R36 x x)) ) (or (U20 x) (not (R13 x x)) (not (U26 x)) ) (or (not (R33 x x)) (not (U38 x)) (U10 x) ) (or (not (U6 x)) (not (U26 x)) (R33 x x) ) (or (not (R28 x x)) (U5 x) (U3 x) ) (or (R8 x x) (not (U27 x)) (not (R12 x x)) ) (or (not (U22 x)) (not (R38 x x)) (not (R27 x x)) ) (or (not (R17 x x)) (not (R16 x x)) (not (R14 x x)) ) (or (R22 x x) (not (U26 x)) (R27 x x) ) (or (U35 x) (U25 x) (not (U31 x)) ) (or (not (U17 x)) (R11 x x) (not (U34 x)) ) (or (not (R17 x x)) (R13 x x) (U4 x) ) (or (not (U34 x)) (not (R34 x x)) (not (U28 x)) ) (or (R18 x x) (U26 x) (not (R30 x x)) ) (or (R36 x x) (U2 x) (R28 x x) ) (or (U4 x) (R9 x x) (not (R8 x x)) ) (or (R17 x x) (R30 x x) (R2 x x) ) (or (not (U32 x)) (U33 x) (R30 x x) ) (or (R39 x x) (U34 x) (U6 x) ) (or (not (R1 x x)) (not (R19 x x)) (not (R37 x x)) ) (or (not (U1 x)) (not (U4 x)) (not (R9 x x)) ) (or (R24 x x) (U2 x) (not (U8 x)) ) (or (not (R17 x x)) (not (R21 x x)) (not (U24 x)) ) (or (not (R40 x x)) (R34 x x) (not (U36 x)) ) (or (R12 x x) (U40 x) (not (U38 x)) ) (or (not (U35 x)) (not (U33 x)) (R30 x x) ) (or (U10 x) (not (R16 x x)) (not (R17 x x)) ) (or (U37 x) (not (R33 x x)) (U5 x) ) (or (U16 x) (not (U1 x)) (U40 x) ) (or (U31 x) (not (R8 x x)) (not (U30 x)) ) (or (U7 x) (not (R3 x x)) (R23 x x) ) (or (not (R4 x x)) (U13 x) (R29 x x) ) (or (R28 x x) (not (R16 x x)) (U23 x) ) (or (not (U34 x)) (not (R11 x x)) (R1 x x) ) (or (not (U27 x)) (not (R1 x x)) (U12 x) ) (or (not (R38 x x)) (not (U6 x)) (R15 x x) ) (or (not (R27 x x)) (not (U31 x)) (U12 x) ) (or (not (R35 x x)) (U12 x) (not (U24 x)) ) (or (R17 x x) (U10 x) (U11 x) ) (or (U36 x) (not (R13 x x)) (not (U40 x)) ) (or (not (R24 x x)) (not (U37 x)) (R23 x x) ) (or (not (R27 x x)) (not (R15 x x)) (not (U2 x)) ) (or (R26 x x) (not (R31 x x)) (not (U40 x)) ) (or (U7 x) (not (U22 x)) (R19 x x) ) (or (not (R23 x x)) (U9 x) (not (R14 x x)) ) (or (not (U26 x)) (R34 x x) (not (U9 x)) ) (or (R7 x x) (R22 x x) (not (R14 x x)) ) (or (U18 x) (U38 x) (not (R18 x x)) ) (or (not (U32 x)) (U9 x) (not (U29 x)) ) (or (not (U30 x)) (U16 x) (not (R5 x x)) ) (or (R11 x x) (not (U32 x)) (not (R19 x x)) ) (or (not (U30 x)) (U11 x) (not (U23 x)) ) (or (R33 x x) (not (U36 x)) (not (U10 x)) ) (or (U16 x) (not (U19 x)) (U7 x) ) (or (U16 x) (not (R35 x x)) (R21 x x) ) (or (R23 x x) (not (U33 x)) (not (R28 x x)) ) (or (not (U1 x)) (U26 x) (not (U10 x)) ) (or (R33 x x) (U2 x) (R32 x x) ) (or (U26 x) (not (U5 x)) (not (R10 x x)) ) (or (not (U19 x)) (not (U27 x)) (R23 x x) ) (or (not (U32 x)) (R19 x x) (R5 x x) ) (or (U30 x) (not (U22 x)) (U13 x) ) (or (U24 x) (R27 x x) (R31 x x) ) (or (not (U12 x)) (R1 x x) (not (R19 x x)) ) (or (not (U22 x)) (not (U17 x)) (not (R30 x x)) ) (or (not (R7 x x)) (not (U25 x)) (U31 x) ) (or (U30 x) (not (U6 x)) (not (R36 x x)) ) (or (U14 x) (R35 x x) (U12 x) ) (or (R6 x x) (U33 x) (not (U5 x)) ) (or (R11 x x) (R40 x x) (not (U6 x)) ) (or (R32 x x) (not (U39 x)) (not (R10 x x)) ) (or (not (R38 x x)) (U4 x) (U36 x) ) (or (R12 x x) (U10 x) (U26 x) ) (or (not (R33 x x)) (U5 x) (not (R39 x x)) ) (or (R33 x x) (R18 x x) (not (U18 x)) ) (or (not (R1 x x)) (U14 x) (not (R23 x x)) ) (or (U12 x) (R39 x x) (U18 x) ) (or (U23 x) (U40 x) (U19 x) ) (or (U20 x) (not (R34 x x)) (R20 x x) ) (or (U26 x) (R34 x x) (not (R1 x x)) ) (or (U2 x) (R9 x x) (not (U17 x)) ) (or (R40 x x) (not (R30 x x)) (not (R7 x x)) ) (or (R24 x x) (not (U19 x)) (R8 x x) ) (or (not (U26 x)) (U23 x) (R16 x x) ) (or (U20 x) (U8 x) (U33 x) ) (or (not (U17 x)) (R33 x x) (not (R13 x x)) ) (or (U17 x) (not (R11 x x)) (R32 x x) ) (or (not (R16 x x)) (not (U19 x)) (R29 x x) ) (or (not (U8 x)) (not (R33 x x)) (U16 x) ) (or (R30 x x) (not (U1 x)) (U28 x) ) (or (R15 x x) (U15 x) (not (U25 x)) ) (or (not (U13 x)) (U25 x) (not (U33 x)) ) (or (not (R35 x x)) (R11 x x) (U25 x) ) (or (R34 x x) (R5 x x) (U39 x) ) (or (U17 x) (U32 x) (U10 x) ) (or (R25 x x) (not (U16 x)) (not (R10 x x)) ) (or (not (U14 x)) (not (R2 x x)) (U30 x) ) (or (not (R23 x x)) (R36 x x) (R17 x x) ) (or (not (R31 x x)) (not (R2 x x)) (not (U23 x)) ) (or (not (U26 x)) (U36 x) (not (R13 x x)) ) (or (not (U31 x)) (not (U3 x)) (not (R39 x x)) ) (or (not (U11 x)) (U2 x) (not (R20 x x)) ) (or (not (R38 x x)) (not (R27 x x)) (R15 x x) ) (or (U10 x) (R23 x x) (not (R30 x x)) ) (or (not (U1 x)) (U19 x) (R33 x x) ) (or (R20 x x) (R31 x x) (R18 x x) ) (or (not (U40 x)) (R35 x x) (U30 x) ) (or (not (U3 x)) (not (U34 x)) (not (R26 x x)) ) (or (not (R29 x x)) (not (U39 x)) (not (U13 x)) ) (or (not (R37 x x)) (U36 x) (not (R9 x x)) ) (or (U28 x) (not (U39 x)) (not (R32 x x)) ) (or (U37 x) (U2 x) (U6 x) ) (or (U6 x) (U11 x) (U37 x) ) (or (R7 x x) (not (R2 x x)) (U20 x) ) (or (not (U26 x)) (U10 x) (R9 x x) ) (or (not (U3 x)) (not (U21 x)) (R20 x x) ) (or (not (U11 x)) (not (R13 x x)) (not (U23 x)) ) (or (U5 x) (R13 x x) (R10 x x) ) (or (R1 x x) (U35 x) (U26 x) ) (or (not (U28 x)) (U13 x) (not (U19 x)) ) (or (not (R37 x x)) (not (R11 x x)) (not (R30 x x)) ) (or (R30 x x) (not (U4 x)) (not (U6 x)) ) (or (U33 x) (R39 x x) (not (U13 x)) ) (or (not (U33 x)) (not (U1 x)) (not (R25 x x)) ) (or (not (R18 x x)) (not (U28 x)) (U20 x) ) (or (not (U7 x)) (not (R33 x x)) (not (R34 x x)) ) (or (U9 x) (U20 x) (not (R32 x x)) ) (or (R24 x x) (not (R14 x x)) (not (R33 x x)) ) (or (U21 x) (not (U9 x)) (R1 x x) ) (or (R17 x x) (not (R17 x x)) (not (R7 x x)) ) (or (not (R29 x x)) (not (R27 x x)) (U23 x) ) (or (R27 x x) (not (U21 x)) (R10 x x) ) (or (not (R38 x x)) (U28 x) (not (R2 x x)) ) (or (not (U27 x)) (R35 x x) (not (R24 x x)) ) (or (R32 x x) (not (U4 x)) (R12 x x) ) (or (R33 x x) (not (R3 x x)) (R32 x x) ) (or (not (R18 x x)) (R26 x x) (R23 x x) ) (or (not (U33 x)) (R10 x x) (R11 x x) ) (or (R6 x x) (not (R35 x x)) (not (R8 x x)) ) (or (not (U2 x)) (R1 x x) (not (R20 x x)) ) (or (not (R40 x x)) (not (R17 x x)) (U30 x) ) (or (not (R14 x x)) (not (U16 x)) (R33 x x) ) (or (not (R1 x x)) (not (U14 x)) (R40 x x) ) (or (not (R13 x x)) (not (U6 x)) (R6 x x) ) (or (not (U37 x)) (not (U34 x)) (not (R27 x x)) ) (or (not (R27 x x)) (not (R3 x x)) (R5 x x) ) (or (R17 x x) (R35 x x) (not (R3 x x)) ) (or (not (R2 x x)) (R23 x x) (R11 x x) ) (or (R1 x x) (R25 x x) (not (U19 x)) ) (or (not (R7 x x)) (U15 x) (not (U11 x)) ) (or (R23 x x) (not (U36 x)) (not (U23 x)) ) (or (not (U39 x)) (not (U23 x)) (not (R5 x x)) ) (or (R9 x x) (U12 x) (not (R25 x x)) ) (or (not (R29 x x)) (not (R39 x x)) (U34 x) ) (or (not (R32 x x)) (R23 x x) (U13 x) ) (or (R29 x x) (not (U34 x)) (R35 x x) ) (or (not (R20 x x)) (not (U38 x)) (not (U12 x)) ) (or (not (R7 x x)) (not (R34 x x)) (U9 x) ) (or (U1 x) (R2 x x) (not (U30 x)) ) (or (R15 x x) (U4 x) (not (U29 x)) ) (or (R7 x x) (R33 x x) (not (R10 x x)) ) (or (not (R38 x x)) (not (U9 x)) (not (U15 x)) ) (or (R38 x x) (not (U2 x)) (not (U3 x)) ) (or (not (R16 x x)) (not (U24 x)) (not (R24 x x)) ) (or (not (U25 x)) (U13 x) (not (U20 x)) ) (or (U34 x) (not (R14 x x)) (U26 x) ) (or (not (R25 x x)) (U10 x) (not (U24 x)) ) (or (U2 x) (R37 x x) (not (U17 x)) ) (or (R15 x x) (R36 x x) (not (U6 x)) ) (or (not (R8 x x)) (not (U28 x)) (not (R17 x x)) ) (or (R25 x x) (R35 x x) (not (R8 x x)) ) (or (R10 x x) (not (R18 x x)) (U13 x) ) (or (R37 x x) (U6 x) (U33 x) ) (or (U28 x) (U33 x) (not (R32 x x)) ) (or (not (R27 x x)) (not (U32 x)) (R35 x x) ) (or (R2 x x) (U39 x) (U33 x) ) (or (R3 x x) (U29 x) (R1 x x) ) (or (R18 x x) (R8 x x) (not (U23 x)) ) (or (not (U32 x)) (not (R8 x x)) (not (R19 x x)) ) (or (not (U7 x)) (R10 x x) (not (U1 x)) ) (or (not (R29 x x)) (U22 x) (not (R1 x x)) ) (or (not (R25 x x)) (R28 x x) (not (U6 x)) ) (or (U23 x) (not (R29 x x)) (not (U20 x)) ) (or (U10 x) (R13 x x) (U32 x) ) (or (not (U33 x)) (not (R2 x x)) (not (R33 x x)) ) (or (not (R27 x x)) (U12 x) (R16 x x) ) (or (U24 x) (not (R26 x x)) (not (R29 x x)) ) (or (U23 x) (not (U13 x)) (not (U34 x)) ) (or (U37 x) (not (R31 x x)) (not (U21 x)) ) (or (R17 x x) (not (R2 x x)) (not (U27 x)) ) (or (not (R40 x x)) (not (U33 x)) (U9 x) ) (or (R15 x x) (not (U27 x)) (U16 x) ) (or (U2 x) (U20 x) (not (R34 x x)) ) (or (R8 x x) (R15 x x) (U14 x) ) (or (not (U28 x)) (not (U34 x)) (not (R34 x x)) ) (or (not (U17 x)) (not (U25 x)) (not (R2 x x)) ) (or (R34 x x) (not (U39 x)) (not (U31 x)) ) (or (not (U38 x)) (R21 x x) (U14 x) ) (or (R30 x x) (not (R1 x x)) (not (R15 x x)) ) (or (R23 x x) (R18 x x) (not (R24 x x)) ) (or (not (U31 x)) (not (R20 x x)) (not (R12 x x)) ) (or (U8 x) (not (U19 x)) (not (U40 x)) ) (or (U6 x) (not (U22 x)) (U7 x) ) (or (R19 x x) (not (R37 x x)) (U32 x) ) (or (R34 x x) (R8 x x) (U25 x) ) (or (R17 x x) (R8 x x) (R39 x x) ) (or (not (U19 x)) (U11 x) (not (U33 x)) ) (or (not (U36 x)) (not (U23 x)) (not (R23 x x)) ) (or (not (U13 x)) (R24 x x) (R20 x x) ) (or (U12 x) (not (R35 x x)) (not (R1 x x)) ) (or (not (U28 x)) (not (U31 x)) (R16 x x) ) (or (not (R22 x x)) (not (R3 x x)) (R33 x x) ) (or (R23 x x) (not (R24 x x)) (not (U39 x)) ) (or (U13 x) (R28 x x) (R14 x x) ) (or (U17 x) (not (R38 x x)) (R40 x x) ) (or (U7 x) (R15 x x) (R5 x x) ) (or (U11 x) (not (R1 x x)) (not (R40 x x)) ) (or (R27 x x) (U9 x) (R26 x x) ) (or (R37 x x) (not (R34 x x)) (U36 x) ) (or (U31 x) (R37 x x) (U14 x) ) (or (not (R12 x x)) (not (U9 x)) (not (R18 x x)) ) (or (R36 x x) (U6 x) (U4 x) ) (or (U33 x) (not (R38 x x)) (not (U17 x)) ) (or (R29 x x) (R32 x x) (R20 x x) ) (or (not (U29 x)) (not (U6 x)) (R11 x x) ) (or (R10 x x) (R11 x x) (U34 x) ) (or (U8 x) (not (U14 x)) (U38 x) ) (or (not (R20 x x)) (not (R5 x x)) (not (U27 x)) ) (or (R10 x x) (R22 x x) (not (R13 x x)) ) (or (R12 x x) (not (U39 x)) (U13 x) ) (or (not (R21 x x)) (U9 x) (not (R31 x x)) ) (or (not (R40 x x)) (R30 x x) (R38 x x) ) (or (U33 x) (not (U12 x)) (U37 x) ) (or (R13 x x) (R4 x x) (U6 x) ) (or (R31 x x) (R32 x x) (R17 x x) ) (or (not (R28 x x)) (R5 x x) (U8 x) ) (or (not (R17 x x)) (not (R39 x x)) (R33 x x) ) (or (U6 x) (R40 x x) (not (R16 x x)) ) (or (R9 x x) (not (R20 x x)) (not (U27 x)) ) (or (not (R19 x x)) (not (U9 x)) (not (R23 x x)) ) (or (not (R9 x x)) (U36 x) (U9 x) ) (or (R6 x x) (U14 x) (U22 x) ) (or (not (R18 x x)) (U7 x) (not (R37 x x)) ) (or (not (U13 x)) (U38 x) (U3 x) ) (or (R21 x x) (not (R26 x x)) (R28 x x) ) (or (U25 x) (not (U3 x)) (not (U16 x)) ) (or (U37 x) (not (R14 x x)) (not (U21 x)) ) (or (U31 x) (U38 x) (not (R18 x x)) ) (or (U30 x) (R19 x x) (R25 x x) ) (or (not (U22 x)) (not (U18 x)) (U6 x) ) (or (U12 x) (R20 x x) (not (U14 x)) ) (or (not (R22 x x)) (U3 x) (not (U24 x)) ) (or (R39 x x) (not (R24 x x)) (not (R11 x x)) ) (or (U37 x) (not (R35 x x)) (not (U21 x)) ) (or (U14 x) (not (U13 x)) (not (U34 x)) ) (or (R12 x x) (R14 x x) (U17 x) ) (or (R23 x x) (not (U10 x)) (not (R7 x x)) ) (or (not (R29 x x)) (U27 x) (R14 x x) ) (or (R30 x x) (R2 x x) (not (R20 x x)) ) (or (not (R6 x x)) (R36 x x) (not (U11 x)) ) ))) 
(assert (forall ((x V)) ( exists ((y V)) (and (or (not (U21 y)) (not (R16 y y)) (not (R23 x y)) ) (or (not (R23 x x)) (R18 x y) (R25 y x) ) (or (R37 x x) (not (R3 y y)) (not (R37 y x)) ) (or (not (U15 x)) (U22 x) (not (R34 y x)) ) (or (R5 y y) (not (R23 y y)) (R4 y x) ) (or (R3 y x) (R10 y x) (U32 y) ) (or (U4 y) (R38 y x) (not (U3 y)) ) (or (U38 y) (R25 x x) (not (R17 y y)) ) (or (not (R31 y x)) (U26 x) (not (R39 y x)) ) (or (not (R1 x x)) (R37 y x) (not (R19 x y)) ) (or (not (U14 y)) (not (R7 x y)) (U39 y) ) (or (R30 x y) (not (R18 x x)) (not (R17 y y)) ) (or (not (R3 y y)) (not (R40 y x)) (not (R4 y y)) ) (or (R38 y x) (not (U11 y)) (R17 x x) ) (or (not (R40 x y)) (U14 x) (not (R22 x y)) ) (or (R5 x x) (not (R14 x x)) (R12 y y) ) (or (R40 x x) (not (R32 x y)) (R27 x y) ) (or (R33 y x) (not (U4 y)) (R5 y y) ) (or (not (R36 x y)) (R27 x y) (not (R35 x x)) ) (or (R19 y x) (not (U22 x)) (not (R25 x y)) ) (or (not (R18 x x)) (not (R10 x x)) (not (R14 x x)) ) (or (not (R7 y y)) (not (R28 y x)) (U38 x) ) (or (not (R9 y y)) (not (R21 y x)) (U26 x) ) (or (not (R8 x y)) (R30 y x) (R34 y x) ) (or (R30 y y) (not (U38 y)) (R15 y y) ) (or (U26 y) (R27 x x) (not (R30 y y)) ) (or (not (R30 y x)) (R22 y x) (U28 x) ) (or (R35 x x) (not (R25 x y)) (not (R37 y x)) ) (or (not (R24 y y)) (not (R15 y x)) (not (R36 x x)) ) (or (not (R6 x x)) (not (U5 y)) (not (R31 x x)) ) (or (not (R29 y y)) (not (R28 x x)) (not (R1 y x)) ) (or (not (U16 x)) (R12 y x) (not (R37 y y)) ) (or (not (R36 y x)) (R9 x x) (not (R26 y y)) ) (or (R4 x y) (R10 y y) (R25 y x) ) (or (not (U40 x)) (not (R6 y y)) (not (R13 y y)) ) (or (not (R9 x x)) (U19 y) (U21 x) ) (or (not (U29 x)) (U4 x) (R10 x x) ) (or (R22 y y) (not (R35 y y)) (R27 y x) ) (or (not (U38 y)) (not (R1 y x)) (not (R36 x x)) ) (or (R9 y y) (not (R14 x y)) (not (R39 y x)) ) (or (not (R34 x y)) (not (R23 x y)) (not (U29 y)) ) (or (U12 x) (U14 x) (U9 y) ) (or (not (R16 x y)) (R16 y y) (U27 y) ) (or (not (R15 y y)) (R12 y y) (not (U23 x)) ) (or (not (R21 x y)) (not (R17 y x)) (not (R2 y x)) ) (or (U4 x) (not (R19 y y)) (R8 x x) ) (or (R37 x y) (not (R3 y x)) (U21 y) ) (or (not (R2 x y)) (not (R29 x x)) (U20 x) ) (or (not (R10 x x)) (R13 y x) (R34 x x) ) (or (U8 y) (not (R39 y x)) (R16 x x) ) (or (not (R28 x y)) (not (R11 x y)) (U29 x) ) (or (R3 y y) (not (R19 x y)) (not (R13 x y)) ) (or (not (R25 x y)) (R33 x y) (not (U15 y)) ) (or (not (R27 y x)) (not (R9 y x)) (not (R26 x y)) ) (or (R9 x y) (not (U8 y)) (R19 y y) ) (or (not (R30 x y)) (U18 y) (not (U7 x)) ) (or (not (R32 x y)) (R28 y x) (U38 y) ) (or (not (U10 x)) (R28 y y) (U36 x) ) (or (not (R38 y x)) (not (U32 y)) (not (U36 y)) ) (or (not (R24 y y)) (not (R35 y x)) (R14 y x) ) (or (R20 y x) (not (R4 y y)) (not (R19 x y)) ) (or (not (R10 y y)) (R24 y x) (not (U24 y)) ) (or (U40 x) (U36 y) (not (U9 x)) ) (or (not (R20 x y)) (U23 y) (U21 x) ) (or (U34 y) (R32 y y) (not (R1 y x)) ) (or (R11 y y) (R36 x x) (not (R1 y x)) ) (or (not (R22 y y)) (U24 y) (R9 y y) ) (or (R36 x x) (not (R33 y x)) (not (R32 x y)) ) (or (not (R6 y y)) (not (R18 y y)) (R19 x y) ) (or (not (R21 y y)) (R38 x y) (not (R15 x y)) ) (or (not (R23 y x)) (R8 y y) (U40 y) ) (or (U25 x) (not (R16 x x)) (R19 x y) ) (or (U22 x) (R8 y y) (not (R22 y y)) ) (or (R35 x x) (R22 x x) (not (U22 y)) ) (or (not (R24 x x)) (R38 y x) (R1 x x) ) (or (not (R34 y y)) (not (U5 x)) (R27 y x) ) (or (not (R3 y y)) (not (R37 y y)) (not (R25 x x)) ) (or (not (R36 y x)) (R7 y x) (not (U6 x)) ) (or (R29 x x) (not (R38 y x)) (R3 x y) ) (or (not (R8 y x)) (not (R13 x y)) (not (U6 x)) ) (or (not (R38 y x)) (not (R7 y y)) (R10 x x) ) (or (not (U33 y)) (U4 x) (not (R9 x y)) ) (or (R7 y y) (U2 x) (not (U29 y)) ) (or (not (R21 y y)) (R3 x x) (not (R26 y x)) ) (or (R3 x y) (R16 y x) (not (R8 x x)) ) (or (U6 x) (not (R7 y y)) (not (R7 x x)) ) (or (R37 x y) (not (R12 y y)) (R30 y y) ) (or (not (U25 x)) (not (R36 x y)) (not (U18 y)) ) (or (not (R10 x x)) (not (R34 x y)) (R7 y x) ) (or (not (R10 y x)) (R6 x y) (U14 x) ) (or (not (R4 x x)) (U27 x) (R40 x x) ) (or (R20 x x) (not (R7 y x)) (R31 y x) ) (or (not (R15 x y)) (R17 x y) (R19 x x) ) (or (U34 x) (R27 y y) (not (U36 y)) ) (or (R40 x y) (R24 x y) (not (R8 x y)) ) (or (not (R5 x y)) (not (U16 x)) (U12 x) ) (or (U15 x) (not (U7 y)) (not (R28 x y)) ) (or (R22 y x) (R30 y x) (not (R9 x y)) ) (or (R23 y y) (not (R29 y x)) (not (R38 x y)) ) (or (R34 x y) (R10 x x) (U30 y) ) (or (not (R34 y x)) (R35 y y) (not (U6 y)) ) (or (U15 x) (not (R18 x y)) (not (R29 x x)) ) (or (not (U17 y)) (not (U28 y)) (not (U9 y)) ) (or (not (U37 x)) (U7 x) (not (R6 x x)) ) (or (R18 y x) (U36 y) (R24 x x) ) (or (not (U1 y)) (U40 y) (R38 x x) ) (or (not (R26 x y)) (R38 y x) (U30 y) ) (or (U15 y) (R16 y y) (R28 y y) ) (or (not (R39 x y)) (not (R29 y x)) (not (R30 x y)) ) (or (not (R28 x x)) (R21 x x) (not (U38 x)) ) (or (R26 y x) (not (R34 x y)) (U30 y) ) (or (not (U28 y)) (U28 x) (not (R40 x x)) ) (or (not (R1 y y)) (R33 y x) (not (R25 y y)) ) (or (R7 y y) (not (U4 y)) (not (U16 x)) ) (or (not (U10 x)) (not (R18 x x)) (not (U35 y)) ) (or (not (R15 y x)) (U36 y) (R35 y y) ) (or (R20 y y) (R12 x x) (not (R29 y y)) ) (or (not (U9 x)) (not (R19 y y)) (R14 y x) ) (or (U18 x) (R18 y y) (R14 y y) ) (or (R11 x y) (not (U39 y)) (U14 x) ) (or (not (R6 x x)) (not (R28 y y)) (R11 y y) ) (or (not (U34 x)) (not (R21 y x)) (not (R31 y x)) ) (or (not (R28 x x)) (R28 y y) (not (R19 y y)) ) (or (U8 x) (not (R11 y y)) (U37 x) ) (or (R27 x y) (not (R8 x y)) (R26 y y) ) (or (U34 y) (U34 x) (not (R20 x x)) ) (or (not (R1 x y)) (not (R21 x y)) (not (U8 x)) ) (or (R14 x y) (not (R12 x x)) (U29 x) ) (or (U28 y) (R28 y y) (U9 y) ) (or (R25 x y) (not (R28 y x)) (R5 y y) ) (or (U6 x) (not (R36 y y)) (not (U18 y)) ) (or (not (R11 x y)) (U26 y) (not (R30 y x)) ) (or (R12 y y) (not (R40 y x)) (not (R35 y y)) ) (or (not (R32 x y)) (not (R36 y x)) (not (R30 x x)) ) (or (R24 y y) (R4 x y) (not (R16 y y)) ) (or (not (R3 y y)) (R31 y y) (R29 x x) ) (or (not (R25 x y)) (not (U40 y)) (R32 y y) ) (or (R35 y y) (not (R13 x y)) (not (U21 x)) ) (or (U15 x) (not (R13 x y)) (not (R4 y x)) ) (or (not (R17 x x)) (U17 y) (R24 y x) ) (or (R28 y x) (R29 y x) (not (R14 x x)) ) (or (R33 x x) (not (U12 x)) (R13 x x) ) (or (not (U36 y)) (R24 y x) (U8 y) ) (or (R38 y y) (R31 x x) (R39 y y) ) (or (not (R21 x x)) (not (R5 x x)) (not (R40 x y)) ) (or (R31 x y) (not (U33 x)) (R22 y y) ) (or (not (R23 y y)) (not (U11 y)) (not (R16 x y)) ) (or (not (U24 x)) (not (R39 y x)) (R33 x x) ) (or (R24 y x) (not (R2 y x)) (not (R11 x y)) ) (or (R33 x y) (not (R4 x y)) (not (R23 x y)) ) (or (R20 x y) (U28 x) (not (U7 y)) ) (or (U29 y) (not (R15 x x)) (U36 x) ) (or (R22 y x) (not (R24 y x)) (not (R17 y x)) ) (or (not (U8 x)) (not (R11 x x)) (U11 y) ) (or (not (U29 x)) (R29 y x) (not (U9 x)) ) (or (not (U8 y)) (R32 x x) (not (R10 y x)) ) (or (not (R2 x y)) (not (R13 y y)) (U40 y) ) (or (R3 x y) (R39 y x) (not (R29 y y)) ) (or (R14 y y) (R13 y x) (R6 x y) ) (or (R33 x y) (not (U9 y)) (not (R17 y y)) ) (or (R21 x x) (not (R28 x y)) (U35 x) ) (or (not (R39 y y)) (not (U8 x)) (not (R6 y y)) ) (or (not (R10 y x)) (not (R6 x x)) (not (R9 x y)) ) (or (not (U34 x)) (U20 y) (U37 y) ) (or (U1 y) (R12 y y) (not (R30 x y)) ) (or (not (U21 y)) (not (U12 x)) (not (U15 y)) ) (or (not (U24 x)) (not (R21 x y)) (R25 y y) ) (or (R25 y x) (not (R18 x y)) (not (R13 x y)) ) (or (not (R27 y y)) (R24 y x) (U1 x) ) (or (R11 x y) (not (U35 x)) (R4 x x) ) (or (R40 y x) (R16 x x) (R38 x y) ) (or (R27 y y) (not (R17 x y)) (not (U9 y)) ) (or (R12 x y) (not (R25 y x)) (not (R5 y y)) ) (or (R28 x y) (not (R36 y x)) (not (R37 x x)) ) (or (R27 x y) (R21 y y) (U7 x) ) (or (R4 x x) (U22 y) (R33 y x) ) (or (not (R33 x y)) (not (U21 y)) (U5 x) ) (or (not (R30 y y)) (R10 x y) (U19 x) ) (or (R5 x y) (not (R38 x y)) (R35 y y) ) (or (not (U37 y)) (not (R30 y y)) (U33 y) ) (or (U14 x) (not (U32 x)) (not (U21 y)) ) (or (not (R26 y x)) (R9 y y) (not (R24 y y)) ) (or (not (U13 y)) (U37 y) (not (R23 y x)) ) (or (R3 x y) (not (U27 x)) (not (U1 x)) ) (or (not (U29 y)) (not (R1 y y)) (not (R6 x x)) ) (or (R33 x x) (U33 y) (not (U21 y)) ) (or (not (U8 y)) (not (R21 y x)) (R18 y x) ) (or (not (R30 y x)) (U26 y) (not (R25 y x)) ) (or (R30 x y) (R15 x x) (R39 x x) ) (or (not (U30 x)) (R14 x y) (U38 x) ) (or (U13 x) (R34 x x) (U34 y) ) (or (not (R27 x y)) (U33 y) (U22 y) ) (or (not (U2 y)) (not (R37 x y)) (R36 y x) ) (or (R33 x x) (not (R19 y y)) (not (U18 x)) ) (or (U31 x) (not (R36 y x)) (not (U27 y)) ) (or (R12 y y) (R5 y x) (not (R13 y x)) ) (or (not (R19 y y)) (R34 y x) (not (U25 y)) ) (or (R17 y x) (not (R29 y y)) (not (U18 x)) ) (or (not (U20 y)) (R20 y x) (not (U20 x)) ) (or (not (R3 x y)) (R13 y y) (not (U1 y)) ) (or (R14 y x) (not (U37 x)) (R20 y x) ) (or (not (R37 y y)) (U16 y) (R27 x y) ) (or (not (R7 x y)) (U30 y) (not (R39 y x)) ) (or (not (U22 y)) (R13 y y) (not (U33 x)) ) (or (U40 y) (R29 x x) (R20 y x) ) (or (not (R25 x x)) (not (U28 x)) (R24 x y) ) (or (R2 y y) (not (U26 x)) (not (R36 y y)) ) (or (not (R5 x x)) (R24 x x) (not (R3 x y)) ) (or (R26 x y) (R33 x x) (U33 x) ) (or (R11 y y) (not (R21 x x)) (U31 x) ) (or (not (U3 x)) (not (R40 y x)) (not (R14 x x)) ) (or (R21 y x) (not (R28 y y)) (R4 y y) ) (or (not (R30 x y)) (U13 y) (R29 x x) ) (or (not (U28 y)) (R37 x x) (not (R11 y y)) ) (or (U3 y) (U29 y) (R2 y y) ) (or (R31 y y) (U13 x) (R21 x y) ) (or (R26 x x) (R27 x y) (R28 y x) ) (or (not (R34 y x)) (not (R24 y x)) (not (R36 x y)) ) (or (not (R30 x x)) (R37 x x) (not (R38 x y)) ) (or (not (R34 y x)) (U6 x) (not (U20 y)) ) (or (R6 x x) (U21 y) (not (U6 y)) ) (or (U2 y) (U39 y) (U4 y) ) (or (R2 y y) (R24 y y) (U6 y) ) (or (R24 x x) (U3 y) (not (U32 x)) ) (or (not (U9 y)) (not (U10 x)) (R4 x x) ) (or (not (R6 x y)) (U25 y) (not (R8 x y)) ) (or (not (U32 x)) (not (U23 y)) (R19 x y) ) (or (not (R38 x x)) (R23 y y) (not (R4 y x)) ) (or (not (R23 x x)) (not (R8 y y)) (U5 x) ) (or (R10 y x) (not (R34 y y)) (not (U35 x)) ) (or (not (R6 x y)) (not (R38 y y)) (R5 x y) ) (or (not (U38 x)) (R22 x y) (not (R2 y x)) ) (or (not (R8 y y)) (U15 y) (R26 y y) ) (or (R33 y x) (not (U10 x)) (R4 y y) ) (or (not (U1 y)) (not (R32 x x)) (R18 x x) ) (or (not (U11 x)) (not (U6 x)) (U33 y) ) (or (not (R30 y y)) (R2 x x) (U8 y) ) (or (not (R22 x x)) (not (R21 x y)) (R33 x x) ) (or (R10 x x) (not (U4 y)) (U25 y) ) (or (not (R30 x y)) (not (R15 y y)) (R29 y x) ) (or (R37 x y) (not (R8 x y)) (not (R9 y x)) ) (or (not (U29 y)) (not (R19 x y)) (R10 y x) ) (or (R28 y x) (U11 x) (U21 y) ) (or (not (R16 y x)) (not (R34 y x)) (U27 x) ) (or (not (U16 x)) (R27 x x) (R40 y y) ) (or (R8 y x) (R27 y y) (R23 x y) ) (or (R6 y x) (not (U1 x)) (R25 y y) ) (or (R10 y x) (U18 y) (U3 y) ) (or (R5 y x) (R5 x y) (not (U28 y)) ) (or (not (R30 x y)) (R26 x y) (not (U27 x)) ) (or (R9 x x) (R31 x y) (R13 y y) ) (or (not (U36 y)) (not (U27 y)) (not (R12 x x)) ) (or (R15 y x) (R29 x y) (R25 x x) ) (or (not (R16 y y)) (not (U37 x)) (R25 y y) ) (or (not (U15 y)) (not (R14 y y)) (not (R15 y x)) ) (or (not (R33 y y)) (not (U7 y)) (not (U9 x)) ) (or (not (R2 y x)) (not (R29 x y)) (U26 x) ) (or (not (U18 x)) (R14 y x) (U13 x) ) (or (R16 y y) (U8 x) (not (R33 y y)) ) (or (U13 y) (U29 x) (R40 x y) ) (or (R35 x x) (R39 x x) (not (R30 y x)) ) (or (R30 y y) (R31 y x) (not (R4 x x)) ) (or (R26 x y) (not (U30 y)) (not (R11 y y)) ) (or (not (R8 y y)) (R35 y y) (R36 y y) ) (or (R31 x y) (R1 x y) (not (R15 x y)) ) (or (U35 y) (U20 x) (R32 y y) ) (or (not (R37 y x)) (not (U17 x)) (R37 x y) ) (or (not (R38 x x)) (R37 x y) (not (R9 x y)) ) (or (not (U14 y)) (not (R7 y x)) (not (U15 x)) ) (or (not (R18 x y)) (R37 y x) (R23 y x) ) (or (R5 y y) (not (R13 y x)) (not (R12 x y)) ) (or (R19 x y) (not (R3 x x)) (U19 x) ) (or (not (R36 y x)) (R32 y x) (not (U33 x)) ) (or (R25 y y) (not (U29 y)) (R26 y x) ) (or (not (R1 y y)) (not (R24 x x)) (not (U35 x)) ) (or (not (U22 x)) (not (U4 y)) (R30 x x) ) (or (U14 x) (not (R25 y x)) (R28 x y) ) (or (U2 x) (not (U15 y)) (not (U2 x)) ) (or (U12 x) (R9 y x) (R7 x y) ) (or (R27 y y) (R19 y y) (R31 y x) ) (or (R28 y y) (R40 y x) (R26 y y) ) (or (U34 y) (not (R6 x y)) (not (U22 x)) ) (or (R18 x y) (not (R20 y x)) (not (R22 x x)) ) (or (R28 x y) (U11 x) (R26 y y) ) (or (R38 x x) (R22 y x) (U14 x) ) (or (not (R19 x y)) (U20 x) (R34 y y) ) (or (R36 x x) (not (R16 x x)) (not (U1 y)) ) (or (not (R28 y y)) (not (U10 x)) (not (U7 y)) ) (or (R27 x x) (U20 x) (R12 y y) ) (or (U24 x) (R19 x y) (R32 x x) ) (or (not (R18 y y)) (not (U2 y)) (U1 x) ) (or (not (U19 x)) (R2 x y) (not (R5 x x)) ) (or (not (R20 y x)) (not (R9 x y)) (not (R32 y x)) ) (or (R15 x y) (R39 x x) (R31 y x) ) (or (R1 y y) (U9 y) (not (R6 x y)) ) (or (R16 x y) (not (U10 y)) (not (R39 x y)) ) (or (R8 x x) (not (R18 x x)) (R28 y y) ) (or (not (R33 x y)) (R5 x x) (U40 x) ) (or (not (R3 x x)) (not (U9 x)) (R33 x x) ) (or (R14 y y) (not (U9 x)) (R33 x x) ) (or (not (U27 y)) (R5 x y) (not (U20 y)) ) (or (not (U15 y)) (not (R21 y x)) (not (U35 x)) ) (or (not (R33 y y)) (R40 y x) (not (R33 y x)) ) (or (R12 y y) (U29 x) (not (U23 x)) ) (or (R12 x x) (R22 y x) (not (U11 x)) ) (or (not (R20 x y)) (R34 x x) (R33 y x) ) (or (not (U4 x)) (not (R28 y x)) (not (R5 y x)) ) (or (not (R11 y y)) (not (R4 x x)) (U19 x) ) (or (not (U27 y)) (not (R25 y x)) (not (R23 x x)) ) (or (not (R26 y x)) (U31 x) (R9 y y) ) (or (not (R8 y y)) (not (U14 x)) (not (R30 x y)) ) (or (U31 x) (not (R38 y y)) (not (R40 x y)) ) (or (not (R20 y x)) (not (R28 y x)) (not (R24 y y)) ) (or (R15 y y) (R24 y y) (R20 y x) ) (or (R36 x y) (not (U29 y)) (U32 y) ) (or (not (U7 y)) (R9 y y) (R24 y y) ) (or (not (R26 x x)) (not (U3 y)) (R27 x x) ) (or (not (U37 y)) (not (U10 x)) (not (R21 x x)) ) (or (not (U35 x)) (not (U21 x)) (not (R10 x x)) ) (or (not (U9 x)) (R36 y y) (not (R3 x x)) ) (or (not (U14 x)) (not (R40 y y)) (U23 y) ) (or (U30 y) (not (R30 y x)) (not (R3 y x)) ) (or (not (U34 x)) (not (R22 y y)) (R29 y x) ) (or (not (R29 y x)) (not (U23 x)) (R12 x x) ) (or (not (R2 y x)) (R22 y x) (not (U6 x)) ) (or (not (R3 x x)) (U11 x) (R34 x y) ) (or (not (R6 y x)) (not (U16 y)) (not (R28 x x)) ) (or (not (R1 x x)) (R9 y x) (U22 y) ) (or (R9 y y) (not (R38 x x)) (R24 x y) ) (or (not (R2 y x)) (R34 y y) (not (R12 x x)) ) (or (R18 y y) (not (R25 y x)) (not (R27 x x)) ) (or (not (U2 x)) (not (R6 y y)) (not (R10 x y)) ) (or (R40 y x) (R2 y x) (not (R5 x y)) ) (or (U20 x) (not (R39 y y)) (not (R21 y y)) ) (or (not (R5 x y)) (R30 y x) (not (U27 y)) ) (or (R9 x y) (not (R19 x y)) (not (R9 x x)) ) (or (not (R24 y y)) (not (R5 y y)) (not (R17 y y)) ) (or (not (U28 x)) (R1 x x) (R23 y y) ) (or (not (R32 x x)) (not (R27 y x)) (U12 y) ) (or (U34 x) (R30 x x) (R25 y y) ) (or (not (R17 y x)) (not (R3 x x)) (U30 y) ) (or (not (R13 x y)) (not (R28 y y)) (U19 y) ) (or (not (R2 y x)) (not (R22 y x)) (not (R39 x x)) ) (or (not (R23 y x)) (not (U4 y)) (R10 y y) ) (or (R36 x y) (U31 y) (not (R28 y y)) ) (or (not (R36 x x)) (R39 y x) (U31 x) ) (or (not (R27 x x)) (R37 x x) (not (R15 y y)) ) (or (R11 x y) (R13 x x) (R18 y y) ) (or (not (R3 y x)) (U40 y) (U30 x) ) (or (not (R14 y y)) (U28 x) (U17 x) ) (or (not (R37 y y)) (not (R6 x y)) (not (R11 y y)) ) (or (R39 x x) (not (R31 y y)) (R11 y y) ) (or (R39 y y) (not (R22 y x)) (not (R4 x y)) ) (or (not (R5 y y)) (U4 y) (U35 x) ) (or (U32 x) (not (R8 y x)) (U4 y) ) (or (U35 y) (not (R39 x y)) (not (U25 y)) ) (or (U8 y) (U33 y) (R32 x x) ) (or (not (U9 x)) (not (R30 x y)) (U28 y) ) (or (U11 x) (U8 x) (R21 y x) ) (or (not (R19 x y)) (not (R30 x x)) (not (R12 y x)) ) (or (not (R35 y x)) (U7 y) (not (R22 y x)) ) (or (not (U31 y)) (not (U6 x)) (not (U6 y)) ) (or (not (U13 y)) (not (R8 y x)) (R22 y y) ) (or (not (R38 x y)) (R11 x y) (not (R12 x y)) ) (or (not (U19 y)) (R34 y x) (R38 x y) ) (or (R15 x x) (U4 x) (not (U31 y)) ) (or (U18 y) (not (R19 x x)) (not (U35 y)) ) (or (not (R31 x x)) (not (U25 y)) (R21 x y) ) (or (not (U7 x)) (not (U37 x)) (R30 y x) ) (or (U31 x) (U12 x) (R2 y y) ) (or (not (R32 y x)) (R3 x x) (not (U20 y)) ) (or (not (R7 x x)) (not (R10 x x)) (R29 y x) ) (or (U9 x) (R8 y y) (not (R40 y y)) ) (or (R25 y x) (U30 x) (U15 x) ) (or (not (R10 x y)) (R13 x x) (R39 y y) ) (or (R15 y y) (not (R6 y x)) (R33 x x) ) (or (R17 y y) (not (R27 y y)) (R24 x y) ) (or (not (R16 y x)) (not (R29 y x)) (not (U33 y)) ) (or (not (R16 y x)) (R1 x x) (R34 x y) ) (or (R6 y y) (not (U7 x)) (not (U32 x)) ) (or (not (R20 x x)) (not (U28 y)) (R26 x x) ) (or (R1 x y) (not (R25 y y)) (R23 y x) ) (or (R34 y x) (not (R35 y y)) (U23 y) ) (or (not (U13 y)) (not (U4 x)) (U38 y) ) (or (R11 y x) (not (R14 x y)) (not (R36 y y)) ) (or (R11 y y) (not (R4 x x)) (not (R24 y y)) ) (or (R29 x x) (not (U27 x)) (not (U16 y)) ) (or (U40 x) (U21 x) (not (U31 x)) ) (or (R31 x x) (not (R20 x y)) (U39 y) ) (or (not (R31 y x)) (not (U8 y)) (not (U21 x)) ) (or (not (U27 x)) (not (U7 y)) (not (R3 x y)) ) (or (not (U9 x)) (not (R34 y y)) (R22 x x) ) (or (R33 y x) (R17 y y) (not (R16 y y)) ) (or (not (U11 x)) (R17 x x) (R37 y y) ) (or (not (R4 y y)) (not (U16 x)) (not (R28 y x)) ) (or (R19 x x) (R35 x y) (R38 y y) ) (or (not (U23 y)) (not (R36 y y)) (not (U14 x)) ) (or (not (R33 x x)) (not (R6 x y)) (not (R25 x x)) ) (or (not (U13 y)) (not (U14 y)) (not (U29 y)) ) (or (R16 x x) (not (R35 y y)) (U26 x) ) )  ))) 
(check-sat)