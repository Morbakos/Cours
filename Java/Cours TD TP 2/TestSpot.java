public class TestSpot
{
	public static void main(String[] args)
	{
		Spot s1 = new Spot();

		String marque = new String("Sony");
		Timer t = new Timer(2000);
		Led led = new Led(2393, false);
		Spot s2 = new Spot(marque, led, t);

		Spot s3 = new Spot(s2);

		s1.setMarque("HPe");
		s1.setLed(led);
		s1.setTimer(t);

		s3.allumer();
		
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
	}
}