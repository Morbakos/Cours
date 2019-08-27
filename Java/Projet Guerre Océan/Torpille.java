public class Torpille extends Munition {

	private int portee;
	private int profondeur;

	/**
	 Constructeur par defaut
	 */
	public Torpille() {
		super();
	}

	/**
	 Constructeur champ a champ
	 */
	public Torpille(int unePortee, int unePuissance, int uneProfondeur) {
		super(unePuissance);
		this.portee = unePortee;
		this.profondeur = uneProfondeur;
	}

	/**
	 Constructeur par copie
	 */
	public Torpille(Torpille unTorpille) {
		super(unTorpille);
		this.portee = unTorpille.getPortee();
	}

	/**
     Retourne l'etat du Torpille
     @return String
	 */
	public String toString() {
		String s = super.toString();
		s = s + "|Portee    |     " + this.getPortee() + "    |\n";
		s = s + "|----------|----------|\n";
		s = s + "|Type      | Torpille |\n";
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