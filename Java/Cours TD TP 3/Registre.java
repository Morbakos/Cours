public class Registre
{
	private boolean[] reg;

	public Registre(){};

	public Registre(boolean[] tab)
	{
		this.reg = tab;
	}

	public Registre(int n)
	{
		this.reg = new boolean[n];
	}

	public Registre(Registre r)
	{
		this.reg = new boolean[r.reg.length];
		for(int i = 0; i < this.reg.length; i++)
		{
			this.reg[i] = r.reg[i];
		}
	}

	public String toString()
	{
		String etat = new String("");

		if(this.reg != null){

			for(int i = this.reg.length-1; i >= 0; i--)
			{
				etat += i + " ";
			}

			etat += "\n";

			for(int i = this.reg.length-1; i >= 0; i--)
			{
				etat += "- ";
			}

			etat += "\n";

			for(int i = this.reg.length-1; i >= 0; i--)
			{
				if(this.reg[i] == false)
					etat += "0 ";
				else
					etat += "1 ";
				
			}

			etat += "\n\n";

		} else {
			etat += "Le registre ne contient rien\n";
		}

		return etat;
	}
}