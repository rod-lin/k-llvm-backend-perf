// TOM-A
import natlist.term.*;
import natlist.term.types.*;
public class Natlist {
  %gom{
    module Term
    abstract syntax
    Xnat =
      | d0()
      | s(rec_x1_1:Xnat)
    Xnatlist =
      | cons(rec_x1_1:Xnat, rec_x2_1:Xnatlist)
      | nil()
    module Term:rules() {
    }
  }
  public static void main (String[] args) {
    System.out.println (`cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s ( s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (d0()), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), cons (s (s (s (d0()))), cons (s (s (d0())), cons (s (s (s (d0()))), cons (s (s (s (s (s (s (d0())))))), nil())))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
  }
}
