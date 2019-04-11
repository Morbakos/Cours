public class TestBarreSpot
{
	public static void main(String[] args)
	{
		BarreSpot bs1 = new BarreSpot(2);

		String marque = new String("Sony");
		Timer t = new Timer(2000);
		Led led = new Led(2393, false);
		Spot s1 = new Spot(marque, led, t);


		Spot s2 = new Spot();
		s2.setMarque("HPe");
		s2.setLed(led);
		s2.setTimer(t);

		bs1.ajouter(s1, 0);
		bs1.ajouter(s2, 1);
		System.out.println("Etat de bs1: " + bs1.toString());

		BarreSpot bs2 = new BarreSpot(bs1);

		bs1.supprimer(1);
		System.out.println("Etat de bs1: " + bs1.toString());
		System.out.println("Etat de bs2: " + bs2.toString());


	}
}