// TOM-A
import langton6.term.*;
import langton6.term.types.*;
public class Langton6 {
  %gom{
    module Term
    abstract syntax
    Xnat =
      | d0()
      | d1()
      | d2()
      | d3()
      | d4()
      | d5()
      | d6()
      | d7()
      | langton(rec_x1_1:Xnat, rec_x2_1:Xnat, rec_x3_1:Xnat, rec_x4_1:Xnat, rec_x5_1:Xnat)
      | next(rec_x1_2:Xnat, rec_x2_2:Xnat, rec_x3_2:Xnat, rec_x4_2:Xnat, rec_x5_2:Xnat)
      | plus(rec_x1_3:Xnat, rec_x2_3:Xnat)
      | s(rec_x1_4:Xnat)
    module Term:rules() {
      d1() -> s (d0())
      d2() -> s (s (d0()))
      d3() -> s (s (s (d0())))
      d4() -> s (s (s (s (d0()))))
      d5() -> s (s (s (s (s (d0())))))
      d6() -> s (s (s (s (s (s (d0()))))))
      d7() -> s (s (s (s (s (s (s (d0())))))))
      plus (X, d0()) -> X
      plus (s (X), Y) -> s (plus (X,Y))
      plus (X, s (Y)) -> s (plus (X,Y))
      langton (d0(),s (d0()),d0(),d0(),d0()) -> d2()
      langton (d0(),s (s (s (s (s (s (d0())))))),d0(),d0(),d0()) -> d3()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),d0(),d0(),d0()) -> d1()
      langton (d0(),X,d0(),d0(),d0()) -> d0()
      langton (d0(),s (d0()),d0(),d0(),s (d0())) -> d2()
      langton (d0(),s (s (d0())),d0(),d0(),s (d0())) -> d2()
      langton (d0(),s (s (s (d0()))),d0(),d0(),s (d0())) -> d2()
      langton (d0(),s (d0()),d0(),d0(),s (s (d0()))) -> d2()
      langton (d0(),s (s (s (s (s (s (d0())))))),d0(),d0(),s (s (d0()))) -> d2()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),d0(),d0(),s (s (d0()))) -> d2()
      langton (d0(),s (s (d0())),d0(),d0(),s (s (s (s (s (d0())))))) -> d5()
      langton (d0(),s (s (d0())),d0(),d0(),s (s (s (s (s (s (d0()))))))) -> d2()
      langton (d0(),s (s (d0())),d0(),d0(),s (s (s (s (s (s (s (d0())))))))) -> d2()
      langton (d0(),s (s (d0())),d0(),s (d0()),d0()) -> d2()
      langton (d0(),s (s (d0())),d0(),s (s (d0())),s (d0())) -> d5()
      langton (d0(),s (s (d0())),d0(),s (s (d0())),s (s (s (d0())))) -> d2()
      langton (d0(),s (s (d0())),d0(),s (s (s (s (s (d0()))))),s (s (d0()))) -> d2()
      langton (s (d0()),s (s (d0())),d0(),s (s (d0())),s (s (s (d0())))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (d0())),s (s (s (s (d0()))))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (d0())),s (s (s (s (s (d0())))))) -> d5()
      langton (s (d0()),s (s (d0())),d0(),s (s (d0())),s (s (s (s (s (s (d0()))))))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d1()
      langton (s (d0()),s (s (s (s (s (d0()))))),d0(),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (d0())))),s (s (d0()))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (d0())))),s (s (s (d0())))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (d0())))),s (s (s (s (d0()))))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (d0())))),s (s (s (s (s (s (s (d0())))))))) -> d1()
      langton (s (d0()),s (s (s (s (s (d0()))))),d0(),s (s (s (s (s (s (d0())))))),s (s (d0()))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (s (s (s (d0()))))))),s (s (d0()))) -> d1()
      langton (s (d0()),s (s (s (s (s (d0()))))),d0(),s (s (s (s (s (s (s (d0()))))))),s (s (d0()))) -> d5()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (s (s (s (d0()))))))),s (s (s (s (s (d0())))))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (s (s (s (d0()))))))),s (s (s (s (s (s (d0()))))))) -> d1()
      langton (s (d0()),s (s (d0())),d0(),s (s (s (s (s (s (s (d0()))))))),s (s (s (s (s (s (s (d0())))))))) -> d1()
      langton (s (s (d0())),s (s (s (s (s (s (s (d0()))))))),d0(),s (s (s (s (s (d0()))))),s (s (d0()))) -> d1()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (d0()),d0(),d0()) -> d7()
      langton (d0(),s (s (s (s (d0())))),s (d0()),d0(),s (s (d0()))) -> d4()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (d0()),d0(),s (s (d0()))) -> d7()
      langton (d0(),s (s (s (s (d0())))),s (d0()),s (d0()),s (s (d0()))) -> d4()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (d0()),s (s (d0()))) -> d7()
      langton (d0(),s (s (d0())),s (d0()),s (s (d0())),d0()) -> d6()
      langton (d0(),s (s (s (s (d0())))),s (d0()),s (s (d0())),s (s (d0()))) -> d4()
      langton (d0(),s (s (s (s (s (s (d0())))))),s (d0()),s (s (d0())),s (s (d0()))) -> d3()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (d0())),s (s (d0()))) -> d7()
      langton (d0(),s (s (d0())),s (d0()),s (s (d0())),s (s (s (d0())))) -> d7()
      langton (d0(),s (s (d0())),s (d0()),s (s (d0())),s (s (s (s (d0()))))) -> d4()
      langton (d0(),s (s (d0())),s (d0()),s (s (d0())),s (s (s (s (s (s (d0()))))))) -> d6()
      langton (d0(),s (s (s (s (d0())))),s (d0()),s (s (d0())),s (s (s (s (s (s (d0()))))))) -> d4()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (d0())),s (s (s (s (s (s (d0()))))))) -> d7()
      langton (d0(),s (d0()),s (d0()),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d0()
      langton (d0(),s (s (d0())),s (d0()),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d7()
      langton (d0(),s (s (d0())),s (d0()),s (s (s (s (s (d0()))))),s (s (s (s (d0()))))) -> d7()
      langton (s (d0()),s (s (s (s (d0())))),s (d0()),s (d0()),s (s (d0()))) -> d4()
      langton (s (d0()),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (d0()),s (s (d0()))) -> d7()
      langton (s (d0()),s (s (d0())),s (d0()),s (d0()),s (s (s (s (s (d0())))))) -> d2()
      langton (s (d0()),s (s (s (s (d0())))),s (d0()),s (s (d0())),s (s (d0()))) -> d4()
      langton (s (d0()),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (d0())),s (s (d0()))) -> d7()
      langton (s (d0()),s (s (d0())),s (d0()),s (s (d0())),s (s (s (s (d0()))))) -> d4()
      langton (s (d0()),s (s (d0())),s (d0()),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d7()
      langton (s (s (d0())),s (s (s (s (d0())))),s (d0()),s (s (d0())),s (s (d0()))) -> d4()
      langton (s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (d0())),s (s (d0()))) -> d7()
      langton (s (s (d0())),s (s (s (d0()))),s (d0()),s (s (d0())),s (s (s (s (d0()))))) -> d4()
      langton (s (s (d0())),s (s (s (s (d0())))),s (d0()),s (s (d0())),s (s (s (s (s (d0())))))) -> d7()
      langton (s (s (d0())),s (s (s (s (d0())))),s (d0()),s (s (s (d0()))),s (s (d0()))) -> d4()
      langton (s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (s (d0()))),s (s (d0()))) -> d7()
      langton (s (s (d0())),s (s (s (s (s (d0()))))),s (d0()),s (s (s (s (d0())))),s (s (d0()))) -> d5()
      langton (s (s (d0())),s (s (s (s (s (s (d0())))))),s (d0()),s (s (s (s (d0())))),s (s (d0()))) -> d7()
      langton (s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (s (s (s (d0()))))),s (s (d0()))) -> d5()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),d0(),d0()) -> d1()
      langton (d0(),s (s (s (s (s (d0()))))),s (s (d0())),d0(),s (s (d0()))) -> d0()
      langton (d0(),s (s (d0())),s (s (d0())),d0(),s (s (s (d0())))) -> d6()
      langton (d0(),s (s (d0())),s (s (d0())),d0(),s (s (s (s (d0()))))) -> d3()
      langton (d0(),s (d0()),s (s (d0())),d0(),s (s (s (s (s (d0())))))) -> d7()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),d0(),s (s (s (s (s (d0())))))) -> d5()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (s (d0())),d0()) -> d3()
      langton (d0(),s (s (d0())),s (s (d0())),s (s (d0())),s (s (s (d0())))) -> d1()
      langton (d0(),s (s (d0())),s (s (d0())),s (s (d0())),s (s (s (s (s (d0())))))) -> d0()
      langton (d0(),s (d0()),s (s (d0())),s (s (s (d0()))),s (s (d0()))) -> d6()
      langton (d0(),s (s (d0())),s (s (d0())),s (s (s (d0()))),s (s (d0()))) -> d6()
      langton (d0(),s (s (d0())),s (s (d0())),s (s (s (s (s (d0()))))),s (s (s (s (s (d0())))))) -> d1()
      langton (d0(),s (s (d0())),s (s (d0())),s (s (s (s (s (d0()))))),s (s (s (s (s (s (s (d0())))))))) -> d5()
      langton (s (d0()),s (s (s (s (s (s (d0())))))),s (s (d0())),s (d0()),s (s (d0()))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (d0()))),d0(),d0()) -> d2()
      langton (d0(),s (s (s (s (d0())))),s (s (s (d0()))),d0(),d0()) -> d1()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (s (s (d0()))),d0(),d0()) -> d6()
      langton (d0(),s (s (d0())),s (s (s (d0()))),d0(),s (s (s (s (d0()))))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (d0()))),d0(),s (s (s (s (s (s (d0()))))))) -> d2()
      langton (d0(),s (s (d0())),s (s (s (d0()))),s (d0()),d0()) -> d1()
      langton (d0(),s (s (d0())),s (s (s (d0()))),s (d0()),s (s (d0()))) -> d0()
      langton (d0(),s (d0()),s (s (s (d0()))),s (s (d0())),s (s (s (s (s (d0())))))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (d0()),s (d0())) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (d0()),s (s (d0()))) -> d0()
      langton (d0(),s (s (s (s (s (d0()))))),s (s (s (s (d0())))),s (d0()),s (s (d0()))) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (s (d0())),s (d0())) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (s (d0())),s (s (d0()))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (s (d0())),s (s (s (d0())))) -> d6()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (s (d0())),s (s (s (s (s (d0())))))) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (d0())))),s (s (s (d0()))),s (s (d0()))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (s (d0()))))),d0(),d0()) -> d2()
      langton (d0(),s (s (s (d0()))),s (s (s (s (s (d0()))))),d0(),s (s (d0()))) -> d2()
      langton (d0(),s (s (s (s (s (s (s (d0()))))))),s (s (s (s (s (d0()))))),d0(),s (s (d0()))) -> d2()
      langton (d0(),s (s (d0())),s (s (s (s (s (d0()))))),d0(),s (s (s (s (s (d0())))))) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),d0()) -> d2()
      langton (d0(),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (d0())) -> d2()
      langton (d0(),s (s (s (s (s (d0()))))),s (s (s (s (s (d0()))))),s (s (d0())),s (d0())) -> d2()
      langton (d0(),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (s (d0()))) -> d0()
      langton (d0(),s (s (s (s (d0())))),s (s (s (s (s (d0()))))),s (s (d0())),s (s (d0()))) -> d4()
      langton (d0(),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d2()
      langton (s (d0()),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (d0())) -> d2()
      langton (s (d0()),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (s (d0()))) -> d0()
      langton (s (d0()),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (s (s (s (d0()))))) -> d2()
      langton (s (d0()),s (s (d0())),s (s (s (s (s (d0()))))),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d2()
      langton (d0(),s (d0()),s (s (s (s (s (s (d0())))))),d0(),d0()) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (d0())))))),d0(),d0()) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (d0())))))),s (s (d0())),s (d0())) -> d0()
      langton (s (d0()),s (s (d0())),s (s (s (s (s (s (d0())))))),s (s (d0())),s (d0())) -> d5()
      langton (s (d0()),s (s (s (d0()))),s (s (s (s (s (s (d0())))))),s (s (d0())),s (d0())) -> d1()
      langton (s (d0()),s (s (d0())),s (s (s (s (s (s (d0())))))),s (s (d0())),s (s (d0()))) -> d5()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (d0())) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (d0()))) -> d0()
      langton (d0(),s (s (s (s (s (d0()))))),s (s (s (s (s (s (s (d0()))))))),s (d0()),s (s (d0()))) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (d0())) -> d0()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (s (d0()))) -> d1()
      langton (d0(),s (s (s (s (s (d0()))))),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (s (d0()))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (s (s (d0())))) -> d1()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (s (s (s (s (d0())))))) -> d5()
      langton (d0(),s (s (d0())),s (s (s (s (s (s (s (d0()))))))),s (s (d0())),s (s (s (s (s (s (s (d0())))))))) -> d0()
      langton (V, W, X, Y, Z) -> X
      next (V,W,Y,Z,s (X)) -> plus (langton (V,W,Y,Z,s (X)),next (V,W,Y,Z,X))
      next (V,W,Y,s (X),d0()) -> plus (langton (V,W,Y,s (X),d0()),next (V,W,Y,X,d7()))
      next (V,W,s (X),d0(),d0()) -> plus (langton (V,W,s (X),d0(),d0()),next (V,W,X,d7(),d7()))
      next (Y,s (X),d0(),d0(),d0()) -> plus (langton (Y,s (X),d0(),d0(),d0()),next (Y,X,d7(),d7(),d7()))
      next (s (X),d0(),d0(),d0(),d0()) -> plus (langton (s (X),d0(),d0(),d0(),d0()),next (X,d7(),d7(),d7(),d7()))
      next (d0(),d0(),d0(),d0(),d0()) -> langton (d0(),d0(),d0(),d0(),d0())
    }
  }
  public static void main (String[] args) {
    System.out.println (`next (d6(),d6(),d6(),d6(),d6()));
  }
}
