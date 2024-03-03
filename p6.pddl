(define (problem sokoban-prbl)
  (:domain sokoban)
  (:objects
  l11 l12 l13 l14 l15 l16 l17 l18
  l21 l22 l23 l24 l25 l26 l27 l28
  l31 l32 l33 l34 l35 l36 l37 l38
  l41 l42 l43 l44 l45 l46 l47 l48
  l51 l52 l53 l54 l55 l56 l57 l58
  l61 l62 l63 l64 l65 l66 l67 l68 - location
)



  (:init
    (agent-at l25)

    (box-at l23) (box-at l33) (box-at l34) (box-at l46)

    (wall-at l11) (wall-at l12) (wall-at l13)  (wall-at l14) (wall-at l15) (wall-at l16) (wall-at l17) (wall-at l18)   
    (wall-at l21) (wall-at l27) (wall-at l28)
    (wall-at l31) (wall-at l38) 
    (wall-at l41) (wall-at l48)
    (wall-at l51) (wall-at l54) (wall-at l55) (wall-at l56) (wall-at l57) (wall-at l58) 
    (wall-at l61) (wall-at l62) (wall-at l63) (wall-at l64)
    
    (adj-e l11 l12)
    (adj-v l12 l11)
    (adj-s l11 l21)
    (adj-n l21 l11)
    (adj-e l12 l13)
    (adj-v l13 l12)
    (adj-s l12 l22)
    (adj-n l22 l12)
    (adj-e l13 l14)
    (adj-v l14 l13)
    (adj-s l13 l23)
    (adj-n l23 l13)
    (adj-e l14 l15)
    (adj-v l15 l14)
    (adj-s l14 l24)
    (adj-n l24 l14)
    (adj-e l15 l16)
    (adj-v l16 l15)
    (adj-s l15 l25)
    (adj-n l25 l15)
    (adj-e l16 l17)
    (adj-v l17 l16)
    (adj-s l16 l26)
    (adj-n l26 l16)
    (adj-e l17 l18)
    (adj-v l18 l17)
    (adj-s l17 l27)
    (adj-n l27 l17)
    (adj-s l18 l28)
    (adj-n l28 l18)
    (adj-e l21 l22)
    (adj-v l22 l21)
    (adj-s l21 l31)
    (adj-n l31 l21)
    (adj-e l22 l23)
    (adj-v l23 l22)
    (adj-s l22 l32)
    (adj-n l32 l22)
    (adj-e l23 l24)
    (adj-v l24 l23)
    (adj-s l23 l33)
    (adj-n l33 l23)
    (adj-e l24 l25)
    (adj-v l25 l24)
    (adj-s l24 l34)
    (adj-n l34 l24)
    (adj-e l25 l26)
    (adj-v l26 l25)
    (adj-s l25 l35)
    (adj-n l35 l25)
    (adj-e l26 l27)
    (adj-v l27 l26)
    (adj-s l26 l36)
    (adj-n l36 l26)
    (adj-e l27 l28)
    (adj-v l28 l27)
    (adj-s l27 l37)
    (adj-n l37 l27)
    (adj-s l28 l38)
    (adj-n l38 l28)
    (adj-e l31 l32)
    (adj-v l32 l31)
    (adj-s l31 l41)
    (adj-n l41 l31)
    (adj-e l32 l33)
    (adj-v l33 l32)
    (adj-s l32 l42)
    (adj-n l42 l32)
    (adj-e l33 l34)
    (adj-v l34 l33)
    (adj-s l33 l43)
    (adj-n l43 l33)
    (adj-e l34 l35)
    (adj-v l35 l34)
    (adj-s l34 l44)
    (adj-n l44 l34)
    (adj-e l35 l36)
    (adj-v l36 l35)
    (adj-s l35 l45)
    (adj-n l45 l35)
    (adj-e l36 l37)
    (adj-v l37 l36)
    (adj-s l36 l46)
    (adj-n l46 l36)
    (adj-e l37 l38)
    (adj-v l38 l37)
    (adj-s l37 l47)
    (adj-n l47 l37)
    (adj-s l38 l48)
    (adj-n l48 l38)
    (adj-e l41 l42)
    (adj-v l42 l41)
    (adj-s l41 l51)
    (adj-n l51 l41)
    (adj-e l42 l43)
    (adj-v l43 l42)
    (adj-s l42 l52)
    (adj-n l52 l42)
    (adj-e l43 l44)
    (adj-v l44 l43)
    (adj-s l43 l53)
    (adj-n l53 l43)
    (adj-e l44 l45)
    (adj-v l45 l44)
    (adj-s l44 l54)
    (adj-n l54 l44)
    (adj-e l45 l46)
    (adj-v l46 l45)
    (adj-s l45 l55)
    (adj-n l55 l45)
    (adj-e l46 l47)
    (adj-v l47 l46)
    (adj-s l46 l56)
    (adj-n l56 l46)
    (adj-e l47 l48)
    (adj-v l48 l47)
    (adj-s l47 l57)
    (adj-n l57 l47)
    (adj-s l48 l58)
    (adj-n l58 l48)
    (adj-e l51 l52)
    (adj-v l52 l51)
    (adj-s l51 l61)
    (adj-n l61 l51)
    (adj-e l52 l53)
    (adj-v l53 l52)
    (adj-s l52 l62)
    (adj-n l62 l52)
    (adj-e l53 l54)
    (adj-v l54 l53)
    (adj-s l53 l63)
    (adj-n l63 l53)
    (adj-e l54 l55)
    (adj-v l55 l54)
    (adj-s l54 l64)
    (adj-n l64 l54)
    (adj-e l55 l56)
    (adj-v l56 l55)
    (adj-s l55 l65)
    (adj-n l65 l55)
    (adj-e l56 l57)
    (adj-v l57 l56)
    (adj-s l56 l66)
    (adj-n l66 l56)
    (adj-e l57 l58)
    (adj-v l58 l57)
    (adj-s l57 l67)
    (adj-n l67 l57)
    (adj-s l58 l68)
    (adj-n l68 l58)
    (adj-e l61 l62)
    (adj-v l62 l61)
    (adj-e l62 l63)
    (adj-v l63 l62)
    (adj-e l63 l64)
    (adj-v l64 l63)
    (adj-e l64 l65)
    (adj-v l65 l64)
    (adj-e l65 l66)
    (adj-v l66 l65)
    (adj-e l66 l67)
    (adj-v l67 l66)
    (adj-e l67 l68)
    (adj-v l68 l67)


  )

  (:goal
    (and
      (box-at l33) (box-at l34) (box-at l35) (box-at l26) 
    )
  )
)
