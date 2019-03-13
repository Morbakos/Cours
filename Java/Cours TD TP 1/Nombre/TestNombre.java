public class TestNombre 
{
	public static void main(String[] args) 
	{
		Nombre n1 = new Nombre(2);
		Nombre n2 = new Nombre(1256);

		n1.setNombre(7);

		System.out.println(n1.affiche());
		System.out.println(n2.affiche());

		System.out.println("Le nombre est premier : "+ n1.estPremier());
		System.out.println("Le nombre est premier : "+ n2.estPremier());

		System.out.println("Le nombre est pair : "+ n1.estPair());
		System.out.println("Le nombre est pair : "+ n2.estPair());

		System.out.println("Le nombre a : "+ n1.nbDigit() + " digit(s)");
		System.out.println("Le nombre a : "+ n2.nbDigit() + " digit(s)");
	}
}