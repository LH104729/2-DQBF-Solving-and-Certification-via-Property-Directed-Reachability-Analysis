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
(declare-fun U41 (V) Bool)
(declare-fun U42 (V) Bool)
(declare-fun U43 (V) Bool)
(declare-fun U44 (V) Bool)
(declare-fun U45 (V) Bool)
(declare-fun U46 (V) Bool)
(declare-fun U47 (V) Bool)
(declare-fun U48 (V) Bool)
(declare-fun U49 (V) Bool)
(declare-fun U50 (V) Bool)
(declare-fun U51 (V) Bool)
(declare-fun U52 (V) Bool)
(declare-fun U53 (V) Bool)
(declare-fun U54 (V) Bool)
(declare-fun U55 (V) Bool)
(declare-fun U56 (V) Bool)
(declare-fun U57 (V) Bool)
(declare-fun U58 (V) Bool)
(declare-fun U59 (V) Bool)
(declare-fun U60 (V) Bool)
(declare-fun U61 (V) Bool)
(declare-fun U62 (V) Bool)
(declare-fun U63 (V) Bool)
(declare-fun U64 (V) Bool)
(declare-fun U65 (V) Bool)
(declare-fun U66 (V) Bool)
(declare-fun U67 (V) Bool)
(declare-fun U68 (V) Bool)
(declare-fun U69 (V) Bool)
(declare-fun U70 (V) Bool)
(declare-fun U71 (V) Bool)
(declare-fun U72 (V) Bool)
(declare-fun U73 (V) Bool)
(declare-fun U74 (V) Bool)
(declare-fun U75 (V) Bool)
(declare-fun U76 (V) Bool)
(declare-fun U77 (V) Bool)
(declare-fun U78 (V) Bool)
(declare-fun U79 (V) Bool)
(declare-fun U80 (V) Bool)
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
(declare-fun R41 (V V) Bool)
(declare-fun R42 (V V) Bool)
(declare-fun R43 (V V) Bool)
(declare-fun R44 (V V) Bool)
(declare-fun R45 (V V) Bool)
(declare-fun R46 (V V) Bool)
(declare-fun R47 (V V) Bool)
(declare-fun R48 (V V) Bool)
(declare-fun R49 (V V) Bool)
(declare-fun R50 (V V) Bool)
(declare-fun R51 (V V) Bool)
(declare-fun R52 (V V) Bool)
(declare-fun R53 (V V) Bool)
(declare-fun R54 (V V) Bool)
(declare-fun R55 (V V) Bool)
(declare-fun R56 (V V) Bool)
(declare-fun R57 (V V) Bool)
(declare-fun R58 (V V) Bool)
(declare-fun R59 (V V) Bool)
(declare-fun R60 (V V) Bool)

