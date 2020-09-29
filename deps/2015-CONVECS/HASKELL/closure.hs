data Bit = D0 | D1
  deriving (Show, Eq, Ord)

data Vector = Empty_vector | V Bit Vector 
  deriving (Show, Eq, Ord)

data Matrix = Empty_matrix | M Vector Matrix 
  deriving (Show, Eq, Ord)

plus :: Bit -> Bit -> Bit
btimes :: Bit -> Bit -> Bit
vchop :: Matrix -> Matrix
innerProduct :: Vector -> Matrix -> Bit
vecMat :: Vector -> Matrix -> Vector
mtimes :: Matrix -> Matrix -> Matrix
closure :: Matrix -> Matrix

btimes D0 x = D0
btimes D1 x = x
plus D0 x = x
plus D1 x = D1
vchop (M (V x u) n) = (M u (vchop n))
vchop Empty_matrix = Empty_matrix
innerProduct (V x u) (M (V y vEC) l) = (plus (btimes x y) (innerProduct u l))
innerProduct Empty_vector Empty_matrix = D0
vecMat u (M (V y vEC) l) = (V (innerProduct u (M (V y vEC) l)) (vecMat u (vchop (M (V y vEC) l))))
vecMat u (M Empty_vector l) = Empty_vector
mtimes (M u n) l = (M (vecMat u l) (mtimes n l))
mtimes Empty_matrix l = Empty_matrix
closure l | l == (mtimes l l) = l
closure l | l /= (mtimes l l) = (closure (mtimes l l))

main = do
 print (closure (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 Empty_vector)))))))))) (M (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 Empty_vector)))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 Empty_vector)))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 Empty_vector)))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))) Empty_matrix)))))))))))
 print (closure (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))) (M (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))) (M (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))) Empty_matrix)))))))))))))))))))))
 print (closure  (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) Empty_matrix)))))))))))))))))))))))))))))))))
 print (closure  (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) Empty_matrix)))))))))))))))))))))))))))))))))
 print (closure  (M (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D1 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 Empty_vector)))))))))))))))))))))))))))))))) (M (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D0 (V D1 Empty_vector)))))))))))))))))))))))))))))))) Empty_matrix)))))))))))))))))))))))))))))))))