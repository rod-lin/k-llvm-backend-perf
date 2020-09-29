// TOM-A
import benchtree10.term.*;
import benchtree10.term.types.*;
public class Benchtree10 {
  %gom{
    module Term
    abstract syntax
    SNat =
      | dec(rec_x1_1:SNat)
      | eighteen()
      | eight()
      | eleven()
      | exexp(rec_x1_2:SNat, rec_x2_2:SNat)
      | exmult(rec_x1_3:SNat, rec_x2_3:SNat)
      | exone()
      | expand(rec_x1_4:SNat)
      | explus(rec_x1_5:SNat, rec_x2_5:SNat)
      | exs(rec_x1_6:SNat)
      | exz()
      | fifteen()
      | five()
      | four()
      | fourteen()
      | nat2sym(rec_x1_7:Xnat)
      | nine()
      | nineteen()
      | one()
      | seven()
      | seventeen()
      | six()
      | sixteen()
      | ten()
      | thirteen()
      | thirtyfive()
      | thirtyfour()
      | thirtyone()
      | thirty()
      | thirtythree()
      | thirtytwo()
      | three()
      | twelve()
      | twentyeight()
      | twentyfive()
      | twentyfour()
      | twentynine()
      | twentyone()
      | twentyseven()
      | twentysix()
      | twenty()
      | twentythree()
      | twentytwo()
      | two()
    Tree =
      | buildtree(rec_x1_1:Xnat, rec_x2_1:Xnat)
      | leaf(rec_x1_2:Xnat)
      | node(rec_x1_3:Xnat, rec_x2_3:Xnat, rec_x3_3:Tree, rec_x4_3:Tree)
    Xboolean =
      | and(rec_x1_1:Xboolean, rec_x2_1:Xboolean)
      | benchevalexp17(rec_x1_2:SNat)
      | benchevalsym17(rec_x1_3:SNat)
      | benchevaltree17(rec_x1_4:SNat)
      | equal(rec_x1_5:Xnat, rec_x2_5:Xnat)
      | less(rec_x1_6:Xnat, rec_x2_6:Xnat)
      | neg(rec_x1_7:Xboolean)
      | or(rec_x1_8:Xboolean, rec_x2_8:Xboolean)
      | Xfalse()
      | Xtrue()
    Xnat =
      | calctree17(rec_x1_1:Xnat)
      | d0()
      | d10()
      | d11()
      | d12()
      | d13()
      | d14()
      | d15()
      | d16()
      | d17()
      | d1()
      | d2()
      | d3()
      | d4()
      | d5()
      | d6()
      | d7()
      | d8()
      | d9()
      | eval17(rec_x1_2:SNat)
      | evalexp17(rec_x1_3:SNat)
      | eval(rec_x1_4:SNat)
      | evalsym17(rec_x1_5:SNat)
      | exp17(rec_x1_6:Xnat, rec_x2_6:Xnat)
      | exp(rec_x1_7:Xnat, rec_x2_7:Xnat)
      | getmax(rec_x1_8:Tree)
      | getval(rec_x1_9:Tree)
      | mult17(rec_x1_10:Xnat, rec_x2_10:Xnat)
      | mult(rec_x1_11:Xnat, rec_x2_11:Xnat)
      | plus17(rec_x1_12:Xnat, rec_x2_12:Xnat)
      | plus(rec_x1_13:Xnat, rec_x2_13:Xnat)
      | pred17(rec_x1_14:Xnat)
      | succ17(rec_x1_15:Xnat)
      | s(rec_x1_16:Xnat)
      | zero()
    module Term:rules() {
      or (Xtrue(), B) -> Xtrue()
      or (Xfalse(), B) -> B
      and (Xtrue(), B) -> B
      and (Xfalse(), B) -> Xfalse()
      neg (Xfalse()) -> Xtrue()
      neg (Xtrue()) -> Xfalse()
      d0() -> zero()
      d1() -> s (d0())
      d2() -> s (d1())
      d3() -> s (d2())
      d4() -> s (d3())
      d5() -> s (d4())
      d6() -> s (d5())
      d7() -> s (d6())
      d8() -> s (d7())
      d9() -> s (d8())
      d10() -> s (d9())
      d11() -> s (d10())
      d12() -> s (d11())
      d13() -> s (d12())
      d14() -> s (d13())
      d15() -> s (d14())
      d16() -> s (d15())
      d17() -> s (d16())
      one() -> exs (exz())
      two() -> exs (one())
      three() -> exs (two())
      four() -> exs (three())
      five() -> exs (four())
      six() -> exs (five())
      seven() -> exs (six())
      eight() -> exs (seven())
      nine() -> exs (eight())
      ten() -> exs (nine())
      eleven() -> exs (ten())
      twelve() -> exs (eleven())
      thirteen() -> exs (twelve())
      fourteen() -> exs (thirteen())
      fifteen() -> exs (fourteen())
      sixteen() -> exs (fifteen())
      seventeen() -> exs (sixteen())
      eighteen() -> exs (seventeen())
      nineteen() -> exs (eighteen())
      twenty() -> exs (nineteen())
      twentyone() -> exs (twenty())
      twentytwo() -> exs (twentyone())
      twentythree() -> exs (twentytwo())
      twentyfour() -> exs (twentythree())
      twentyfive() -> exs (twentyfour())
      twentysix() -> exs (twentyfive())
      twentyseven() -> exs (twentysix())
      twentyeight() -> exs (twentyseven())
      twentynine() -> exs (twentyeight())
      thirty() -> exs (twentynine())
      thirtyone() -> exs (thirty())
      thirtytwo() -> exs (thirtyone())
      thirtythree() -> exs (thirtytwo())
      thirtyfour() -> exs (thirtythree())
      thirtyfive() -> exs (thirtyfour())
      dec (exexp (Xs,exz())) -> exs (exz())
      dec (exexp (Xs,exs (Ys))) -> exmult (exexp (Xs,Ys),Xs)
      dec (exexp (Xs,explus (Ys,Zs))) -> exmult (exexp (Xs,Ys),exexp (Xs,Zs))
      dec (exexp (Xs,exmult (Ys,Zs))) -> dec (exexp (exexp (Xs,Ys),Zs))
      dec (exexp (Xs,exexp (Ys,Zs))) -> dec (exexp (Xs, dec (exexp (Ys,Zs))))
      benchevalsym17 (Xs) -> equal (eval17 (exexp (two(), Xs)), evalsym17 (exexp (two(), Xs)))
      benchevalexp17 (Xs) -> equal (eval17 (exexp (two(), Xs)), evalexp17 (exexp (two(), Xs)))
      benchevaltree17 (Xs) -> equal (calctree17 (eval (Xs)), getval (buildtree (eval (Xs), zero())))
      equal (zero(), zero()) -> Xtrue()
      equal (zero(), s (X)) -> Xfalse()
      equal (s (X), zero()) -> Xfalse()
      equal (s (X), s (Y)) -> equal (X, Y)
      less (zero(), Y) -> Xtrue()
      less (s (X), s (Y)) -> less (X, Y)
      less (s (X), zero()) -> Xfalse()
      plus (X, zero()) -> X
      plus (X, s (Y)) -> s (plus (X, Y))
      mult (X, zero()) -> zero()
      mult (X, s (Y)) -> plus (mult (X, Y), X)
      exp (X, zero()) -> s (zero())
      exp (X, s (Y)) -> mult (X, exp (X, Y))
      succ17 (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))))))) -> zero()
      succ17 (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero())))))))))))))))) -> s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))))))
      succ17 (s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))))) -> s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero())))))))))))))))
      succ17 (s (s (s (s (s (s (s (s (s (s (s (s (s (zero())))))))))))))) -> s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))))
      succ17 (s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))) -> s (s (s (s (s (s (s (s (s (s (s (s (s (zero())))))))))))))
      succ17 (s (s (s (s (s (s (s (s (s (s (s (zero())))))))))))) -> s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))
      succ17 (s (s (s (s (s (s (s (s (s (s (zero()))))))))))) -> s (s (s (s (s (s (s (s (s (s (s (zero())))))))))))
      succ17 (s (s (s (s (s (s (s (s (s (zero())))))))))) -> s (s (s (s (s (s (s (s (s (s (zero()))))))))))
      succ17 (s (s (s (s (s (s (s (s (zero()))))))))) -> s (s (s (s (s (s (s (s (s (zero())))))))))
      succ17 (s (s (s (s (s (s (s (zero())))))))) -> s (s (s (s (s (s (s (s (zero()))))))))
      succ17 (s (s (s (s (s (s (zero()))))))) -> s (s (s (s (s (s (s (zero())))))))
      succ17 (s (s (s (s (s (zero())))))) -> s (s (s (s (s (s (zero()))))))
      succ17 (s (s (s (s (zero()))))) -> s (s (s (s (s (zero())))))
      succ17 (s (s (s (zero())))) -> s (s (s (s (zero()))))
      succ17 (s (s (zero()))) -> s (s (s (zero())))
      succ17 (s (zero())) -> s (s (zero()))
      succ17 (zero()) -> s (zero())
      pred17 (s (X)) -> X
      pred17 (zero()) -> s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (zero()))))))))))))))))
      plus17 (X, zero()) -> X
      plus17 (X, s (Y)) -> succ17 (plus17 (X, Y))
      mult17 (X, zero()) -> zero()
      mult17 (X, s (Y)) -> plus17 (X, mult17 (X, Y))
      exp17 (X, zero()) -> succ17 (zero())
      exp17 (X, s (Y)) -> mult17 (X, exp17 (X, Y))
      eval (exz()) -> zero()
      eval (exs (Xs)) -> s (eval (Xs))
      eval (explus (Xs, Ys)) -> plus (eval (Xs), eval (Ys))
      eval (exmult (Xs, Ys)) -> mult (eval (Xs), eval (Ys))
      eval (exexp (Xs, Ys)) -> exp (eval (Xs), eval (Ys))
      eval17 (exz()) -> zero()
      eval17 (exone()) -> s (zero())
      eval17 (exs (Xs)) -> succ17 (eval17 (Xs))
      eval17 (explus (Xs, Ys)) -> plus17 (eval17 (Xs), eval17 (Ys))
      eval17 (exmult (Xs, Ys)) -> mult17 (eval17 (Xs), eval17 (Ys))
      eval17 (exexp (Xs, Ys)) -> exp17 (eval17 (Xs), eval (Ys))
      evalsym17 (exz()) -> zero()
      evalsym17 (exs (Xs)) -> succ17 (evalsym17 (Xs))
      evalsym17 (explus (Xs, Ys)) -> plus17 (evalsym17 (Xs), evalsym17 (Ys))
      evalsym17 (exmult (Xs, exz())) -> zero()
      evalsym17 (exmult (Xs, exs (Ys))) -> evalsym17 (explus (exmult (Xs, Ys), Xs))
      evalsym17 (exmult (Xs, explus (Ys, Zs))) -> evalsym17 (explus (exmult (Xs, Ys), exmult (Xs, Zs)))
      evalsym17 (exmult (Xs, exmult (Ys, Zs))) -> evalsym17 (exmult (exmult (Xs, Ys), Zs))
      evalsym17 (exmult (Xs, exexp (Ys, Zs))) -> evalsym17 (exmult (Xs, dec (exexp (Ys, Zs))))
      evalsym17 (exexp (Xs, exz())) -> succ17 (zero())
      evalsym17 (exexp (Xs, exs (Ys))) -> evalsym17 (exmult (exexp (Xs, Ys), Xs))
      evalsym17 (exexp (Xs, explus (Ys, Zs))) -> evalsym17 (exmult (exexp (Xs, Ys), exexp (Xs, Zs)))
      evalsym17 (exexp (Xs, exmult (Ys, Zs))) -> evalsym17 (exexp (exexp (Xs, Ys), Zs))
      evalsym17 (exexp (Xs, exexp (Ys, Zs))) -> evalsym17 (exexp (Xs, dec (exexp (Ys, Zs))))
      evalexp17 (Xs) -> eval17 (expand (Xs))
      getval (leaf (Val)) -> Val
      getval (node (Val, Max, Left, Right)) -> Val
      getmax (leaf (Val)) -> Val
      getmax (node (Val, Max, Left, Right)) -> Max
      calctree17 (X) -> mult17 (exp17 (s (s (zero())), pred17 (X)), pred17 (exp17 (s (s (zero())), X)))
      nat2sym (zero()) -> exz()
      nat2sym (s (X)) -> exs (nat2sym (X))
      expand (exz()) -> exz()
      expand (exone()) -> exone()
      expand (exs (Xs)) -> explus (exone(), expand (Xs))
      expand (explus (Xs, Ys)) -> explus (expand (Xs), expand (Ys))
      expand (exmult (Xs, exz())) -> exz()
      expand (exmult (Xs, exone())) -> expand (Xs)
      expand (exmult (Xs, explus (Ys, Zs))) -> expand (explus (exmult (Xs, Ys), exmult (Xs, Zs)))
      expand (exmult (Xs, exs (Ys))) -> expand (exmult (Xs, expand (exs (Ys))))
      expand (exmult (Xs, exmult (Ys,Zs))) -> expand (exmult (Xs, expand (exmult (Ys,Zs))))
      expand (exmult (Xs, exexp (Ys,Zs))) -> expand (exmult (Xs, expand (exexp (Ys,Zs))))
      expand (exexp (Xs, exz())) -> exone()
      expand (exexp (Xs, exone())) -> expand (Xs)
      expand (exexp (Xs, explus (Ys, Zs))) -> expand (exmult (exexp (Xs, Ys), exexp (Xs, Zs)))
      expand (exexp (Xs, exs (Ys))) -> expand (exexp (Xs, expand (exs (Ys))))
      expand (exexp (Xs, exmult (Ys,Zs))) -> expand (exexp (Xs, expand (exmult (Ys,Zs))))
      expand (exexp (Xs, exexp (Ys,Zs))) -> expand (exexp (Xs, expand (exexp (Ys,Zs))))
      buildtree (zero(), Val) -> leaf (Val)
      buildtree (s (X), Y) -> node (plus17 (getval (buildtree (X, Y)),getval (buildtree (X, succ17 (getmax (buildtree (X, Y)))))), getmax (buildtree (X, succ17 (getmax (buildtree (X, Y))))), buildtree (X, Y),buildtree (X, succ17 (getmax (buildtree (X, Y)))))
    }
  }
  public static void main (String[] args) {
    System.out.println (`benchevaltree17 (ten()));
  }
}
