public class TestLed
{
	public static void main (String [] args)
	{
		System.out.println("Debut du programme");
		Led led1 = new Led(360,true);
		Led led2 = new Led();
		
		System.out.println(led1.affiche());
		System.out.println(led2.affiche());

		System.out.println(led1.getCode());
		System.out.println(led2.getCode());
		System.out.println(led1.AllumeeOuEteinte());
		System.out.println(led2.AllumeeOuEteinte());

		led1.setCode(180);
		led2.setCode(360);

		led1.eteindre();
		led2.allumer();

		System.out.println(led1.affiche());
		System.out.println(led2.affiche());
		
		System.out.println("Fin de programme");
	}
}