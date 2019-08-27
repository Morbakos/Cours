import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.util.ArrayList;

public class Paint extends JFrame implements MouseListener, MouseMotionListener, ActionListener{
	
	private JTextArea consoleLabel;
	private DessinPanel creation;
	private Dessin type;
	private int x;int y;int x2;int y2;
	private JButton rectangle; JButton ellipse; JButton ligne; JButton suppr; JButton backColor; JButton lineColor;
	private ArrayList<Dessin> listeDessin = new ArrayList<Dessin>();
	
		//Constructeur
	public Paint(String titre)
	{
		super(titre);	
		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize(); 
		int x = (int) screen.getWidth();
		int y = (int) screen.getHeight();

		this.initialisation(titre,x,y);
	}
		//Méthodes
	public void initialisation(String titre, int x, int y) //Initialisation
	{
		// Création de la frame
		this.creation = new DessinPanel();
			//Définition du toolkit
		JPanel toolkit = new JPanel();
		GridLayout p = new GridLayout(2,4,5,0);
		toolkit.setLayout(p);
		toolkit.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Boîte à outils"));
			
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
					JButton backColor = new JButton();
					JButton lineColor = new JButton();
					
					backColor.setText("Couleur de fond");
					lineColor.setText("Couleur des traits");

                    backColor.addActionListener(this);
					
				couleur.add(backColor);
				couleur.add(lineColor);
				
				    //Zone d'effacement
				JPanel delete = new JPanel();
				delete.setLayout(placeurOutils);
				delete.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray),"Effacer"));
					suppr = new JButton();
					
					suppr.setText("Effacer");
					suppr.addActionListener(this);
					
				delete.add(suppr);
				
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
	public void initListener(){
		creation.addMouseListener(this);
        creation.addMouseMotionListener(this);
	}

	public void mousePressed(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Enfoncement du bouton de la souris en "+xs+","+ys + "\n");
		this.x = xs;
		this.y = ys;
	}

	public void mouseReleased(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Relachement du bouton de la souris en "+xs+","+ys+ "\n");
		 this.x2=xs;
		 this.y2=ys;
		 this.creation.repaint();
	}

	public void mouseClicked(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Clic souris en "+xs+","+ys+ "\n");
	}

	public void mouseMoved(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Deplacement en "+xs+","+ys+ "\n");
	}

	public void mouseDragged(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Glissement en "+xs+","+ys+ "\n");     
	}

	public void mouseEntered(MouseEvent e) {
		this.requestFocus(); //pour avoir le focus sur le panel du centre sinon le clavier risque de ne pas repondre

		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Entree de la souris en "+xs+","+ys+ "\n");
	}

	public void mouseExited(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		consoleLabel.append("Sortie de la souris en "+xs+","+ys+ "\n");
	}

    public void actionPerformed(ActionEvent e)
	{
		if(e.getSource() == rectangle){
			consoleLabel.append("Rectangle choisi \n");
			//this.selecteur = 1;
			//this.listeDessin.add(new Rectangle(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2)));
			this.type = (Rectangle) new Rectangle();
			} 
		else if(e.getSource() == ellipse){
			consoleLabel.append("Ellipse choisi \n");
			this.listeDessin.add(new Dessin(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2)));
			}
		else if(e.getSource() == ligne){
			consoleLabel.append("Ligne choisi \n");
			this.listeDessin.add(new Dessin(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2)));
			}
		else if(e.getSource() == suppr){
			consoleLabel.append("Suppression des dessins \n");
			/*for ( int i =0; i<listeDessin.size();i++)
				listeDessin.remove(i);*/
			//creation.removeAll();
				//selecteur =24;
			listeDessin = new ArrayList<Dessin>();
			creation.repaint();
			
		    }
		else if(e.getSource() == backColor){
		    //Color couleur = JColorChooser.showDialog(this, "couleur du fond", Color.WHITE);
		    //System.out.println("Test");
		}
			
				
	}
		 
    
    
    /************************
     * 						*
     *		Inner class		* 
     * 						*
     ************************/
    
    
    
	public class DessinPanel extends JPanel{
				
		public DessinPanel(){
			super();	
			listeDessin = new ArrayList<Dessin>();
		}
				
		public void paintComponent(Graphics g) {
			super.paintComponent(g);
			consoleLabel.append("\nLancement de paint \n");

			if(type instanceof Rectangle){
				
				g.drawRect(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2));
				//type = "rectangle";
				listeDessin.add(new Rectangle(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2)));
				System.out.println("Rectangle");
			}
			/*else if (selecteur == 2){
				g.drawOval(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2));
				type = "ellipse";
				listeDessin.add(new Dessin(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2),type));
			}
			else if (selecteur == 3){
				g.drawLine(x,y,x2,y2);
				type = "ligne";
				listeDessin.add(new Dessin(x,y,x2,y2,type));
			}
            else if (selecteur == 4){
				g.drawLine(x,y,x2,y2);
				type = "ligne";
				listeDessin.add(new Dessin(x,y,x2,y2,type));
			}
			
			for ( int i = 0; i<listeDessin.size();i++)
				if(listeDessin.get(i).getType().equals("rectangle"))
					g.drawRect(listeDessin.get(i).getXD() ,listeDessin.get(i).getYD() ,listeDessin.get(i).getXA() ,listeDessin.get(i).getYA());
				else if(listeDessin.get(i).getType().equals("ellipse"))
					g.drawOval(listeDessin.get(i).getXD() ,listeDessin.get(i).getYD() ,listeDessin.get(i).getXA() ,listeDessin.get(i).getYA());
				else if(listeDessin.get(i).getType().equals("ligne"))
					g.drawLine(listeDessin.get(i).getXD() ,listeDessin.get(i).getYD() ,listeDessin.get(i).getXA() ,listeDessin.get(i).getYA());*/
		}
	
	}


	public class Dessin {
	
		private int XD;
		private int YD;
		private int XA;
		private int YA;
		private String type;
		  
		public int getXD() {
			return this.XD;
		}
		public void setXD(int xD) {
			this.XD = xD;
		}
		public int getYD() {
			return this.YD;
		}
		public void setYD(int yD) {
			this.YD = yD;
		}
		public int getXA() {
			return this.XA;
		}
		public void setXA(int xA) {
			this.XA = xA;
		}
		public int getYA() {
			return this.YA;
		}
		public void setYA(int yA) {
			this.YA = yA;
		}
		public Dessin(int x1, int y1, int x2, int y2) {
			this.XD = x1;
			this.YD = y1;
			this.XA = x2;
			this.YA = y2;
					
		}

		public Dessin(){}
	}

	public class Rectangle extends Dessin {
		public Rectangle(int x1, int y1, int x2, int y2){
			super(x1,y1,x2,y2);
		}

		public Rectangle() {
			super();
		}
	}

	public static void main(String[] args) {
		new Paint("Projet paint");
	}
}

