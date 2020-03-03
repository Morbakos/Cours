/**
 * @author B. LEMAIRE
 */

import java.io.BufferedReader;
import java.io.InputStreamReader;

import evaluateur.Evaluateur;

public class TestEvaluateur
{
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        while (true) {
        			double x=1.5;
                System.out.print(">");
                String line = br.readLine();
                if (line == null)
                    break;
                
                try {
                		System.out.println(Evaluateur.evaluerExpression(line, x));
                }
                catch(Exception e) {
                		System.out.println("Expression non valide !");
                }
       
        }
    }
}

