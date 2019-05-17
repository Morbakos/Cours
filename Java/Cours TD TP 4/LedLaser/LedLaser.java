import java.util.Scanner;

public class LedLaser extends Led
{
	/////////////////////////////////////////////
	// Variables
	////////////////////////////////////////////

	public static final double LONGUEUR_ONDE_MIN = 1000;
	public static final double LONGUEUR_ONDE_MAX = 2000;
	private double londe;

	/////////////////////////////////////////////
	//	Constructeurs
	////////////////////////////////////////////

	/**
	* Constructeur par defaut
	*/
	public LedLaser()
	{
		super();
	}

	/**
	* Constructeur champs a champs
	* @param uneRef reference de la LED
	* @param unEtat etat de la LED
	* @param unelonde longueur d'onde de la LED
	*/
	public LedLaser(int uneRef, boolean unEtat, double uneLonde)
	{
		super(uneRef, unEtat);
		this.londe = uneLonde;
	}

	/**
	* Constructeur par copie
	* @param uneLedLaser LED a copier
	*/
	/*public LedLaser(LedLaser uneLedLaser)
	{
		super(uneLedLaser);
		this.
	} */


	////////////////////////////////////
	// Methodes
	///////////////////////////////////

	/**
	* Methode d'init interactif
	*/
	public void init()
	{
		double lo;
		Scanner sc = new Scanner(System.in);
		super.init();
		do {
			System.out.println("Saisissez la longueur d'onde");
			lo = sc.nextDouble();
		} while (LedLaser.LONGUEUR_ONDE_MIN > lo || LedLaser.LONGUEUR_ONDE_MAX < lo);
		this.londe = lo;
	}

	/**
	* Retourne la longueur d'onde de la led courante
	* @return double
	*/
	public double getLongueurOnde()
	{
		return this.londe;
	}

	/**
	* Verifie si la longueur d'onde saisie est valide
	* @param longueurOnde longueur d'onde a saisir
	* @return boolean
	*/
	public boolean isLongueurOndeValide(double longueurOnde)
	{
		return LedLaser.LONGUEUR_ONDE_MIN <= longueurOnde && longueurOnde <= LedLaser.LONGUEUR_ONDE_MAX;
	}

	/**
	* Retourne l'etat de la LedLaser courante
	* @return String
	*/
	public String toString()
	{
		return super.toString() + " la longueur d'onde est : " + this.getLongueurOnde();
	}

	public boolean equals(Object o)
	{
		if(this.getClass() != o.getClass()) return false;
		LedLaser other = (LedLaser) o;

		return super.equals(other) && this.getLongueurOnde() == other.getLongueurOnde();
	}

}