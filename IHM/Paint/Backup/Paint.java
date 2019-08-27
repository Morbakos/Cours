/**
	@author Alexis JACOB / Christian RIZK
	@version 1.0
*/

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.util.ArrayList;

public class Paint extends JFrame implements MouseListener, MouseMotionListener, ActionListener{
	
	private JTextArea consoleLabel;
	private DessinPanel creation;
	private Dessin type;
	private Color lineColor;
	private Color backgroundColor;
	private int x;int y;int x2;int y2;
	private JButton rectangle; JButton ellipse; JButton ligne; JButton suppr; JButton undo; JButton buttonBackColor; JButton buttonLineColor;
	private ArrayList<Dessin> listeDessin;
	private boolean toDelete = false;
	private boolean fill = false;
	
		//Constructeur

	/**
	 * Constructeur par defaut
	 * @param titre le titre
	 */
	public Paint(String titre)
	{
		super(titre);
		
		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize(); 
		int x = (int) screen.getWidth();
		int y = (int) screen.getHeight();

		this.initialisation(titre,x,y);
		this.initListener();
	}
		//Méthodes

	/**
	 * Constructeur par defaut
	 * @param titre le titre
	 * @param x parametre d'abscisse
	 * @param y parametre d'ordonnee 
	 */
	public void initialisation(String titre, int x, int y) //Initialisation
	{
		creation = new DessinPanel();
			//Définition du toolkit
		JPanel toolkit = new JPanel();
		GridLayout p = new GridLayout(2,4,5,0);
		toolkit.setLayout(p);
		toolkit.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Boite a outils"));
			
				//Définition du panel pour les outils 
			JPanel outils = new JPanel();
			FlowLayout placeurOutils = new FlowLayout();
			outils.setLayout(placeurOutils);	
				
					//Zone de choix des formes
				JPanel formes = new JPanel();
				formes.setLayout(placeurOutils);
				formes.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Choix des formes"));
					rectangle = new JButton();
					ellipse = new JButton();
					ligne = new JButton();
				
					rectangle.setText("Rectangle"); //Gestion des checkbox
					ellipse.setText("Ellipse");
					ligne.setText("Ligne");
					
					rectangle.addActionListener(this);
					ellipse.addActionListener(this);
					ligne.addActionListener(this);
				
				formes.add(rectangle);
				formes.add(ellipse);
				formes.add(ligne);
				
					//Zone de choix de la couleur
				JPanel couleur = new JPanel();
				couleur.setLayout(placeurOutils);
				couleur.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Gestion des couleurs"));
					this.buttonBackColor = new JButton();
					this.buttonLineColor = new JButton();
					
					buttonBackColor.setText("Couleur de fond");
					buttonLineColor.setText("Couleur des traits");

                    buttonBackColor.addActionListener(this);
                    buttonLineColor.addActionListener(this);
					
				couleur.add(buttonBackColor);
				couleur.add(buttonLineColor);
				
				    //Zone d'effacement
				JPanel delete = new JPanel();
				delete.setLayout(placeurOutils);
				delete.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Effacer"));
					suppr = new JButton("Effacer");
					undo = new JButton("Annuler");

					suppr.addActionListener(this);
					undo.addActionListener(this);

					
				delete.add(suppr);
				delete.add(undo);
				
				    //Zone de sauvegarde/chargement
				JPanel data = new JPanel();
				data.setLayout(placeurOutils);
				data.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Load/save"));
					JButton load = new JButton();
					JButton save = new JButton();
					
					load.setText("Charger");
					save.setText("Sauvegarder");
		
				data.add(save);
				data.add(load);
				
			outils.add(formes); //Ajout au panel "outils"
			outils.add(couleur); //Ajout au panel "couleurs"
			outils.add(delete); //Ajout au panel "delete"
			outils.add(data); //Ajout au panel "data"
		
		
			//Définition de la "console"
		JPanel console = new JPanel();
		console.setLayout(placeurOutils);
		
		consoleLabel = new JTextArea("Voici la console !",5,89);
		JScrollPane scroll = new JScrollPane(consoleLabel);
		
		console.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Console"));
		
		console.add(scroll,BorderLayout.CENTER);
		
			//Ajout au toolkit
		toolkit.add(outils,BorderLayout.NORTH);
		toolkit.add(console,BorderLayout.SOUTH);
		
			//Ajout au frame
		this.add(toolkit, BorderLayout.SOUTH);	
		this.add(creation, BorderLayout.CENTER);	
		
			//Frame
		this.setSize(x,y);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}
		// Listeners
	/**
	 * Initialisation des listener
	 */
	public void initListener(){
		creation.addMouseListener(this);
        creation.addMouseMotionListener(this);
	}

