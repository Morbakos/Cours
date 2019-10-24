public class Porsche
{
	/**
	 * @return la masse de l'objet
	 */
	public float getMasse()
	{
		return this.masse;
	}

	/**
	 * @return le prix de l'objet
	 */
	public abstract int prix()
	{}

	/**
	 * @return l'etat de l'objet
	 */
	public String toString()
	{
		return 'Le modèle est ' + this.getMasse() + ' et le prix est ' + this.prix();
	}
}