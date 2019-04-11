/**
 * 
 * @author bouchaibkhafif
 * Led  V.1.0
 * 
 * reproduction interdite sans l'autorisation del'auteur
 */

import java.util.*;
public class Led {
	private int reference;   // Reference de la Led
	private boolean etat;	// Etat de la Led allumee ou eteinte

	
	/**
	 * Constructeur par defaut
	 */
	public Led(){
	}
	
	
	/**
	 * Constructeur  
	 * @param reference : reference de la Led
	 * @param etat	: etat de la Led allumee ou eteinte
	 */

	public Led(int reference, boolean etat){
		this.reference = reference;
		this.etat = etat;
	}
	
	
	/**
	 * Constructeur par copie
	 * @param uneLed
	 */
	public Led(Led uneLed){
		this.reference = uneLed.getReference();
		this.etat = uneLed.getEtat();	
	}
	
	public int getReference() {
		return reference;
	}


	public void setReference(int reference) {
		this.reference = reference;
	}


	public boolean getEtat() {
		return etat;
	}


	public void setEtat(boolean etat) {
		this.etat = etat;
	}



	/**
	 * Allume la Led
	 */
	public void allumer(){
		this.etat = true;
	}
	
	/**
	 * Eteint la Led
	 */
	public void eteindre(){
		this.etat = false;
	}
	
	
	/**
	 * Fait clignoter la Led une fois
	 * Inverse l'etat de la Led
	 */
	
	public void clignoter(){
		this.etat = !this.etat;
	}
	
	
	public void init(){
		Scanner input = new Scanner(System.in);
		do {
			System.out.println("Reference de la Led ?");
			this.reference = input.nextInt();
		} while (this.reference<0);
		
		String sEtat= null;
		
		do {
			System.out.println("Donnez l'etat de la Led, (allumee ou eteinte ?");
			sEtat = input.next();
		} while (!sEtat.equals("allumee")&& !sEtat.equals("eteinte"));
		
		this.etat = sEtat.equals("allumee");
		
		
	}
	
	/**
	 * toString()
	 */
	public String toString() {
		return "Led [etat=" + this.getEtat() + ", reference=" + this.getReference() + "]";
	}


	
	
	/**
	 * equals()
	 */
	public boolean equals(Object obj) {
		if (obj == null)
			return false;
	
		if (!(obj instanceof Led )) return false;
		
		Led other = (Led) obj;
		
		if (etat != other.etat)
			return false;
		if (reference != other.reference)
			return false;
		return this.getEtat()==other.getEtat() && this.getReference()==other.getReference();
	}

	
}

