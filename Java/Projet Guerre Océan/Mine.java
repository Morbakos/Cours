public class Mine extends Munition {

	private int profondeur;

	/**
	 Constructeur par defaut
	 */
	public Mine() {
		super();
	}

	/**
	 Constructeur champ a champ
	 */
	public Mine(int unePuissance, int uneProfondeur) {
		super(unePuissance);
		this.profondeur = uneProfondeur;
	}

	/**
	 Constructeur par copie
	 */
	public Mine(Mine uneMine) {
		super(uneMine);
		this.profondeur = uneMine.getProfondeur();
	}

	/**
     Retourne l'etat du missile
     @return String
	 */
	public String toString() {
		String s = super.toString();
		s = s + "|Profondeur|  " + this.getProfondeur() + "  |\n";
		s = s + "|----------|----------|\n";
		s = s + "|Type      | Mine     |\n";
		s = s + "|----------|----------|\n";

		return s;
	}

	/**
     Retourne la profodeur de la mine courante
     @return int
	 */
	public int getProfondeur() {
		return this.profondeur;
	}

}