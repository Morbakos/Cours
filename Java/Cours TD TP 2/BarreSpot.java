/**
* Classe Nombre
* @version 1.0
* @author Alexis Jacob
*/
public class BarreSpot
{
	/**
	* Attributs
	*/
	private Spot[] spots;

	/** 
	* Constructeur par défaut
	*/
	public BarreSpot(){
	}

	/**
	* Constructeur champ a champ
	* @param nombreSpot défini la taille du tableau de spots
	*/
	public BarreSpot(int nombreSpot)
	{
		this.spots = new Spot[nombreSpot];
	}

	/**
	* Constructeur par copie
	* @param uneBarre barre de spots a copier
	*/
	public BarreSpot(BarreSpot uneBarre)
	{
		this.spots = new Spot[uneBarre.spots.length];

		for(int i = 0; i < uneBarre.spots.length; i++)
		{
			this.spots[i] = new Spot(uneBarre.spots[i]);
		}
	}


	/**
	* Methode toString
	* @return l'etat de l'objet courant
	*/
	public String toString()
	{
		String etat = new String("");

		for(int i = 0; i < this.spots.length; i++)
		{
			if(this.spots[i] != null){
				etat += this.spots[i].toString() + "\n";
			} else {
				etat += "L'index " + i + " ne contient pas de spot\n";
			}
		}

		return etat;
	}

	/**
	* Methode ajouter
	* @param unSpot spot a ajouter au tableau
	* @param unIndex index ou creer le spot dans le tableau 
	*/
	public void ajouter(Spot unSpot, int unIndex)
	{
		this.spots[unIndex] = unSpot;
	}

	/**
	* Methode ajouter
	* @param unIndex index a supprimer dans le tableau 
	*/
	public void supprimer(int unIndex)
	{
		this.spots[unIndex] = null;
	}

}