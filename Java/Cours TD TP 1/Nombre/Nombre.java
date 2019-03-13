/**
* Classe Nombre
* @version 1.0
* @author Alexis Jacob
*/
public class Nombre
{
	/**	Attributs */
	private int nombre;

	/** 
	* Constructeur par defaut
	*/
	public Nombre()
	{
		this.nombre = 0;
	}

	/**
	* Constructeur champ a champ
	* @param unNombre nombre qui sera utilise pour instancier la classe
	*/
	public Nombre(int unNombre)
	{
		this.nombre = unNombre;
	}


	//==== Methodes 

	/**
	* @return le nombre courant
	*/
	public int getNombre()
	{
		return this.nombre;
	}

	/**
	* Defini le nombre courant
	* @param unNombre nombre qui va remplacer le nombre courant
	*/
	public void setNombre(int unNombre)
	{
		this.nombre = unNombre;
	}

	/**
	* @return l'etat du nombre courant 
	*/
	public String affiche()
	{
		return "Le nombre vaut "+ this.getNombre();
	}

	/**
	* @return le nombre de digit contenu dans le nombre courant
	*/
	public int nbDigit()
	{
		int c = 0;

		while (this.nombre/10 != 0)
		{
			c ++;
		}

		return c;
	}

	/**
	* @return true si le nombre est premier, false sinon
	*/
	public boolean estPremier()
	{
		if(this.nombre<=1) return false;
        for(int i = 2;i*i<=this.nombre;i++)
        {
            if (this.nombre%i ==0)
            	return false;
            i++;
        }
        return true;
	}

	/**
	* @return true si le nombre est pair, false sinon
	*/
	public boolean estPair()
	{
		if(this.nombre%2 == 0)
			return true;
		else
			return false;
	}
} 