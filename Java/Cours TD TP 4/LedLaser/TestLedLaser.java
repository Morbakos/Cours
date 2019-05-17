public class TestLedLaser
{
	public static void main(String[] args) {

		System.out.println("Debut du programme");
		
		LedLaser l1 = new LedLaser();
		LedLaser l2 = new LedLaser(11709412, false, 1890); 

		System.out.println(l1);
		System.out.println(l2);

		l1.init();
		System.out.println(l1);

		if(l1.equals(l2))
		{
			System.out.println("Egaux");			
		} else {
			System.out.println("Pas egaux");
		}

		System.out.println("Fin du programme");
	}
}