(assert (forall ((x V)) (and (or (not (U70 x)) (not (U46 x)) (R59 x x) ) (or (U23 x) (not (R43 x x)) (R35 x x) ) (or (not (U51 x)) (not (U79 x)) (U64 x) ) (or (not (R58 x x)) (not (R60 x x)) (R40 x x) ) (or (not (R32 x x)) (R23 x x) (R26 x x) ) (or (not (R44 x x)) (U47 x) (not (U17 x)) ) (or (not (R39 x x)) (U76 x) (not (R34 x x)) ) (or (not (U18 x)) (R12 x x) (R59 x x) ) (or (not (U45 x)) (R27 x x) (not (U49 x)) ) (or (not (U57 x)) (R51 x x) (not (R44 x x)) ) (or (R13 x x) (not (R27 x x)) (not (R43 x x)) ) (or (not (R44 x x)) (not (R13 x x)) (R35 x x) ) (or (not (R16 x x)) (not (U20 x)) (R20 x x) ) (or (not (U19 x)) (R53 x x) (not (U37 x)) ) (or (R58 x x) (R19 x x) (not (R50 x x)) ) (or (not (U17 x)) (U35 x) (U77 x) ) (or (not (U26 x)) (U23 x) (R21 x x) ) (or (R16 x x) (not (U12 x)) (not (R2 x x)) ) (or (R50 x x) (U15 x) (not (U70 x)) ) (or (U60 x) (U35 x) (not (U25 x)) ) (or (U65 x) (not (R47 x x)) (U51 x) ) (or (not (U10 x)) (U21 x) (R37 x x) ) (or (not (R46 x x)) (U66 x) (U14 x) ) (or (not (R5 x x)) (U14 x) (not (U62 x)) ) (or (U53 x) (U17 x) (not (R17 x x)) ) (or (not (U30 x)) (not (U69 x)) (R1 x x) ) (or (not (R33 x x)) (U17 x) (not (U24 x)) ) (or (R47 x x) (not (R52 x x)) (U41 x) ) (or (not (U40 x)) (not (U39 x)) (R30 x x) ) (or (not (U58 x)) (U11 x) (not (U53 x)) ) (or (not (R46 x x)) (R43 x x) (not (U72 x)) ) (or (R41 x x) (U30 x) (U40 x) ) (or (U66 x) (not (U42 x)) (U51 x) ) (or (not (R40 x x)) (not (U65 x)) (not (U46 x)) ) (or (not (U24 x)) (not (U68 x)) (not (R27 x x)) ) (or (not (R26 x x)) (not (U80 x)) (R25 x x) ) (or (R34 x x) (R44 x x) (not (R51 x x)) ) (or (R44 x x) (not (R25 x x)) (U12 x) ) (or (U38 x) (not (R2 x x)) (not (R44 x x)) ) (or (R50 x x) (not (R44 x x)) (U28 x) ) (or (not (U74 x)) (U73 x) (not (U71 x)) ) (or (not (U73 x)) (R53 x x) (U21 x) ) (or (not (R52 x x)) (not (U76 x)) (not (U12 x)) ) (or (U25 x) (not (R24 x x)) (R1 x x) ) (or (not (R34 x x)) (U12 x) (U37 x) ) (or (R12 x x) (U32 x) (R32 x x) ) (or (U66 x) (R36 x x) (not (U37 x)) ) (or (not (R18 x x)) (U45 x) (U25 x) ) (or (not (R47 x x)) (not (U46 x)) (not (U59 x)) ) (or (not (R21 x x)) (U4 x) (U14 x) ) (or (R47 x x) (not (U47 x)) (not (U65 x)) ) (or (not (R50 x x)) (not (U38 x)) (not (R21 x x)) ) (or (not (R28 x x)) (U46 x) (not (R44 x x)) ) (or (not (U72 x)) (R9 x x) (R11 x x) ) (or (not (U32 x)) (R41 x x) (not (U30 x)) ) (or (U39 x) (not (R38 x x)) (not (R15 x x)) ) (or (not (R19 x x)) (not (U14 x)) (not (U36 x)) ) (or (U21 x) (R8 x x) (not (R31 x x)) ) (or (not (R7 x x)) (U32 x) (not (U79 x)) ) (or (not (U52 x)) (U50 x) (not (R11 x x)) ) (or (U11 x) (R10 x x) (not (R17 x x)) ) (or (R57 x x) (U71 x) (R53 x x) ) (or (R11 x x) (not (U41 x)) (not (U32 x)) ) (or (U69 x) (R40 x x) (U16 x) ) (or (not (U34 x)) (not (R25 x x)) (not (R60 x x)) ) (or (R35 x x) (U11 x) (not (R60 x x)) ) (or (not (U13 x)) (not (U22 x)) (not (U1 x)) ) (or (R6 x x) (U35 x) (U74 x) ) (or (not (U11 x)) (not (R24 x x)) (not (U80 x)) ) (or (U32 x) (R19 x x) (not (U11 x)) ) (or (not (R52 x x)) (not (R31 x x)) (not (R53 x x)) ) (or (R9 x x) (not (R33 x x)) (U41 x) ) (or (U25 x) (not (U10 x)) (U16 x) ) (or (U65 x) (U75 x) (R44 x x) ) (or (U7 x) (U33 x) (not (U30 x)) ) (or (U15 x) (U59 x) (U57 x) ) (or (not (U3 x)) (R14 x x) (U17 x) ) (or (not (R35 x x)) (not (U52 x)) (not (R19 x x)) ) (or (U60 x) (not (R55 x x)) (R50 x x) ) (or (not (R34 x x)) (not (U44 x)) (not (R31 x x)) ) (or (R36 x x) (not (U39 x)) (not (U77 x)) ) (or (not (R43 x x)) (not (R40 x x)) (U35 x) ) (or (not (R56 x x)) (U53 x) (R48 x x) ) (or (U23 x) (not (R42 x x)) (U25 x) ) (or (U44 x) (R52 x x) (not (U62 x)) ) (or (not (U2 x)) (not (U77 x)) (not (R57 x x)) ) (or (not (R37 x x)) (not (R30 x x)) (R10 x x) ) (or (not (U33 x)) (U59 x) (U28 x) ) (or (U22 x) (not (U73 x)) (not (U33 x)) ) (or (not (U38 x)) (not (U36 x)) (not (U48 x)) ) (or (not (U54 x)) (U31 x) (U14 x) ) (or (not (R59 x x)) (not (R21 x x)) (not (R20 x x)) ) (or (not (R33 x x)) (U22 x) (R11 x x) ) (or (not (U64 x)) (R54 x x) (U31 x) ) (or (not (R31 x x)) (not (R58 x x)) (not (R36 x x)) ) (or (R21 x x) (U32 x) (not (R29 x x)) ) (or (not (U30 x)) (not (U14 x)) (not (U78 x)) ) (or (R45 x x) (not (R4 x x)) (U3 x) ) (or (R49 x x) (R56 x x) (U35 x) ) (or (not (U33 x)) (not (U57 x)) (R33 x x) ) (or (not (U79 x)) (R45 x x) (R12 x x) ) (or (U5 x) (R45 x x) (not (U7 x)) ) (or (not (U4 x)) (U43 x) (R15 x x) ) (or (not (R4 x x)) (not (R21 x x)) (R43 x x) ) (or (not (U51 x)) (R25 x x) (R51 x x) ) (or (R18 x x) (R30 x x) (R50 x x) ) (or (R59 x x) (U11 x) (not (U10 x)) ) (or (not (U55 x)) (not (R2 x x)) (not (U79 x)) ) (or (not (R41 x x)) (U71 x) (not (R43 x x)) ) (or (U13 x) (not (U5 x)) (R32 x x) ) (or (U61 x) (not (U15 x)) (not (U22 x)) ) (or (not (U29 x)) (not (R55 x x)) (U33 x) ) (or (not (R47 x x)) (not (R42 x x)) (U56 x) ) (or (not (U80 x)) (not (U25 x)) (U1 x) ) (or (not (U30 x)) (U73 x) (U61 x) ) (or (U34 x) (R12 x x) (not (U47 x)) ) (or (U54 x) (U53 x) (not (R31 x x)) ) (or (not (R52 x x)) (not (R46 x x)) (U10 x) ) (or (not (R30 x x)) (not (R11 x x)) (not (U13 x)) ) (or (U6 x) (U7 x) (U72 x) ) (or (not (R10 x x)) (U70 x) (not (R46 x x)) ) (or (R18 x x) (not (R41 x x)) (not (U80 x)) ) (or (U41 x) (not (R51 x x)) (U47 x) ) (or (U75 x) (U49 x) (U73 x) ) (or (U45 x) (not (U42 x)) (R9 x x) ) (or (not (U21 x)) (not (U38 x)) (not (U80 x)) ) (or (U77 x) (not (R31 x x)) (U78 x) ) (or (U53 x) (U11 x) (R40 x x) ) (or (not (U54 x)) (not (R45 x x)) (U49 x) ) (or (U1 x) (not (U63 x)) (U27 x) ) (or (R7 x x) (not (U41 x)) (not (R19 x x)) ) (or (not (U29 x)) (U47 x) (not (R23 x x)) ) (or (not (U31 x)) (U25 x) (not (U10 x)) ) (or (R54 x x) (not (R11 x x)) (R15 x x) ) (or (not (R60 x x)) (not (U41 x)) (R7 x x) ) (or (R54 x x) (U75 x) (not (U48 x)) ) (or (not (R32 x x)) (R25 x x) (not (U75 x)) ) (or (not (R14 x x)) (U22 x) (R53 x x) ) (or (U51 x) (U43 x) (R18 x x) ) (or (not (U2 x)) (U50 x) (U38 x) ) (or (not (U43 x)) (U67 x) (R27 x x) ) (or (U35 x) (R48 x x) (not (R59 x x)) ) (or (U79 x) (U16 x) (not (R38 x x)) ) (or (U55 x) (R15 x x) (not (U26 x)) ) (or (R32 x x) (not (R45 x x)) (U59 x) ) (or (R52 x x) (U22 x) (not (R48 x x)) ) (or (not (U37 x)) (not (R21 x x)) (not (R35 x x)) ) (or (R19 x x) (not (U6 x)) (not (U54 x)) ) (or (not (U31 x)) (not (U8 x)) (not (U15 x)) ) (or (U25 x) (not (U34 x)) (not (U7 x)) ) (or (not (R20 x x)) (not (R16 x x)) (U62 x) ) (or (not (R38 x x)) (R11 x x) (U13 x) ) (or (U16 x) (not (R1 x x)) (R20 x x) ) (or (not (U45 x)) (R27 x x) (U76 x) ) (or (not (R30 x x)) (U33 x) (not (U38 x)) ) (or (R32 x x) (U4 x) (not (R36 x x)) ) (or (U34 x) (R52 x x) (not (R41 x x)) ) (or (not (U57 x)) (not (U18 x)) (not (U50 x)) ) (or (not (U25 x)) (not (U4 x)) (not (U6 x)) ) (or (R28 x x) (U59 x) (not (U46 x)) ) (or (R27 x x) (U54 x) (not (R2 x x)) ) (or (not (R47 x x)) (R49 x x) (U43 x) ) (or (R6 x x) (not (U20 x)) (not (R42 x x)) ) (or (not (R31 x x)) (not (U51 x)) (U54 x) ) (or (R58 x x) (not (U60 x)) (not (U39 x)) ) (or (R19 x x) (R31 x x) (R34 x x) ) (or (U56 x) (U6 x) (not (R10 x x)) ) (or (U38 x) (not (R59 x x)) (U74 x) ) (or (not (R7 x x)) (U30 x) (not (U18 x)) ) (or (U77 x) (not (R13 x x)) (R24 x x) ) (or (not (U22 x)) (R7 x x) (not (R52 x x)) ) (or (not (R55 x x)) (R31 x x) (not (R59 x x)) ) (or (not (U45 x)) (not (U18 x)) (not (R7 x x)) ) (or (R47 x x) (U17 x) (not (R35 x x)) ) (or (R52 x x) (R39 x x) (not (R40 x x)) ) (or (not (R1 x x)) (R29 x x) (U40 x) ) (or (not (R49 x x)) (U32 x) (U17 x) ) (or (U38 x) (R56 x x) (U74 x) ) (or (U65 x) (not (U47 x)) (not (U67 x)) ) (or (R30 x x) (not (U46 x)) (not (U58 x)) ) (or (R2 x x) (not (R57 x x)) (not (U51 x)) ) (or (R23 x x) (not (U75 x)) (R57 x x) ) (or (R11 x x) (U52 x) (U66 x) ) (or (R28 x x) (R20 x x) (U22 x) ) (or (R31 x x) (R27 x x) (R18 x x) ) (or (not (R1 x x)) (not (R11 x x)) (not (U10 x)) ) (or (U18 x) (not (U55 x)) (not (U50 x)) ) (or (U33 x) (R36 x x) (R33 x x) ) (or (R55 x x) (U41 x) (not (U1 x)) ) (or (not (U79 x)) (not (R31 x x)) (U24 x) ) (or (not (U76 x)) (R43 x x) (R49 x x) ) (or (not (U17 x)) (U48 x) (not (R27 x x)) ) (or (not (U37 x)) (U75 x) (R31 x x) ) (or (R38 x x) (R36 x x) (not (U63 x)) ) (or (not (U49 x)) (R10 x x) (not (U3 x)) ) (or (U75 x) (not (U34 x)) (not (U39 x)) ) (or (U44 x) (not (U21 x)) (not (U62 x)) ) (or (U16 x) (U71 x) (not (R19 x x)) ) (or (not (U40 x)) (R46 x x) (U12 x) ) (or (U49 x) (U14 x) (not (U35 x)) ) (or (not (R3 x x)) (U47 x) (not (U51 x)) ) (or (not (U37 x)) (R14 x x) (not (U52 x)) ) (or (not (R12 x x)) (not (U21 x)) (not (U53 x)) ) (or (not (R45 x x)) (not (R9 x x)) (U80 x) ) (or (U62 x) (U6 x) (not (R6 x x)) ) (or (U54 x) (not (U38 x)) (U10 x) ) (or (U32 x) (U47 x) (not (U55 x)) ) (or (U34 x) (U69 x) (R14 x x) ) (or (not (R29 x x)) (U31 x) (not (U22 x)) ) (or (R39 x x) (U45 x) (R33 x x) ) (or (not (R54 x x)) (R25 x x) (not (U9 x)) ) (or (not (R33 x x)) (not (U53 x)) (U46 x) ) (or (not (U61 x)) (not (R35 x x)) (R45 x x) ) (or (not (U65 x)) (R52 x x) (not (R50 x x)) ) (or (not (R13 x x)) (U64 x) (not (U9 x)) ) (or (not (U33 x)) (not (U54 x)) (R42 x x) ) (or (not (R52 x x)) (R13 x x) (not (R33 x x)) ) (or (not (R45 x x)) (R21 x x) (U66 x) ) (or (U69 x) (R10 x x) (not (U78 x)) ) (or (not (R7 x x)) (not (R45 x x)) (not (U63 x)) ) (or (U78 x) (R57 x x) (U25 x) ) (or (not (R34 x x)) (U18 x) (U20 x) ) (or (not (U29 x)) (R33 x x) (U19 x) ) (or (U74 x) (not (R13 x x)) (R25 x x) ) (or (U43 x) (R3 x x) (not (R47 x x)) ) (or (not (U28 x)) (R8 x x) (U39 x) ) (or (R8 x x) (not (U5 x)) (not (R19 x x)) ) (or (not (U13 x)) (not (U12 x)) (U23 x) ) (or (not (U44 x)) (U39 x) (U70 x) ) (or (not (U47 x)) (not (R8 x x)) (R4 x x) ) (or (not (U42 x)) (R36 x x) (R38 x x) ) (or (not (U13 x)) (not (U71 x)) (not (U75 x)) ) (or (not (R3 x x)) (U34 x) (R60 x x) ) (or (not (U37 x)) (not (R50 x x)) (not (U73 x)) ) (or (U56 x) (R4 x x) (not (U49 x)) ) (or (not (U28 x)) (U38 x) (R21 x x) ) (or (U76 x) (U1 x) (not (R57 x x)) ) (or (U42 x) (U4 x) (R60 x x) ) (or (U5 x) (R3 x x) (not (R11 x x)) ) (or (not (R47 x x)) (R26 x x) (R44 x x) ) (or (not (R17 x x)) (U62 x) (U67 x) ) (or (R29 x x) (not (U42 x)) (U64 x) ) (or (not (R15 x x)) (U40 x) (not (U10 x)) ) (or (U53 x) (not (R10 x x)) (not (R53 x x)) ) (or (not (U12 x)) (U16 x) (not (R26 x x)) ) (or (not (U28 x)) (not (U40 x)) (R12 x x) ) (or (R18 x x) (R52 x x) (not (U78 x)) ) (or (U7 x) (U20 x) (not (R14 x x)) ) (or (U64 x) (R41 x x) (U3 x) ) (or (R60 x x) (R27 x x) (not (U30 x)) ) (or (not (R57 x x)) (U4 x) (not (U12 x)) ) (or (not (U9 x)) (U58 x) (not (U6 x)) ) (or (R50 x x) (not (R49 x x)) (R41 x x) ) (or (U78 x) (not (U68 x)) (U42 x) ) (or (not (U50 x)) (not (U40 x)) (not (R39 x x)) ) (or (U5 x) (not (U54 x)) (U30 x) ) (or (U75 x) (not (U51 x)) (not (R47 x x)) ) (or (not (U41 x)) (not (U62 x)) (U75 x) ) (or (U2 x) (R36 x x) (not (R47 x x)) ) (or (not (U14 x)) (not (R31 x x)) (not (R5 x x)) ) (or (not (U27 x)) (not (R42 x x)) (not (U17 x)) ) (or (not (R11 x x)) (R14 x x) (R38 x x) ) (or (not (U53 x)) (not (U9 x)) (R4 x x) ) (or (U49 x) (not (R52 x x)) (not (R56 x x)) ) (or (not (U69 x)) (U33 x) (not (U60 x)) ) (or (not (R6 x x)) (R26 x x) (R58 x x) ) (or (not (U68 x)) (not (R18 x x)) (not (U51 x)) ) (or (not (U53 x)) (not (R59 x x)) (not (U55 x)) ) (or (R56 x x) (R37 x x) (not (U15 x)) ) (or (not (U58 x)) (U33 x) (U5 x) ) (or (not (R9 x x)) (U64 x) (not (U77 x)) ) (or (R35 x x) (R50 x x) (U20 x) ) (or (not (U2 x)) (not (U68 x)) (not (R60 x x)) ) (or (not (U1 x)) (not (R39 x x)) (R14 x x) ) (or (not (U33 x)) (U59 x) (U8 x) ) (or (U67 x) (U52 x) (U57 x) ) (or (R9 x x) (not (U29 x)) (R48 x x) ) (or (not (U58 x)) (R30 x x) (U31 x) ) (or (U80 x) (U61 x) (R50 x x) ) (or (not (U20 x)) (R51 x x) (not (R21 x x)) ) (or (not (R32 x x)) (R11 x x) (not (U1 x)) ) (or (not (U50 x)) (R28 x x) (not (U37 x)) ) (or (not (R51 x x)) (R20 x x) (U70 x) ) (or (not (R4 x x)) (R20 x x) (not (U23 x)) ) (or (not (U6 x)) (U19 x) (not (R2 x x)) ) (or (not (U25 x)) (not (R10 x x)) (not (R47 x x)) ) (or (not (R59 x x)) (U31 x) (R15 x x) ) (or (not (R39 x x)) (U63 x) (R6 x x) ) (or (not (U55 x)) (U19 x) (U25 x) ) (or (not (U15 x)) (not (R15 x x)) (not (R48 x x)) ) (or (not (R4 x x)) (not (U51 x)) (U16 x) ) (or (U70 x) (U32 x) (U31 x) ) (or (U64 x) (not (R1 x x)) (U41 x) ) (or (not (R60 x x)) (not (U80 x)) (U12 x) ) (or (R29 x x) (not (U46 x)) (not (R55 x x)) ) (or (not (U3 x)) (U6 x) (not (R8 x x)) ) (or (R29 x x) (not (U30 x)) (not (U24 x)) ) (or (U50 x) (U32 x) (not (U25 x)) ) (or (not (U14 x)) (not (U65 x)) (not (R35 x x)) ) (or (R26 x x) (U41 x) (U4 x) ) (or (R23 x x) (not (R18 x x)) (not (U15 x)) ) (or (U58 x) (U9 x) (U32 x) ) (or (U14 x) (not (U18 x)) (U64 x) ) (or (not (U48 x)) (U49 x) (not (U26 x)) ) (or (not (U23 x)) (not (R43 x x)) (R58 x x) ) (or (not (U47 x)) (not (R51 x x)) (R54 x x) ) (or (U34 x) (U35 x) (U53 x) ) (or (R12 x x) (not (U53 x)) (R5 x x) ) (or (not (U7 x)) (R31 x x) (U25 x) ) (or (R38 x x) (U3 x) (U73 x) ) (or (U1 x) (U44 x) (U8 x) ) (or (R40 x x) (U59 x) (U58 x) ) (or (U65 x) (not (U64 x)) (not (U33 x)) ) (or (not (U17 x)) (not (U19 x)) (not (R56 x x)) ) (or (R30 x x) (R8 x x) (not (R57 x x)) ) (or (R59 x x) (not (U67 x)) (not (U69 x)) ) (or (R34 x x) (U26 x) (R52 x x) ) (or (not (U5 x)) (U61 x) (not (U66 x)) ) (or (U37 x) (not (U14 x)) (R6 x x) ) (or (not (R39 x x)) (not (U69 x)) (U72 x) ) (or (U7 x) (R18 x x) (R40 x x) ) (or (not (U72 x)) (U60 x) (not (U26 x)) ) (or (R40 x x) (R13 x x) (R26 x x) ) (or (not (U63 x)) (R24 x x) (not (U38 x)) ) (or (U44 x) (not (R20 x x)) (not (U19 x)) ) (or (not (U61 x)) (not (U40 x)) (U4 x) ) (or (R47 x x) (R4 x x) (R45 x x) ) (or (U78 x) (U73 x) (not (U30 x)) ) (or (R32 x x) (R50 x x) (R27 x x) ) (or (not (U41 x)) (not (U6 x)) (U53 x) ) (or (U21 x) (R10 x x) (U56 x) ) (or (not (U60 x)) (U54 x) (not (U20 x)) ) (or (not (U79 x)) (R55 x x) (not (R49 x x)) ) (or (U59 x) (R17 x x) (U64 x) ) (or (U10 x) (U24 x) (R15 x x) ) (or (not (U64 x)) (R42 x x) (R43 x x) ) (or (U61 x) (not (U66 x)) (U34 x) ) (or (not (R8 x x)) (U62 x) (U48 x) ) (or (not (R32 x x)) (U79 x) (not (U16 x)) ) (or (R43 x x) (not (U46 x)) (R24 x x) ) (or (not (R12 x x)) (U42 x) (R45 x x) ) (or (U7 x) (not (R43 x x)) (not (U63 x)) ) (or (U16 x) (R42 x x) (R54 x x) ) (or (U70 x) (U67 x) (not (R48 x x)) ) (or (U15 x) (U24 x) (U68 x) ) (or (not (U5 x)) (U47 x) (R33 x x) ) (or (R1 x x) (U26 x) (U50 x) ) (or (not (U34 x)) (not (R52 x x)) (U73 x) ) (or (R15 x x) (not (U37 x)) (U53 x) ) (or (not (U63 x)) (not (U70 x)) (R58 x x) ) (or (R23 x x) (R43 x x) (U40 x) ) (or (not (U31 x)) (R59 x x) (U24 x) ) (or (not (R46 x x)) (U73 x) (not (U54 x)) ) (or (U57 x) (U65 x) (not (U35 x)) ) (or (not (R49 x x)) (R41 x x) (not (U36 x)) ) (or (not (R36 x x)) (U56 x) (not (R40 x x)) ) (or (not (U46 x)) (R17 x x) (not (R40 x x)) ) (or (U43 x) (not (R51 x x)) (U49 x) ) (or (U18 x) (U77 x) (R21 x x) ) (or (not (R29 x x)) (not (U20 x)) (U54 x) ) (or (not (U77 x)) (not (R10 x x)) (not (U48 x)) ) (or (R33 x x) (not (R34 x x)) (not (U51 x)) ) (or (R37 x x) (not (U46 x)) (R14 x x) ) (or (not (U79 x)) (U58 x) (not (R1 x x)) ) (or (not (R31 x x)) (R17 x x) (not (R58 x x)) ) (or (not (U25 x)) (not (R21 x x)) (U21 x) ) (or (not (U70 x)) (R56 x x) (U72 x) ) (or (not (U28 x)) (U56 x) (not (U31 x)) ) (or (not (U52 x)) (not (R55 x x)) (U30 x) ) (or (U12 x) (U61 x) (not (R17 x x)) ) (or (U25 x) (U16 x) (not (R32 x x)) ) (or (R27 x x) (not (R35 x x)) (U45 x) ) (or (R11 x x) (R13 x x) (not (R47 x x)) ) (or (not (R13 x x)) (not (R19 x x)) (U28 x) ) (or (U52 x) (U30 x) (not (U10 x)) ) (or (not (R6 x x)) (U42 x) (U44 x) ) (or (U52 x) (not (U65 x)) (R42 x x) ) (or (not (U53 x)) (R15 x x) (R31 x x) ) (or (not (U19 x)) (not (U80 x)) (not (R22 x x)) ) (or (not (U65 x)) (not (R8 x x)) (R54 x x) ) (or (not (R55 x x)) (not (U4 x)) (R1 x x) ) (or (not (U9 x)) (R33 x x) (R5 x x) ) (or (not (U9 x)) (not (R43 x x)) (R57 x x) ) (or (not (U66 x)) (R53 x x) (R56 x x) ) (or (U57 x) (not (U80 x)) (not (U65 x)) ) (or (R15 x x) (not (R37 x x)) (not (U58 x)) ) (or (not (R46 x x)) (U75 x) (not (U57 x)) ) (or (R35 x x) (not (U44 x)) (not (U79 x)) ) (or (R41 x x) (not (U79 x)) (not (R13 x x)) ) (or (R59 x x) (U45 x) (not (U22 x)) ) (or (not (U63 x)) (not (U52 x)) (U18 x) ) (or (not (R53 x x)) (U52 x) (U75 x) ) (or (not (U7 x)) (not (U77 x)) (R1 x x) ) (or (not (R56 x x)) (not (U65 x)) (not (U22 x)) ) (or (U30 x) (U42 x) (not (U24 x)) ) (or (not (R30 x x)) (U35 x) (not (U25 x)) ) (or (U59 x) (U10 x) (not (U23 x)) ) (or (not (R42 x x)) (not (U62 x)) (R47 x x) ) (or (not (U17 x)) (not (U59 x)) (not (R14 x x)) ) (or (U73 x) (R57 x x) (R8 x x) ) ))) 
(assert (forall ((x V)) ( exists ((y V)) (and (or (not (R2 x x)) (U20 y) (not (R8 x y)) ) (or (U44 y) (R37 y y) (not (R56 y y)) ) (or (not (R54 x x)) (not (R1 y y)) (not (R26 y y)) ) (or (R40 x y) (R41 y y) (not (R31 x y)) ) (or (not (R58 x x)) (R37 y y) (not (R47 y x)) ) (or (not (R19 y y)) (R35 y x) (R21 y y) ) (or (R25 y x) (not (R12 x y)) (U3 y) ) (or (not (U1 y)) (R3 x x) (not (U49 x)) ) (or (R45 y x) (R7 x x) (U56 y) ) (or (not (R7 y y)) (R56 x y) (not (U9 y)) ) (or (not (U14 y)) (U50 x) (R48 x y) ) (or (R45 x y) (R23 x x) (U30 x) ) (or (U78 y) (R11 y y) (R3 y x) ) (or (not (R25 y y)) (not (R1 x y)) (R49 y y) ) (or (R13 y y) (not (R46 y y)) (R9 x x) ) (or (not (U54 x)) (R36 x y) (not (U48 x)) ) (or (not (U57 y)) (R52 y y) (not (U74 y)) ) (or (R45 x y) (not (R30 x x)) (R55 x y) ) (or (R18 x x) (not (U78 y)) (not (R16 y x)) ) (or (not (U61 x)) (R59 x y) (R56 y y) ) (or (not (R20 x y)) (R47 x x) (U8 x) ) (or (R52 x x) (not (U77 x)) (not (U62 x)) ) (or (R19 x x) (not (R39 y y)) (U51 x) ) (or (not (R57 y x)) (not (R32 y y)) (U47 x) ) (or (not (R46 x y)) (R7 y y) (not (R10 x y)) ) (or (U33 y) (not (U55 x)) (not (U70 x)) ) (or (R47 y y) (not (R5 x y)) (U49 y) ) (or (not (U16 y)) (R25 x y) (not (R24 x x)) ) (or (not (R16 y y)) (not (R47 x x)) (R15 y x) ) (or (R57 x y) (R17 y x) (R41 x x) ) (or (not (U79 y)) (R60 y x) (not (R47 x y)) ) (or (not (U44 y)) (U55 x) (U15 y) ) (or (U20 y) (R37 y x) (not (U43 x)) ) (or (not (R14 y x)) (not (R14 x y)) (not (R53 y x)) ) (or (R37 x x) (not (R31 x x)) (not (U72 y)) ) (or (not (U78 y)) (R12 x x) (U70 y) ) (or (R12 y y) (U3 y) (not (R55 y x)) ) (or (not (U66 x)) (not (R18 y y)) (not (R13 y x)) ) (or (R7 y x) (R21 x y) (U8 y) ) (or (not (U62 y)) (not (R58 x x)) (not (R54 x x)) ) (or (R5 x y) (not (R2 x x)) (not (U29 x)) ) (or (R10 y x) (U34 y) (U16 y) ) (or (not (U79 y)) (not (U27 x)) (not (U4 x)) ) (or (R27 y y) (U52 x) (not (R2 y y)) ) (or (not (U24 y)) (not (U76 y)) (R20 y x) ) (or (not (R29 x x)) (not (U61 y)) (not (R14 y x)) ) (or (not (U49 y)) (not (U75 y)) (R41 x x) ) (or (R27 x x) (not (R30 x y)) (R45 x x) ) (or (R7 y y) (not (R7 x x)) (R58 y x) ) (or (not (U28 y)) (not (R37 y y)) (not (R2 y x)) ) (or (U45 y) (R59 y x) (U35 y) ) (or (U63 y) (R16 y x) (not (U2 x)) ) (or (R11 x x) (not (R31 x y)) (not (U79 y)) ) (or (not (U37 y)) (not (U67 y)) (U53 x) ) (or (not (U34 x)) (R37 y x) (not (U29 x)) ) (or (not (R4 x y)) (not (U77 y)) (U68 y) ) (or (R44 x y) (not (U79 y)) (not (R7 x x)) ) (or (U54 y) (not (R57 x y)) (not (U59 x)) ) (or (R47 y y) (R54 x y) (R43 y y) ) (or (U25 x) (not (R23 y x)) (R47 x x) ) (or (U56 x) (R25 x x) (not (R10 x x)) ) (or (R51 y y) (not (U73 y)) (R42 y y) ) (or (not (U60 y)) (U21 y) (R28 x x) ) (or (not (R41 x x)) (not (R15 x y)) (R24 x y) ) (or (R18 x x) (U2 x) (U12 y) ) (or (R14 y y) (not (U77 y)) (not (R7 y y)) ) (or (R1 y x) (not (U35 y)) (R29 x x) ) (or (U10 y) (U16 y) (not (R53 y y)) ) (or (not (U26 y)) (not (R15 x x)) (U44 x) ) (or (R13 x y) (U50 x) (R48 x y) ) (or (not (R31 y y)) (not (U18 y)) (not (R47 y y)) ) (or (not (R28 x x)) (not (R21 x y)) (U58 x) ) (or (not (U3 x)) (U66 y) (U47 x) ) (or (not (R57 y x)) (R18 x y) (not (R34 y y)) ) (or (not (R47 x y)) (U57 x) (not (R23 y y)) ) (or (not (R46 x x)) (R19 x y) (not (U80 y)) ) (or (R30 y x) (R43 x x) (not (R4 x y)) ) (or (not (U43 x)) (not (R29 y y)) (not (R18 x y)) ) (or (R23 y x) (R27 y y) (R39 y x) ) (or (R60 x y) (not (R42 x x)) (not (U5 x)) ) (or (not (U61 y)) (not (R59 y y)) (U74 y) ) (or (U15 y) (not (R31 x x)) (R17 x x) ) (or (not (U51 y)) (not (U43 y)) (R29 x x) ) (or (R13 x y) (not (U26 x)) (R30 y y) ) (or (R33 y x) (R12 x x) (U64 y) ) (or (not (R18 x y)) (U21 x) (not (U17 y)) ) (or (R2 y y) (not (R39 x y)) (U37 x) ) (or (not (R53 x x)) (R5 x y) (not (R42 y y)) ) (or (not (R16 x y)) (not (R17 y y)) (not (R54 x x)) ) (or (not (R29 y y)) (not (R60 y x)) (not (R2 x x)) ) (or (R42 y x) (R5 y y) (U40 x) ) (or (not (R27 x x)) (U27 y) (not (U44 x)) ) (or (U18 x) (R47 x x) (not (R20 y y)) ) (or (R16 x x) (R25 x x) (not (R46 y y)) ) (or (R35 x y) (R1 y x) (R51 x y) ) (or (R31 y x) (R42 y y) (U28 y) ) (or (not (R36 y x)) (not (U48 x)) (R9 y y) ) (or (R6 y x) (not (R33 y x)) (not (R56 y x)) ) (or (not (R26 x x)) (not (R2 x x)) (not (R41 x y)) ) (or (R14 x x) (U36 x) (not (U50 x)) ) (or (U68 y) (U3 y) (not (U70 x)) ) (or (not (R24 y y)) (R15 y x) (not (R42 y y)) ) (or (R25 x y) (R6 x y) (U11 y) ) (or (not (R32 x x)) (not (R34 y y)) (U62 x) ) (or (not (U48 x)) (not (U18 y)) (not (U40 x)) ) (or (R6 y x) (R12 x x) (not (R47 x y)) ) (or (not (R45 x x)) (U65 x) (not (U48 x)) ) (or (R55 x y) (R31 y x) (R20 y y) ) (or (R9 x x) (R17 x x) (R9 x y) ) (or (not (U54 y)) (U15 x) (R8 x y) ) (or (R19 x y) (not (R22 x x)) (R52 x x) ) (or (not (U71 x)) (not (R20 y y)) (U78 x) ) (or (not (R56 y x)) (U17 x) (R16 x x) ) (or (not (R46 x y)) (not (U58 x)) (not (R59 y x)) ) (or (not (U28 y)) (R11 x y) (not (R35 x x)) ) (or (not (U72 x)) (U57 y) (U59 x) ) (or (not (R39 y x)) (not (U11 y)) (R42 y y) ) (or (R4 x x) (U69 x) (not (U33 y)) ) (or (R29 x x) (U52 y) (not (U54 x)) ) (or (not (R7 x x)) (R24 y y) (not (U6 x)) ) (or (R52 x y) (not (U54 y)) (U71 x) ) (or (U12 x) (not (R46 y x)) (not (R33 x x)) ) (or (R60 y x) (not (U69 x)) (U5 y) ) (or (U74 x) (not (R48 x x)) (R40 x x) ) (or (U12 x) (not (R59 y x)) (not (U40 x)) ) (or (R55 y y) (not (U13 x)) (U32 x) ) (or (not (U42 y)) (not (U15 y)) (not (R30 x x)) ) (or (R44 x x) (U74 y) (R46 y x) ) (or (R2 x y) (not (R16 x x)) (R12 y x) ) (or (R2 y x) (not (R50 y x)) (R34 x x) ) (or (not (R54 y y)) (U40 x) (not (R14 y y)) ) (or (R30 y y) (R24 y y) (U59 y) ) (or (U53 y) (R15 x y) (not (U77 y)) ) (or (not (U39 x)) (not (U75 x)) (not (U55 y)) ) (or (R10 y x) (not (U44 y)) (R56 x x) ) (or (not (U55 y)) (U63 y) (not (R17 x y)) ) (or (R48 x x) (not (U48 x)) (U35 x) ) (or (not (R24 x x)) (U12 y) (R19 x y) ) (or (not (U44 y)) (not (U29 x)) (R7 x y) ) (or (R30 y y) (R57 y x) (not (R19 y x)) ) (or (U45 y) (U10 x) (not (R44 y x)) ) (or (not (U2 x)) (U33 y) (not (U73 x)) ) (or (not (R9 y y)) (not (R56 y x)) (U25 y) ) (or (U77 y) (not (R3 x x)) (R22 x x) ) (or (not (R40 x x)) (not (U50 y)) (U62 x) ) (or (R7 x y) (R32 x y) (not (U5 y)) ) (or (U61 x) (R13 y y) (R46 y x) ) (or (not (U27 x)) (U29 x) (not (U29 y)) ) (or (not (R13 y y)) (U55 x) (not (U30 y)) ) (or (R47 y y) (not (R37 y y)) (not (R33 x y)) ) (or (R50 y y) (R58 y y) (not (U70 y)) ) (or (R26 y y) (U47 x) (not (U74 x)) ) (or (not (U37 y)) (R14 x x) (R58 y y) ) (or (not (U59 x)) (not (U4 y)) (R4 x y) ) (or (R60 y y) (not (U47 y)) (R31 x y) ) (or (U77 x) (U42 y) (U23 y) ) (or (U20 x) (not (R48 y y)) (R55 x y) ) (or (R4 y x) (not (R57 y x)) (not (R11 x x)) ) (or (R29 x y) (not (R53 x y)) (R41 y y) ) (or (R6 x x) (not (U60 y)) (R54 x y) ) (or (not (R17 x y)) (U25 y) (not (U31 y)) ) (or (not (R18 y y)) (not (R22 y y)) (U19 y) ) (or (not (U39 x)) (not (R5 x y)) (not (U36 x)) ) (or (U44 y) (U49 x) (U41 y) ) (or (U24 y) (R44 y y) (R39 x y) ) (or (not (U78 y)) (not (R20 x x)) (not (U24 x)) ) (or (R6 y x) (not (R2 x x)) (not (R25 x x)) ) (or (not (U17 x)) (U39 y) (R34 x x) ) (or (not (U80 x)) (not (U33 y)) (not (R51 y x)) ) (or (R16 x y) (R56 x y) (U1 y) ) (or (not (R47 x y)) (not (R26 y y)) (R39 x x) ) (or (R53 x y) (U50 y) (not (R23 y y)) ) (or (not (R35 y x)) (not (R27 y y)) (not (R56 y x)) ) (or (not (U53 y)) (R16 x x) (U67 y) ) (or (U36 y) (not (U66 x)) (R32 y y) ) (or (R20 x x) (not (R5 x y)) (U67 x) ) (or (not (R54 x x)) (not (R39 y x)) (not (R17 y x)) ) (or (not (U52 y)) (R27 y y) (R19 x x) ) (or (U7 x) (not (U44 y)) (U70 y) ) (or (R15 y y) (U33 x) (not (R4 y x)) ) (or (not (U17 x)) (R49 x x) (not (U48 y)) ) (or (not (U69 y)) (R40 y x) (not (U35 y)) ) (or (R41 y y) (R33 x x) (not (U26 y)) ) (or (not (U11 x)) (U42 y) (R54 x y) ) (or (not (R21 y y)) (not (U79 x)) (not (R51 y x)) ) (or (not (R47 y x)) (R18 y y) (not (R14 y y)) ) (or (not (R27 y x)) (not (U6 x)) (R12 y y) ) (or (R4 x y) (R44 x y) (R6 x x) ) (or (not (U53 y)) (U49 y) (U22 x) ) (or (R26 x y) (R43 y y) (not (R44 y x)) ) (or (R5 y y) (R6 x y) (not (R31 x x)) ) (or (U52 y) (not (U73 y)) (R11 y x) ) (or (U4 x) (R10 x x) (U76 y) ) (or (R3 y x) (not (R28 x x)) (R45 y y) ) (or (R15 y y) (R41 x y) (not (R18 x y)) ) (or (R57 y y) (not (U13 x)) (R2 y x) ) (or (R12 y x) (R14 x y) (not (R59 y y)) ) (or (R13 x x) (not (U54 x)) (U78 x) ) (or (not (U29 y)) (not (U44 y)) (not (R20 y y)) ) (or (not (U4 y)) (not (R22 y x)) (U68 x) ) (or (not (R18 x y)) (R6 x x) (U22 x) ) (or (R3 x x) (R12 x x) (not (U36 x)) ) (or (not (U48 x)) (U9 x) (U40 y) ) (or (not (U24 y)) (not (R8 x x)) (not (U80 x)) ) (or (not (U49 y)) (R3 x y) (U28 x) ) (or (not (R22 x y)) (not (R31 y y)) (not (R10 y x)) ) (or (not (U36 y)) (not (R41 y y)) (not (R38 x y)) ) (or (not (U17 x)) (not (R39 y x)) (R51 y x) ) (or (R12 x x) (R44 y x) (not (U27 x)) ) (or (not (U72 x)) (R16 x x) (U11 x) ) (or (not (R31 y y)) (R47 x x) (not (R34 y x)) ) (or (U74 y) (not (U63 x)) (not (R32 y y)) ) (or (not (U21 y)) (not (U6 y)) (not (R47 y x)) ) (or (R60 x x) (U66 y) (R10 x y) ) (or (R10 y y) (not (R33 y y)) (not (U19 x)) ) (or (not (R37 y y)) (U13 y) (U41 x) ) (or (R1 y x) (not (U1 x)) (not (R32 x y)) ) (or (R2 x y) (U49 y) (U10 y) ) (or (R5 x y) (R10 x y) (not (R58 y y)) ) (or (not (R44 y y)) (not (R20 x y)) (not (U62 y)) ) (or (not (U9 y)) (R2 x y) (not (R14 x x)) ) (or (not (U49 x)) (not (R16 y y)) (not (R34 y y)) ) (or (not (U64 x)) (not (R12 x y)) (R44 y x) ) (or (not (U9 x)) (U11 x) (R39 x x) ) (or (U60 x) (not (U39 x)) (not (R60 x y)) ) (or (R21 y y) (not (R11 y x)) (not (R48 y y)) ) (or (R25 x y) (U11 y) (U80 y) ) (or (not (R29 y x)) (U77 x) (U52 y) ) (or (not (R22 y y)) (not (R57 x x)) (not (R5 y y)) ) (or (U23 x) (R55 x x) (not (R10 y y)) ) (or (not (R18 y x)) (not (U52 y)) (not (R55 x x)) ) (or (not (R3 x y)) (R12 x y) (not (R3 y x)) ) (or (R9 x y) (R28 x y) (not (U64 x)) ) (or (not (U26 y)) (U69 x) (not (U8 y)) ) (or (R53 x y) (not (R48 y x)) (R38 y y) ) (or (not (R19 y y)) (U67 x) (U47 x) ) (or (not (R29 x x)) (not (U2 x)) (not (R46 x y)) ) (or (not (U3 x)) (not (U68 x)) (not (R52 x y)) ) (or (not (R31 y x)) (not (R52 x y)) (R41 y y) ) (or (U20 x) (not (R25 x y)) (R39 y y) ) (or (U3 x) (not (R8 y x)) (U54 x) ) (or (R38 y y) (R6 x y) (not (U79 y)) ) (or (not (R41 y y)) (not (R23 x y)) (not (R18 y x)) ) (or (R1 x y) (not (U69 y)) (R11 y x) ) (or (R59 x y) (not (R37 x x)) (not (R7 y x)) ) (or (R42 x x) (R60 y y) (not (U62 x)) ) (or (R44 x x) (not (R58 y y)) (not (R29 x y)) ) (or (R27 y y) (R56 x x) (not (U8 y)) ) (or (U5 x) (not (U59 y)) (R32 y x) ) (or (U50 y) (U26 y) (not (U61 y)) ) (or (not (R39 y y)) (U50 y) (U41 y) ) (or (not (R12 x y)) (U30 y) (not (U69 y)) ) (or (R14 x y) (not (R52 y y)) (U6 y) ) (or (not (R46 y x)) (not (U75 x)) (U61 y) ) (or (not (U75 x)) (U48 x) (not (R7 y x)) ) (or (U73 y) (R16 y x) (not (R24 y y)) ) (or (R40 x y) (not (R7 x y)) (not (R19 x x)) ) (or (not (R27 y x)) (R52 x y) (not (R37 x x)) ) (or (not (U74 x)) (R40 x x) (not (U46 x)) ) (or (R36 y y) (U13 y) (not (U77 x)) ) (or (not (U80 y)) (R34 y y) (not (R50 y x)) ) (or (R5 y y) (not (R2 x y)) (not (R42 y x)) ) (or (not (R17 x y)) (R41 x y) (R23 y y) ) (or (R53 x x) (U71 y) (R9 x y) ) (or (not (U22 x)) (not (R9 y y)) (R6 y y) ) (or (not (R29 x x)) (not (U26 x)) (R15 x y) ) (or (R32 y x) (not (R36 y y)) (not (R37 y x)) ) (or (U52 x) (U27 x) (not (U70 y)) ) (or (U59 x) (R60 y y) (not (U80 y)) ) (or (R57 y y) (not (U47 x)) (not (U6 x)) ) (or (U3 y) (R15 y x) (not (U27 x)) ) (or (not (U75 x)) (not (R42 y y)) (R60 y x) ) (or (U36 y) (not (U62 x)) (not (R29 x x)) ) (or (R4 x x) (not (R7 y x)) (R43 x x) ) (or (not (R44 x y)) (not (U68 x)) (not (R22 x y)) ) (or (not (R34 y x)) (not (R4 y x)) (not (U27 x)) ) (or (not (R15 y y)) (not (U15 x)) (R34 y x) ) (or (R27 x x) (not (U10 y)) (R52 y x) ) (or (not (R21 x y)) (not (R17 y y)) (R33 y x) ) (or (R15 x x) (not (U23 x)) (U4 y) ) (or (U48 x) (not (U22 y)) (R49 y x) ) (or (U73 x) (not (R57 y x)) (not (R16 x x)) ) (or (not (R32 x x)) (not (R21 y y)) (R7 x y) ) (or (not (R14 y x)) (not (U3 y)) (R56 y y) ) (or (U74 y) (not (U5 y)) (R38 y x) ) (or (not (U62 x)) (not (R35 y x)) (U65 y) ) (or (not (U24 y)) (U56 y) (not (R39 x x)) ) (or (not (R47 y x)) (R29 y x) (U39 x) ) (or (not (R23 y y)) (not (U53 x)) (not (U11 x)) ) (or (not (R21 y x)) (R49 y x) (not (R17 y x)) ) (or (R38 y x) (not (R55 y y)) (not (R7 y y)) ) (or (R54 x y) (not (R34 y x)) (not (U75 y)) ) (or (U35 y) (not (U76 x)) (R21 y x) ) (or (U64 x) (not (R60 x x)) (not (R22 y y)) ) (or (not (R4 x y)) (not (R48 y y)) (U33 x) ) (or (R3 x y) (not (R38 y x)) (not (U5 x)) ) (or (R26 x x) (R54 y x) (not (U56 y)) ) (or (not (U26 y)) (not (R60 x x)) (R46 y y) ) (or (R45 x x) (not (U47 x)) (not (R39 x y)) ) (or (U48 x) (R9 x x) (R50 x x) ) (or (not (R43 x y)) (not (R56 x x)) (U74 y) ) (or (U19 y) (not (R15 y y)) (U64 y) ) (or (not (U68 x)) (R17 y x) (not (U60 y)) ) (or (R37 y x) (R36 x x) (R10 y x) ) (or (not (U36 y)) (U11 y) (R4 y x) ) (or (not (R25 x y)) (not (R57 x x)) (R3 x x) ) (or (not (U12 y)) (not (R53 x x)) (not (R58 y x)) ) (or (not (R9 x y)) (R38 x y) (U49 y) ) (or (not (R45 y x)) (not (R39 x y)) (not (R59 y y)) ) (or (not (U45 y)) (not (R47 y y)) (U34 y) ) (or (not (R37 y x)) (not (R55 y x)) (not (R36 x y)) ) (or (R23 y x) (not (R2 y x)) (not (U50 y)) ) (or (not (U61 x)) (R7 x y) (R23 y y) ) (or (U8 x) (not (R58 x y)) (U25 x) ) (or (not (R13 x y)) (not (U40 x)) (not (U56 y)) ) (or (not (U1 x)) (not (U24 y)) (R21 x x) ) (or (not (U4 y)) (not (R57 y y)) (R43 y x) ) (or (R32 x x) (not (U62 y)) (U50 y) ) (or (not (U16 y)) (R17 x x) (R48 x x) ) (or (not (R5 y y)) (U7 y) (not (R28 y x)) ) (or (U56 y) (U14 x) (R26 y y) ) (or (U11 y) (R54 x y) (R15 y x) ) (or (not (R20 y y)) (not (R27 x y)) (U58 y) ) (or (not (R51 x x)) (not (R23 y y)) (U6 x) ) (or (not (R3 y y)) (not (U33 y)) (R34 x y) ) (or (U50 y) (not (R32 x x)) (U24 x) ) (or (U4 y) (not (U41 x)) (R26 y x) ) (or (R15 x x) (R22 x x) (U46 y) ) (or (R25 y y) (not (U74 x)) (R56 y y) ) (or (R47 x y) (U37 y) (not (U49 x)) ) (or (not (R44 y x)) (U33 y) (R41 x y) ) (or (not (R54 x x)) (R23 y y) (R25 x x) ) (or (R3 y x) (not (R57 y x)) (not (R49 y x)) ) (or (not (R17 x x)) (not (R37 y y)) (R13 y y) ) (or (not (R25 x x)) (not (R17 y x)) (not (U19 x)) ) (or (not (R56 x y)) (not (R17 y x)) (not (R52 x y)) ) (or (R52 y x) (not (R18 x y)) (R39 x y) ) (or (not (U55 y)) (R43 y y) (not (U25 y)) ) (or (R35 y x) (R19 x y) (not (R13 x x)) ) (or (not (R29 x x)) (R27 y y) (R19 y y) ) (or (not (R57 y y)) (R12 x y) (not (U63 x)) ) (or (U46 y) (U52 x) (not (R22 x x)) ) (or (not (R58 y x)) (U71 y) (not (R49 y y)) ) (or (not (U58 x)) (R7 x x) (not (R19 x y)) ) (or (R58 x x) (not (R13 y y)) (R60 y y) ) (or (not (R59 x x)) (U23 x) (R52 y y) ) (or (R50 y x) (not (R9 y x)) (R38 y x) ) (or (R51 x x) (R45 x y) (R41 x x) ) (or (not (R27 y y)) (not (U49 x)) (not (R11 y y)) ) (or (U38 y) (not (U54 y)) (R53 x y) ) (or (U48 y) (not (U45 y)) (not (R33 y y)) ) (or (U79 x) (R41 x x) (not (R40 x y)) ) (or (not (R44 x x)) (not (U11 x)) (not (U38 y)) ) (or (R18 x x) (not (R48 x x)) (not (U2 y)) ) (or (R43 x x) (not (U69 x)) (not (R36 x x)) ) (or (R3 x x) (not (U62 y)) (U51 y) ) (or (not (U55 x)) (not (R29 y y)) (not (R35 x x)) ) (or (U34 y) (not (U49 x)) (U43 y) ) (or (U62 x) (R50 x x) (not (U56 y)) ) (or (R47 y x) (R34 x y) (R55 y y) ) (or (R5 y x) (not (R45 y x)) (not (R29 x y)) ) (or (R14 x y) (R39 y x) (not (U21 x)) ) (or (not (R36 x y)) (U12 y) (not (R36 y x)) ) (or (R24 y y) (not (R10 x x)) (not (R19 y x)) ) (or (R18 x y) (not (U12 y)) (not (U37 x)) ) (or (U57 y) (R39 y y) (not (R15 y x)) ) (or (U45 x) (U73 y) (not (R27 x x)) ) (or (R6 y y) (not (U24 y)) (not (R24 y y)) ) (or (U20 x) (not (R20 x x)) (not (R15 x y)) ) (or (not (U67 y)) (R54 y x) (R12 x x) ) (or (R18 y x) (not (R44 y y)) (not (U9 x)) ) (or (R1 y x) (R34 y y) (U24 x) ) (or (U27 y) (not (R50 y x)) (not (R59 y y)) ) (or (not (U17 x)) (not (U20 x)) (not (R32 x x)) ) (or (R47 x x) (not (R2 x x)) (not (R24 x y)) ) (or (R37 x x) (R54 x x) (not (R50 x y)) ) (or (not (R27 x y)) (U21 x) (not (R1 y y)) ) (or (R14 x y) (not (R1 y x)) (R1 x x) ) (or (U76 x) (U52 y) (not (R9 y y)) ) (or (R54 x x) (R11 y y) (U56 x) ) (or (not (R2 y x)) (U77 x) (U11 y) ) (or (U64 y) (R50 x x) (U56 y) ) (or (R41 x y) (R52 y y) (not (U75 x)) ) (or (R56 y x) (not (R22 x y)) (U33 x) ) (or (R54 y y) (U23 x) (R6 x x) ) (or (R6 x x) (not (R44 y x)) (not (R37 y x)) ) (or (U56 x) (not (R10 y x)) (U54 x) ) (or (U28 x) (not (R39 x y)) (R22 y x) ) (or (R10 y y) (not (R40 y y)) (not (U13 x)) ) (or (U76 x) (R52 x y) (not (U51 y)) ) (or (R44 x y) (R22 y y) (R4 x x) ) (or (not (R42 x x)) (R1 y x) (not (R48 y x)) ) (or (R3 x x) (R4 x x) (U32 y) ) (or (not (R14 x y)) (R40 y y) (not (U35 y)) ) (or (R31 x x) (R13 x y) (U41 y) ) (or (U20 x) (R42 x y) (R52 y y) ) (or (not (U69 x)) (not (R21 x y)) (R29 x x) ) (or (not (R11 x x)) (not (R24 y x)) (not (U76 x)) ) (or (R20 x y) (not (U78 x)) (R29 y x) ) (or (not (R60 y y)) (not (R58 y y)) (not (R13 y x)) ) )  ))) 
(check-sat)