	/**
	 * Event listener 
	 * @param e action
	 */
	public void mousePressed(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Enfoncement du bouton de la souris en "+xs+","+ys + "\n");
		consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
		this.x = xs;
		this.y = ys;
	}

	/**
	 * Event listener 
	 * @param e action
	 */
	public void mouseReleased(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Relachement du bouton de la souris en "+xs+","+ys+ "\n");
		consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
		 this.x2=xs;
		 this.y2=ys;
		 this.repaint();
	}

	/**
	 * Event listener
	 * @param e action 
	 */
	public void mouseClicked(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Clic souris en "+xs+","+ys+ "\n");
		consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
	}

	/**
	 * Event listener 
	 * @param e action
	 */
	public void mouseMoved(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Deplacement en "+xs+","+ys+ "\n");
		consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
	}

	/**
	 * Event listener 
	 * @param e action
	 */
	public void mouseDragged(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Glissement en "+xs+","+ys+ "\n");
		consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());     
	}

	/**
	 * Event listener 
	 * @param e action
	 */
	public void mouseEntered(MouseEvent e) {
		this.requestFocus(); //pour avoir le focus sur le panel du centre sinon le clavier risque de ne pas repondre

		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Entree de la souris en "+xs+","+ys+ "\n");
		consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
	}

	/**
	 * Event listener 
	 * @param e action
	 */
	public void mouseExited(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Sortie de la souris en "+xs+","+ys+ "\n");
	}

	/**
	 * Action executees 
	 * @param e action
	 */
    public void actionPerformed(ActionEvent e)
	{
		if(e.getSource() == rectangle)
		{
			consoleLabel.append("Rectangle choisi \n");
			consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
			this.type = (Rectangle) new Rectangle();
		} 
		else if(e.getSource() == ellipse)
		{
			consoleLabel.append("Ellipse choisi \n");
			consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
			this.type = (Cercle) new Cercle();
		}
		else if(e.getSource() == ligne)
		{
			consoleLabel.append("Ligne choisi \n");
			consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
			this.type = (Ligne) new Ligne();
		}
		else if(e.getSource() == suppr)
		{
			toDelete = true;
			consoleLabel.append("Suppression des dessins \n");
			consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
			listeDessin = new ArrayList<Dessin>();
			creation.repaint();
		}
		else if(e.getSource() == buttonBackColor)
		{
		    Color couleur = JColorChooser.showDialog(null, "couleur du fond", Color.WHITE);
			this.setBackground(couleur);
		} 
		else if(e.getSource() == buttonLineColor)
		{
		    Color couleur = JColorChooser.showDialog(null, "couleur du fond", Color.WHITE);
			this.lineColor = couleur;
		}
		else if(e.getSource() == undo)
		{
		    consoleLabel.append("Suppression du dernier element\n");
			consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());
			creation.deleteLastElement();
			creation.repaint();
		}
			
				
	}
		 
    
    
    /************************
     * 						*
     *		Inner class		* 
     * 						*
     ************************/
    
    
    
	public class DessinPanel extends JPanel{
		
		/**
		 * Constructeur par defaut 
		 */
		public DessinPanel(){
			super();	
			listeDessin = new ArrayList<Dessin>();
		}
				
		/**
		 * Permet de realiser les dessins
		 * @param g zone a dessiner 
		 */
		public void paintComponent(Graphics g) {
			super.paintComponent(g);
			consoleLabel.append("\nLancement de paint \n");
			consoleLabel.setCaretPosition(consoleLabel.getDocument().getLength());

			if(!toDelete) 
			{
				addDessin(type);
			}

			toDelete = false;

			for ( int i = 0; i<listeDessin.size();i++)
				listeDessin.get(i).dessiner(g);

		}

		/**
		 * Ajoute la forme a l'arraylist
		 * @param dessin dessin a ajouter 
		 */
		public void addDessin(Dessin dessin) 
		{
			if(type instanceof Rectangle) 
			{
				listeDessin.add(new Rectangle(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2), lineColor));
			} 
			else if (type instanceof Cercle) 
			{
				listeDessin.add(new Cercle(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2), lineColor));
			}
			else if (type instanceof Ligne)
			{
				listeDessin.add(new Ligne(x,y,x2,y2, lineColor));
			}
		}

		/**
		 * Supprime le dernier element
		 * Ne fonctionne pas
		 */
		public void deleteLastElement() 
		{
			if(listeDessin.size() > 0)
			{
				System.out.println(listeDessin.size());
				int i = listeDessin.size() - 1;
				listeDessin.remove(i);
				System.out.println(listeDessin.size());
			}


		}
	
	}

	public abstract class Dessin {
		private Color couleurTrait;

		/**
		 * Constructeur champ a champ
		 * @param couleur couleur 
		 */
		public Dessin(Color couleur) {
			this.couleurTrait = couleur;
		}	

		/**
		 * Constructeur par defaut 
		 */
		public Dessin() {}

		/**
		 * Methode abstraite
		 * @param g zone a dessiner
		 */
		public void dessiner(Graphics g) {}
	}

	public class Rectangle extends Dessin {	
		private int XD;
		private int YD;
		private int XA;
		private int YA;

		/**
		 * Constructeur champ a champ
		 * @param x1 parametre x du 1er point
		 * @param y1 parametre y du 1er point
		 * @param x2 parametre x du 2eme point
		 * @param y2 parametre x du 2eme point
		 * @param couleur couleur du dessin
		 */
		public Rectangle(int x1, int y1, int x2, int y2, Color couleur) {
			super(couleur);
			this.XD = x1;
			this.YD = y1;
			this.XA = x2;
			this.YA = y2;
		}

		/**
		 * Constructeur par defaut
		 */
		public Rectangle() {
			super();
		}

		/**
		 * Methode permettant de dessiner le rectangle
		 * @param g zone a dessiner
		 */
		public void dessiner(Graphics g) {
			g.drawRect(XD,YD,XA,YA);
			g.setColor(lineColor);
		}
	}

	public class Cercle extends Dessin {	
		private int XD;
		private int YD;
		private int XA;
		private int YA;

		/**
		 * Constructeur champ a champ
		 * @param x1 parametre x du 1er point
		 * @param y1 parametre y du 1er point
		 * @param x2 parametre x du 2eme point
		 * @param y2 parametre x du 2eme point
		 * @param couleur couleur du dessin
		 */
		public Cercle(int x1, int y1, int x2, int y2, Color couleur) {
			super(couleur);
			this.XD = x1;
			this.YD = y1;
			this.XA = x2;
			this.YA = y2;
		}

		/**
		 * Constructeur par defaut
		 */
		public Cercle() {
			super();
		}

		/**
		 * Methode permettant de dessiner le cercle
		 * @param g zone a dessiner
		 */
		public void dessiner(Graphics g) {
			g.drawOval(XD,YD,XA,YA);
			g.setColor(lineColor);
		}
	}

	public class Ligne extends Dessin {	
		private int XD;
		private int YD;
		private int XA;
		private int YA;

		/**
		 * Constructeur champ a champ
		 * @param x1 parametre x du 1er point
		 * @param y1 parametre y du 1er point
		 * @param x2 parametre x du 2eme point
		 * @param y2 parametre x du 2eme point
		 * @param couleur couleur du dessin
		 */
		public Ligne(int x1, int y1, int x2, int y2, Color couleur) {
			super(couleur);
			this.XD = x1;
			this.YD = y1;
			this.XA = x2;
			this.YA = y2;
		}

		/**
		 * Constructeur par defaut
		 */
		public Ligne() {
			super();
		}

		/**
		 * Methode permettant de dessiner le rectangle
		 * @param g zone a dessiner
		 */
		public void dessiner(Graphics g) {
			g.drawLine(XD,YD,XA,YA);
			g.setColor(lineColor);
		}
	}

	public static void main(String[] args) {
		new Paint("Projet paint");
	}
}

