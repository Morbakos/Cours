public class TestLedCouleur
{
	public static void main(String[] args) {

		System.out.println("Debut du programme");
		
		LedCouleur l1 = new LedCouleur();
		LedCouleur l2 = new LedCouleur(11709412, false, "rouge"); 
		LedCouleur l3 = new LedCouleur(11709412, false, "rouge"); 

		System.out.println(l1);
		System.out.println(l2);
		System.out.println(l3);

		l1.init();
		System.out.println(l1);

		if(l2.equals(l3))
		{
			System.out.println("Egaux");			
		} 
		else 
		{
			System.out.println("Pas egaux");
		}

		System.out.println("Fin du programme");
	}
}