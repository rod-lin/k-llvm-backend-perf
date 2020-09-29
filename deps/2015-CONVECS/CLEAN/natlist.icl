module natlist

import StdEnv;

:: Nat =
     D0
   | S !Nat

:: NatList =
     XNil
   | Cons !Nat !NatList

instance == Nat where
   (==) (D0) (D0) = True
   (==) (S rec_x1) (S rec_y1) = (rec_x1 == rec_y1)
   (==) rec_x rec_y = False

instance == NatList where
   (==) (XNil) (XNil) = True
   (==) (Cons rec_x1 rec_x2) (Cons rec_y1 rec_y2) = (rec_x1 == rec_y1) && (rec_x2 == rec_y2)
   (==) rec_x rec_y = False

instance <<< Nat where
   (<<<) rec_file (D0) = rec_file <<< "D0"
   (<<<) rec_file (S rec_x1) = rec_file <<< "S" <<< " (" <<< rec_x1 <<< ")"

instance <<< NatList where
   (<<<) rec_file (XNil) = rec_file <<< "XNil"
   (<<<) rec_file (Cons rec_x1 rec_x2) = rec_file <<< "Cons" <<< " (" <<< rec_x1 <<< ", " <<< rec_x2 <<< ")"

Start :: *World -> *World
Start world
   # (console, world) = stdio world
   # console = console <<< (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S  (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S D0) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) (Cons (S (S (S D0))) (Cons (S (S D0)) (Cons (S (S (S D0))) (Cons (S (S (S (S (S (S D0)))))) XNil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) <<< "\n"
   = snd (fclose console world)
