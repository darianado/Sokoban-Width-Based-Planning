(define (problem p1)
  (:domain sokoban)
  (:objects\
    l11 l12 l13 l14 l15 l16 l17 
    l21 l22 l23 l24 l25 l26 l27
    l31 l32 l33 l34 l35 l36 l37 - location
  )

  (:init
    (agent-at l24)

    (box-at l23) (box-at l25)

    (wall-at l11) (wall-at l12) (wall-at l13) (wall-at l14) (wall-at l15) (wall-at l16) (wall-at l17)   
    (wall-at l21) (wall-at l27)
    (wall-at l31) (wall-at l32) (wall-at l33) (wall-at l34) (wall-at l35) (wall-at l36) (wall-at l37) 
    
    (adj-s l11 l21)
    (adj-e l11 l12)
    (adj-s l12 l22)
    (adj-e l12 l13)
    (adj-v l12 l11)
    (adj-s l13 l23)
    (adj-e l13 l14)
    (adj-v l13 l12)
    (adj-s l14 l24)
    (adj-e l14 l15)
    (adj-v l14 l13)
    (adj-s l15 l25)
    (adj-e l15 l16)
    (adj-v l15 l14)
    (adj-s l16 l26)
    (adj-e l16 l17)
    (adj-v l16 l15)
    (adj-s l17 l27)
    (adj-v l17 l16)
    (adj-n l21 l11)
    (adj-s l21 l31)
    (adj-e l21 l22)
    (adj-n l22 l12)
    (adj-s l22 l32)
    (adj-e l22 l23)
    (adj-v l22 l21)
    (adj-n l23 l13)
    (adj-s l23 l33)
    (adj-e l23 l24)
    (adj-v l23 l22)
    (adj-n l24 l14)
    (adj-s l24 l34)
    (adj-e l24 l25)
    (adj-v l24 l23)
    (adj-n l25 l15)
    (adj-s l25 l35)
    (adj-e l25 l26)
    (adj-v l25 l24)
    (adj-n l26 l16)
    (adj-s l26 l36)
    (adj-e l26 l27)
    (adj-v l26 l25)
    (adj-n l27 l17)
    (adj-s l27 l37)
    (adj-v l27 l26)
    (adj-n l31 l21)
    (adj-e l31 l32)
    (adj-n l32 l22)
    (adj-e l32 l33)
    (adj-v l32 l31)
    (adj-n l33 l23)
    (adj-e l33 l34)
    (adj-v l33 l32)
    (adj-n l34 l24)
    (adj-e l34 l35)
    (adj-v l34 l33)
    (adj-n l35 l25)
    (adj-e l35 l36)
    (adj-v l35 l34)
    (adj-n l36 l26)
    (adj-e l36 l37)
    (adj-v l36 l35)
    (adj-n l37 l27)
    (adj-v l37 l36)

  )

  (:goal
    (and
      (box-at l26) (box-at l22) 
    )
  )
)
