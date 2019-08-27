public class Missile extends Munition {

	private int portee;

	/**
	 Constructeur par defaut
	 */
	public Missile() {
		super();
	}

	/**
	 Constructeur champ a champ
	 */
	public Missile(int unePortee, int unePuissance) {
		super(unePuissance);
		this.portee = unePortee;
	}

	/**
	 Constructeur par copie
	 */
	public Missile(Missile unMissile) {
		super(unMissile);
		this.portee = unMissile.getPortee();
	}

	/**
     Retourne l'etat du missile
     @return String
	 */
	public String toString() {
		String s = super.toString();
		s = s + "|Portee    |  " + this.getPortee() + "  |\n";
		s = s + "|----------|----------|\n";
		s = s + "|Type      | Missile  |\n";
		s = s + "|----------|----------|\n";

		return s;
	}

	/**
	 Retourne la portee de la munition courante
	 @return int
	 */
	public int getPortee() {
		return this.portee;
	}
}