/**
* Classe Nombre
* @version 1.0
* @author Alexis Jacob
*/
public class Spot
{
	/**
	* Attributs
	*/
	private String marque;
	private Led led;
	private Timer timer;

	/** 
	* Constructeur par défaut
	*/
	public Spot(){
		this(null,null,null);
	}

	/**
	* Constructeur champ a champ
	* @param uneMarque defini la marque du Spot
	* @param uneLed Led utilisee pour le Spot
	* @param unTimer Timer utilise pour le Spot
	*/
	public Spot(String uneMarque, Led uneLed, Timer unTimer)
	{
		this.marque = uneMarque;
		this.led = uneLed;
		this.timer = unTimer;
	}

	/**
	* Constructeur par copie
	* @param unSpot Spot à copier
	*/
	public Spot(Spot unSpot)
	{
		this.marque = new String(unSpot.getMarque());
		this.led = new Led(unSpot.getLed());
		this.timer = new Timer(unSpot.getTimer());
	}

	/**
	* Methode toString
	* @return l'etat de l'objet courant
	*/
	public String toString()
	{
		return "Le spot est de marque : "+ this.getMarque() + " sa led est " + this.led.toString() + 
		" et son timer est " + this.timer.toString();
	}

	/**
	* Methode getMarque
	* @return la marque du Spot courant
	*/
	public String getMarque()
	{
		return this.marque;
	}
		
	/**
	* Methode getLed
	* @return la LED du Spot courant
	*/
	public Led getLed()
	{
		return this.led;
	}

	/**
	* Methode getTimer
	* @return le timer du Spot courant
	*/
	public Timer getTimer()
	{
		return this.timer;
	}

	/**
	* Methode setLed
	* @param uneLed remplace la LED du spot courant
	*/
	public void setLed(Led uneLed)
	{
		this.led = uneLed;
	}

	/**
	* Methode setMarque
	* @param uneMarque remplace la marque du spot courant
	*/
	public void setMarque(String uneMarque)
	{
		this.marque = uneMarque;
	}

	/**
	* Methode setTimer
	* @param unTimer remplace le timer du spot courant
	*/
	public void setTimer(Timer unTimer)
	{
		this.timer = unTimer;
	}

	/**
	* Methode allumer
	*/
	public void allumer()
	{
		this.led.allumer();
	}

	/**
	* Methode eteindre
	*/
	public void eteindre()
	{
		this.led.eteindre();
	}

}