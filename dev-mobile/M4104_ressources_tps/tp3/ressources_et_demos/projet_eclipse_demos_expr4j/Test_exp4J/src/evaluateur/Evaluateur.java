package evaluateur;

import java.io.IOException;

import org.boris.expr.Expr;
import org.boris.expr.ExprEvaluatable;
import org.boris.expr.ExprException;
import org.boris.expr.parser.ExprParser;
import org.boris.expr.util.Exprs;
import org.boris.expr.util.SimpleEvaluationContext;

public class Evaluateur {

	/**
	 * Teste si l'expression mathématique est valide
	 * @param s (String) : Expression mathématique
	 * @return (boolean) : true si valide, false sinon
	 */
	public static final boolean isExpValide(String s) {
		Expr expr = null;

		SimpleEvaluationContext context = new SimpleEvaluationContext();
		
		try {
			expr = ExprParser.parse(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			return false;
		} catch (ExprException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			return false;
		}

		if (!(expr instanceof ExprEvaluatable)){
			return false;
		}
		
		try {
			expr = ((ExprEvaluatable) expr).evaluate(context);
		} catch (ExprException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			return false;
		}

		return true;
	}

	/**
	 * Evalue l'expression mathématique pour la valeur de x
	 * @param s_expr_mathematique (String) : Expression mathématique à évaluer
	 * @param x : valeur de x pour laquelle évaluer l'expression mathématique
	 * @return (double) : valeur de l'expression mathématique pour la valeur de x
	 * @throws Exception : Problème évaluation ce l'expression mathématique
	 */
	  public static double evaluerExpression(String s_expr_mathematique, double x) throws Exception {
	        Expr e = null;
	        Expr resultat = null;

	            String s_expr = replaceXwithValueInString(s_expr_mathematique, x);


	            e = ExprParser.parse(s_expr);
	            Exprs.toUpperCase(e);
	            SimpleEvaluationContext context = new SimpleEvaluationContext();
	            if (e instanceof ExprEvaluatable) {
	                resultat = ((ExprEvaluatable) e).evaluate(context);

	            } else {
	                throw new Exception("Problème évaluation ce l'expression mathématique");
	            }

	        return Double.parseDouble(resultat.toString());
	    }

	    private static String replaceXwithValueInString(String s_expr_mathematique, double x) {
	        String s_exp = "";

	        for (int i = 0; i < s_expr_mathematique.length(); i++) {
	            char c = s_expr_mathematique.charAt(i);

	            if (c != 'x') {
	                s_exp = s_exp + "" + c;
	            } else {
	                s_exp = s_exp + "" + x;
	                continue;
	            }
	        }

	        return s_exp;
	    }
	    


}
