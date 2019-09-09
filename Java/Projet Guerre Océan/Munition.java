public abstract class Munition {
	
	private int puissance;

	/**
	 Constructeur par copie
	 */
	public Munition() {}

	/**
	 Constructeur champ a champ
	 @param unePuissance puissance de la munition a creer
	 */
	public Munition(int unePuissance) {
		this.puissance = unePuissance;
	}

	/**
	 Constructeur par copie
	 @param uneMunition munition a copier
	 */
	public Munition(Munition uneMunition) {
		this.puissance = uneMunition.getPuissance();
	}

	/**
     Retourne l'etat de la munition courante
     @return String
	 */
	public String toString() {
		String s = "|---------------------|\n";
		s = s +    "|---   Munition    ---|\n";
		s = s +    "|---------------------|\n";
		s = s +    "|Puissance |  " + this.getPuissance() + "  |\n";
		s = s +    "|---------------------|\n";

		return s;
	}

	/**
	 Retourne la puissance de la munition courante
	 @return int
	 */
	public int getPuissance() {
		return this.puissance;
	}
}