import java.util.Scanner;

/**
* Classe Registre
* @version 1.0
* @author Alexis Jacob
*/
public class Registre
{
	/**
	* Attributs
	*/
	private boolean[] reg;

	/**
	* Constructeur par défaut
	*/
	public Registre(){};

	/**
	* Constructeur champ à champ
	* @param tab tableau de boolean representant des registres
	*/
	public Registre(boolean[] tab)
	{
		this.reg = tab;
	}

	/**
	* Constructeur champ à champ
	* @param n nombre de registres a creer
	*/

	public Registre(int n)
	{
		this.reg = new boolean[n];
	}

	/**
	* Constructeur par copie
	* @param r registre à copier
	*/
	public Registre(Registre r)
	{
		this.reg = new boolean[r.reg.length];
		for(int i = 0; i < this.reg.length; i++)
		{
			this.reg[i] = r.reg[i];
		}
	}

	/**
	* Methode init
	*/
	public void init()
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Saisissez le nombre de case");
		int n = sc.nextInt();
		this.reg = new boolean[n];

		for(int i = 0; i < this.reg.length; i++)
		{
			System.out.println("Saisissez la valeur du registre " + i);
			this.reg[i] = sc.nextBoolean();
		}
		System.out.println("\n");
	}

	/**
	* Methode toString
	* @return l'etat du registre courant 
	*/
	public String toString()
	{
		if(this.reg == null)
			return "Le registre ne contient rien\n"; 
		
		String etat = "" ; // String etat = new String("")

		// Si le registre n'est pas null, on affiche les détails

		for (int j = 1 ; j <= 3 ; j++)
		{

			// Boucle qui permet d'afficher les indices des registres
			for(int i = this.reg.length-1; i >= 0; i--)
			{
				switch(j)
				{
					case 1 : etat += i + " "; break ;
					case 2 : etat += "- "; break ;
					case 3 : if(this.reg[i] == false)
							 { // Si reg[i] contient false, on ajoute 0 (zéro) à etat
								etat += "0 ";
							 } 
							 else 
							 { // Sinon on ajoute 1 à etat
								etat += "1 ";
							 }
				}	
			}	

			// Retour à la ligne
				etat += "\n";
		}	

			// Double sauts de lignes
			etat += "\n\n";

		// On retourne la chaîne contenant l'état
		return etat;
	}

	public void setTab(boolean[] t)
	{
		this.reg = t;
	}

	public Registre ou(Registre r)
	{
		if(this.reg.length != r.reg.length)
			return "Difference de taille detecte";

		Registre r1 = new Registre(1);

		for(int i = 0; i<)

		return r1;
	}
}