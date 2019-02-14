public class TestLed
{
	public static void main (String [] args)
	{
		System.out.println("Debut du programme");
		Led led1 = new Led(360,true);
		Led led2 = new Led();
		
		System.out.println(led1);
		System.out.println(led2);

		System.out.println(led1.getCode());
		System.out.println(led2.getCode());
		System.out.println(led1.getEtat());
		System.out.println(led2.getEtat());

		led1.setCode(180);
		led2.setCode(360);
		led1.setEtat(false);
		led2.setEtat(true);

		System.out.println(led1);
		System.out.println(led2);
		
		System.out.println("Fin de programme");
	}
}