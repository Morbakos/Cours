/**
* Classe Led
* @version 1.0
* @author Alexis Jacob
*/
public class Led 
{
	/**	Attributs */
	private int code;
	private boolean etat;

	/** 
	* Constructeur par defaut
	*/
	public Led ()
	{
		this.code = 0;
		this.etat = false;
	}

	/** 
	* Constructeur champ a champ
	* @param unCode Code pour initialiser une nouvelle Led
	* @param unEtat Valeur pour initialiser une nouvelle Led
	*/
	public Led (int unCode, boolean unEtat)
	{
		this.code = unCode;
		this.etat = unEtat;
	}

	// Methodes

	/** 
	*	Retourne l'etat de la Led courante
	*/
	public String toString()
	{
		return "La led avec le code :"+ this.getCode() + " est a l'etat "+ this.getEtat();
	}

	/**
	* @return le code de Led courante
	*/
	public int getCode()
	{
		return this.code;
	}

	/**
	* @return l'état de Led courante
	*/
	public boolean getEtat()
	{
		return this.etat;
	}

	/**
	* @param unEtat nouvel etat de la Led courante
	*/
	public void setEtat(boolean unEtat){
		this.etat = unEtat;
	}

	/**
	* @param unCode nouveau code de la Led courante 
	*/
	public void setCode(int unCode){
		this.code = unCode;
	}

}