import java.util.Scanner;

public class LedCouleur extends Led
{
	/////////////////////////////////////////////
	// Variables
	////////////////////////////////////////////

	private static final String[] COULEURS_VALIDE = {"rouge", "vert", "bleu", "jaune"};
	private String couleur;

	/////////////////////////////////////////////
	//	Constructeurs
	////////////////////////////////////////////

	/**
	* Constructeur par defaut
	*/
	public LedCouleur()
	{
		super();
	}

	/**
	* Constructeur champs a champs
	* @param uneRef reference de la LED
	* @param unEtat etat de la LED
	* @param unelonde longueur d'onde de la LED
	*/
	public LedCouleur(int uneRef, boolean unEtat, String uneCouleur)
	{
		super(uneRef, unEtat);
		this.couleur = uneCouleur;
	}


	////////////////////////////////////
	// Methodes
	///////////////////////////////////

	/**
	* Methode d'init interactif
	*/
	public void init()
	{
		String lo;
		Scanner sc = new Scanner(System.in);
		super.init();
		do {
			System.out.println("Saisissez la couleur");
			lo = sc.nextLine();
		} while (!isCouleurValide(lo));
		this.couleur = lo;
	}

	/**
	* Retourne la longueur d'onde de la led courante
	* @return double
	*/
	public String getCouleur()
	{
		return this.couleur;
	}

	/**
	* Verifie si la longueur d'onde saisie est valide
	* @param c couleur a saisir
	* @return boolean
	*/
	public static boolean isCouleurValide(String c)
	{
		int i = 0;
		boolean trouve = false;
		
		while(i<LedCouleur.COULEURS_VALIDE.length && !trouve)
		{
			if(c.equals(LedCouleur.COULEURS_VALIDE[i]))
			{
				trouve = true;
			}
			else
			{
				i++;
			}
		}

		return trouve;
	}

	/**
	* Retourne l'etat de la LedCouleur courante
	* @return String
	*/
	public String toString()
	{
		return super.toString() + " la couleur est : " + this.getCouleur();
	}

	public boolean equals(Object o)
	{
		if(this.getClass() != o.getClass()) return false;

		LedCouleur other = (LedCouleur) o;

		return super.equals(other) && this.getCouleur().equals(other.getCouleur());
	}

}