#include <iostream>
#include <cvc4/cvc4.h> 
#include "rapidnet_compiler/sdn-formula.h"

using namespace std;
using namespace CVC4;

/* CVC
 * ---
 * Given that (x>1) and (y<3), what values of x and y satisfy (x=y)?
 */
void get_SAT_model() {
    ExprManager em;
    SmtEngine smt(&em);

    smt.setOption("produce-models", true);

    // make variables
    Expr one = em.mkConst(Rational(1));
    Expr three = em.mkConst(Rational(3));
    Expr x = em.mkVar("x", em.integerType());
    Expr y = em.mkVar("y", em.integerType());

    // make expressions
    Expr x_gt_1 = em.mkExpr(kind::GT, x, one); // x > 1
    Expr y_lt_2 = em.mkExpr(kind::LT, y, three); // y < 3
    Expr x_eq_y = em.mkExpr(kind::EQUAL, x, y); // y=3

    smt.assertFormula(x_gt_1);
    smt.assertFormula(y_lt_2);
    smt.push();

    // check SAT
    Result result = smt.checkSat(x_eq_y);
    cout << "\nCVC4 reports: " << x_eq_y << " is " << result << "." << endl;

    // If the formula was satisfiable (which it should be here), get the value of x. 
    if (result == Result::SAT) {
      cout << "\nx value: " << smt.getValue(x) << "; y value: " << smt.getValue(y) << std::endl;
    }
}