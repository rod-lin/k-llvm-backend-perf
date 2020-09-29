// TOM-A
import fibonacci05.term.*;
import fibonacci05.term.types.*;
public class Fibonacci05 {
  %gom{
    module Term
    abstract syntax
    Xnat =
      | d0()
      | fibb(rec_x1_1:Xnat)
      | plus(rec_x1_2:Xnat, rec_x2_2:Xnat)
      | s(rec_x1_3:Xnat)
    module Term:rules() {
      plus (d0(), N) -> N
      plus (s (N), M) -> s (plus (N, M))
      fibb (d0()) -> d0()
      fibb (s (d0())) -> s (d0())
      fibb (s (s (N))) -> plus (fibb (s (N)), fibb (N))
    }
  }
  public static void main (String[] args) {
    System.out.println (`fibb (s (s (s (s (s (d0())))))));
    System.out.println (`fibb (fibb (s (s (s (s (s (d0()))))))));
    System.out.println (`fibb (fibb (fibb (s (s (s (s (s (d0())))))))));
    System.out.println (`fibb (fibb (fibb (fibb (s (s (s (s (s (d0()))))))))));
    System.out.println (`fibb (fibb (fibb (fibb (fibb (s (s (s (s (s (d0())))))))))));
  }
}
