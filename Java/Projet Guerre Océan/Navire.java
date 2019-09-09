public abstract class Navire
{
	private int resistance;
	private int taille;
	private int[][] position;
	public static final int NB_MUNITIONS = 10;


	/**
	 * Constructeur par defaut
	 */
	public Navire()
	{}

	/**
	 * Constructeur champs a champs
	 * @param uneResistance resistance du navire
	 * @param uneTaille taille du navire
	 * @param unePosition position du navire
	 */
	public Navire(int uneResistance, int uneTaille, int[] unePosition[])
	{
		this.resistance = uneResistance;
		this.taille = uneTaille;
		this.position[0] = unePosition[0];
		this.position[0] = unePosition[1];
	}

	/**
     Retourne l'etat du navire courant
     @return String
	 */
	public String toString() {
		String s = "|---------------------|\n";
		s = s +    "|---   Navire    ---|\n";
		s = s +    "|---------------------|\n";
		s = s +    "|Resistance |  " + this.getResistance() + "  |\n";
		s = s +    "|Taille     |  " + this.getResistance() + "  |\n";
		s = s +    "|Position   |  " + this.getPosition() + "  |\n";
		s = s +    "|---------------------|\n";

		return s;
	}
}