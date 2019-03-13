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

	// Méthodes

	/** 
	*	@return l'etat de la Led courante
	*/
	public String affiche()
	{
		return "La led avec le code : "+ this.getCode() + " est a l'etat "+ this.AllumeeOuEteinte();
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
	public boolean AllumeeOuEteinte()
	{
		return this.etat;
	}

	/**
	* Definie l'etat de la Led courante en true
	*/
	public void allumer(){
		this.etat = true;
	}

	/**
	* Definie l'etat de la Led courante en false
	*/
	public void eteindre(){
		this.etat = false;
	}

	/**
	* Fais clignoter la Led courante
	*/
	public void clignoter(){
		
	}

	/**
	* @param unCode nouveau code de la Led courante 
	*/
	public void setCode(int unCode){
		this.code = unCode;
	}

}