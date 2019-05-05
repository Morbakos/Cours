import java.util.Scanner;

public class BaseRegistre
{
	private Registre[] tabR;

	public BaseRegistre(){}

	public BaseRegistre(Registre[] tabRegistre)
	{
		this.tabR = tabRegistre;
	}

	public BaseRegistre(BaseRegistre br)
	{
		this.tabR = new Registre[br.tabR.length];
		for(int i = 0; i < this.tabR.length; i++)
		{
			this.tabR[i] = br.tabR[i];
		}
	}

	public void init()
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Saisissez le nombre de registres");
		int n = sc.nextInt();
		this.tabR = new Registre[n];

		for(int i = 0; i < this.tabR.length; i++)
		{
			this.tabR[i] = new Registre();
			this.tabR[i].init();
		}
	}

	/**
	* Methode toString
	* @return l'etat du registre courant 
	*/
	public String toString()
	{
		if(this.tabR == null)
			return "La base ne contient rien\n"; 
		
		String etat = "" ; // String etat = new String("")

		// Si le registre n'est pas null, on affiche les détails

		for (int j = 0 ; j < this.tabR.length ; j++)
		{
			etat += "BaseRegistre N° " + j;
			etat += this.tabR[j].toString();
		}	

		// Double sauts de lignes
		etat += "\n\n";

		// On retourne la chaîne contenant l'état
		return etat;
	}

	public Registre[] getTabRegistre()
	{
		return this.tabR;
	}

	public Registre ou()
	{
		Registre r = new Registre(1);

	}
}