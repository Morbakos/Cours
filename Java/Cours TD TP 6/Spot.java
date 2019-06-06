import java.util.Scanner;

public class Spot
{

	private Timer timer;
	private String marque;
	private Led[] leds;

	public Spot()
	{}

	public Spot(Spot s)
	{
		this.timer = new Timer(s.timer);
		this.marque = new String(s.marque);
		int n = s.leds.length;

		this.leds = new Led[n];

		for(int i = 0; i < n; i++)
		{
			if(s.leds[i] instanceof LedCouleur )
			{
				this.leds[i] = new LedCouleur ((LedCouleur) s.leds[i]);
			} else {
				if(s.leds[i] instanceof LedLaser )
				{
					this.leds[i] = new LedLaser ((LedLaser) s.leds[i]);
				} else {
					this.leds[i] = new Led(s.leds[i]);
				}
			}
		}
	}

	public void init()
	{
		this.timer = new Timer();
		this.timer.init();

		String s = "";
		Scanner sc = new Scanner(System.in);

		System.out.println("Saisissez la marque");
		this.marque = sc.nextLine();

		int n = 0;
		do {
			System.out.println("Nombre de leds");
			n = sc.nextInt();
		} while(n <= 0);

		this.leds = new Led[n];
		for(int i = 0; i<this.leds.length; i++)
		{
			int rep = 0;
			do {
				System.out.println("1 led, 2 ledLaser, 3 ledCOuleur");
				rep = sc.nextInt();	
			} while (rep < 1 || rep > 3);
			
			switch (rep)
			{
				case 1:
					this.leds[i] = new Led();
					break;

				case 2:
					this.leds[i] = new LedLaser();
					break;

				case 3:
					this.leds[i] = new LedCouleur();
					break;				
			} 

			this.leds[i].init();
		}
	}

	public String toString()
	{
		String s = this.marque + this.timer.toString();
		for(int i = 0; i < this.leds.length; i++)
		{
			s = s + "\n" + this.leds[i].toString();
		}

		return s;
	}
}