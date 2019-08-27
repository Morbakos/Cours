import javax.swing.*;
import javax.swing.filechooser.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.ArrayList; // import the ArrayList class

public class Paint extends JFrame implements ActionListener, MouseListener, MouseMotionListener {

	private JComboBox toolSelector;
	private Color lineColor;
	private Color backgroundColor;
	private DessinPanel creation;
	private Object formeCourante;
	private int x;
	private int y;
	private int x2;
	private int y2;

	ArrayList<Dessin> listeDessin;

	public Paint(String titre) {
		super(titre);	

		this.initialisation(titre);
	}

	public void initialisation(String titre) {

		creation = new DessinPanel();

		this.add(getSouthPane(), BorderLayout.SOUTH);
		this.add(creation);

		creation.addMouseListener(this);
		
		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize(); 
		int x = (int) screen.getWidth();
		int y = (int) screen.getHeight();

		this.setSize(x, y);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}

	/*public JPanel getConsolePane() {
		this.drawArea = new JPanel();
		drawArea.setBackground(Color.WHITE);

		return this.drawArea;
	}*/

	public JPanel getSouthPane() {

		//== Création du panel SUD et des sous panels
		JPanel southPanel = new JPanel();
		JPanel subNorthPanel = new JPanel();
		JPanel subSouthPanel = new JPanel();
		FlowLayout flow = new FlowLayout();
		GridLayout grid = new GridLayout(2,1,5,5);
		southPanel.setLayout(grid);


		//== Gestion du subNorthPanel
		subNorthPanel.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.BLACK),"Boite a outils"));

		JPanel toolBox = new JPanel();
		JPanel colorBox = new JPanel();
		JPanel editBox = new JPanel();

		toolBox.setLayout(flow);
		colorBox.setLayout(flow);
		editBox.setLayout(flow);

		//==== partie toolBox

		// comboBox
		String[] tools = new String[]{"Rectangle", "Ellipse", "Ligne", "Gomme"};
		this.toolSelector = new JComboBox(tools);
		toolSelector.addActionListener(this);

		// radiobuttons
		ButtonGroup buttonGroup = new ButtonGroup();
		JRadioButton plein = new JRadioButton("plein");
		JRadioButton vide = new JRadioButton("vide", true);
		buttonGroup.add(plein);
		buttonGroup.add(vide);

		plein.addActionListener(this);
		vide.addActionListener(this);

		toolBox.add(toolSelector);
		toolBox.add(plein);
		toolBox.add(vide);
		toolBox.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.BLACK),"Outils"));

		//==== partie colorBox
		JButton lineColorSelector = new JButton("Couleur trait");
		JButton backgroundColorSelector = new JButton("Couleur fond");
		lineColorSelector.addActionListener(this);
		backgroundColorSelector.addActionListener(this);

		colorBox.add(lineColorSelector);
		colorBox.add(backgroundColorSelector);
		colorBox.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.BLACK),"Choix des couleurs"));

		//== partie editBox
		JButton clear = new JButton("Nettoyer");
		JButton cancel = new JButton("Annuler");
		clear.addActionListener(this);
		cancel.addActionListener(this);

		editBox.add(clear);
		editBox.add(cancel);
		editBox.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.BLACK),"Edition"));


		subNorthPanel.add(toolBox);
		subNorthPanel.add(colorBox);
		subNorthPanel.add(editBox);	

		//== Gestion générale
		subNorthPanel.setBackground(Color.RED);
		subSouthPanel.setBackground(Color.GREEN);

		southPanel.add(subNorthPanel, BorderLayout.NORTH);
		southPanel.add(subSouthPanel, BorderLayout.SOUTH);
		return southPanel;
	}

	public void changeColor(String element) {
		JColorChooser colorSelector = new JColorChooser();
		Color newColor = colorSelector.showDialog(this.creation,"Choose Background Color",this.creation.getBackground());
		if(element == "Couleur trait"){
			this.lineColor = newColor;
		} else if(element == "Couleur fond"){
			this.creation.setBackground(newColor);
		}
	}

	public void actionPerformed(ActionEvent e) {

		switch(e.getActionCommand()) {
			case "Couleur trait":
				changeColor("Couleur trait");
				break;

			case "Couleur fond":
				changeColor("Couleur trait");
				break;

			case "comboBoxChanged":
				if (toolSelector.getSelectedItem().equals("Rectangle")) {
					//this.selecteur = 1;
					this.formeCourante = Rectangle;
				} else if (toolSelector.getSelectedItem().equals("Ellipse")) {
					//this.selecteur = 2;
				} else if (toolSelector.getSelectedItem().equals("Ligne")) {
					//this.selecteur = 3;
				} else {
					//this.selecteur = 4;
				}
				break;
		}
		

	}

	public void mousePressed(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Enfoncement du bouton de la souris en "+xs+","+ys + "\n");
		this.x = xs;
		this.y = ys;
	}

	public void mouseReleased(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Relachement du bouton de la souris en "+xs+","+ys+ "\n");
		 this.x2=xs;
		 this.y2=ys;
		 this.repaint();
	}

	public void mouseClicked(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Clic souris en "+xs+","+ys+ "\n");
	}

	public void mouseMoved(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Deplacement en "+xs+","+ys+ "\n");
	}

	public void mouseDragged(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Glissement en "+xs+","+ys+ "\n");     
	}

	public void mouseEntered(MouseEvent e) {
		//this.requestFocus(); //pour avoir le focus sur le panel du centre sinon le clavier risque de ne pas repondre

		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Entree de la souris en "+xs+","+ys+ "\n");
	}

	public void mouseExited(MouseEvent e) {
		int xs = e.getX();
		int ys = e.getY();
		//consoleLabel.append("Sortie de la souris en "+xs+","+ys+ "\n");
	}


	/**
	 Inner class
	 */

	public class DessinPanel extends JPanel{
				
		public DessinPanel(){
			super();	
			listeDessin = new ArrayList<Dessin>();
		}
				
		public void paintComponent(Graphics g) {
			super.paintComponent(g);
			//consoleLabel.append("Lancement de paint \n");
			String type;
			if(selecteur == 1){
				
				g.drawRect(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2));
				type = "rectangle";
				listeDessin.add(new Dessin(Math.min(x,x2),Math.min(y,y2),Math.abs(x-x2),Math.abs(y-y2),type));
			}
			else if (selecteur == 2){
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
					g.drawLine(listeDessin.get(i).getXD() ,listeDessin.get(i).getYD() ,listeDessin.get(i).getXA() ,listeDessin.get(i).getYA());
		}
	
	}

	/**
     Inner class
	 */

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
		public String getType(){
			return this.type;
		}
		public Dessin(int x1, int y1, int x2, int y2) {
			this.XD = x1;
			this.YD = y1;
			this.XA = x2;
			this.YA = y2;
					
		}
	}

	public class Rectangle extends Dessin {

		public Rectangle(int x1, int y1, int x2, int y2) {
			super(x1,y1,x2,y2);
		}
	}

	/**
     Main
	 */
	public static void main(String[] args) {
		new Paint("Projet paint IHM");
	}


	
}