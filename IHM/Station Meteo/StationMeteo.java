import javax.swing.*;
import javax.swing.filechooser.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.ArrayList; // import the ArrayList class

interface StationMeteoConstantes {
	public static String[] jourSemaine = {"Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"};
	public static String[] infos = {"Place", "Semaine", "Temperature", "Precipitation"};
}

public class StationMeteo implements StationMeteoConstantes, ActionListener {

	JTextArea consoleLabel = new JTextArea(); 
	private ArrayList<JTextField> infos = new ArrayList<JTextField>();

	public StationMeteo(String titre) {
		this.initialisation(titre);
	}

	public void initialisation(String titre) {
		JFrame frame = new JFrame(titre);

		frame.add(getNorthPane(), BorderLayout.NORTH);
		frame.add(getWestPane(), BorderLayout.WEST);
		frame.add(getSouthPane(), BorderLayout.SOUTH);
		frame.add(getConsolePane());
		frame.add(getEastPane(), BorderLayout.EAST);
		
		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize(); 
		int x = (int) screen.getWidth();
		int y = (int) screen.getHeight();

		frame.setSize(x, y);
		frame.setResizable(false);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	}

	public void actionPerformed(ActionEvent e){

		if(e.getActionCommand() == "Charger") {
			readFile(consoleLabel);		
		
		} 
		else if (e.getActionCommand() == "Sauvegarder") 
		{
			String s = "Valeurs relevées\n";
			s = s + "================\n";
			s = s + "Place : " + this.infos.get(0).getText() + "\n";
			s = s + "Semaine : " + this.infos.get(1).getText() + "\n";
			s = s + "Temperature : " + this.infos.get(2).getText() + "\n";
			s = s + "Precipitation : " + this.infos.get(3).getText() + "\n";
			makeFile(s);
		}
		else
		{
			String s = e.getActionCommand() + "\n";
			s = s + "Place : " + this.infos.get(0).getText() + "\n";
			s = s + "Semaine : " + this.infos.get(1).getText() + "\n";
			s = s + "Temperature : " + this.infos.get(2).getText() + "\n";
			s = s + "Precipitation : " + this.infos.get(3).getText() + "\n";

			consoleLabel.setText(s);

		}

	}

	/**
		Permet d'obtenir le panel NORD
	*/
	public JPanel getNorthPane() {

		JPanel frontPanel = new JPanel();
		JPanel subFrontPanel = new JPanel();
		FlowLayout placeur = new FlowLayout();
		subFrontPanel.setLayout(placeur);

		for(int i = 0; i < StationMeteoConstantes.infos.length; i++)
		{
			JLabel label = new JLabel(StationMeteoConstantes.infos[i]);
			subFrontPanel.add(label);
			JTextField field = new JTextField(5);
			subFrontPanel.add(field);
			this.infos.add(field);
		}

		frontPanel.add(subFrontPanel);
		subFrontPanel.setBackground(Color.lightGray);
		frontPanel.setBackground(Color.lightGray);

		return frontPanel;
	}

	/**
		Permet d'obtenir le panel OUEST
	*/
	public JPanel getWestPane(){

		JPanel sidePanel = new JPanel();
		JPanel subSidePanel = new JPanel();
		GridLayout placeur = new GridLayout(7,1,5,15);
		subSidePanel.setLayout(placeur);

		for(int i = 0; i < StationMeteoConstantes.jourSemaine.length; i++)
		{
			JButton bouton = new JButton(StationMeteoConstantes.jourSemaine[i]);
			subSidePanel.add(bouton);
			bouton.addActionListener(this);
		}
		sidePanel.add(subSidePanel);
		subSidePanel.setBackground(Color.lightGray);
		sidePanel.setBackground(Color.lightGray);

		return sidePanel;
	}

	/**
		Permet d'obtenir le panel SUD
	*/
	public JPanel getSouthPane(){

		JPanel southPanel = new JPanel();
		JPanel subSouthPanel = new JPanel();
		GridLayout placeur = new GridLayout(1,2,5,5);
		subSouthPanel.setLayout(placeur);

		JButton boutonC = new JButton("Charger");
		JButton boutonS = new JButton("Sauvegarder");
		subSouthPanel.add(boutonC);
		subSouthPanel.add(boutonS);

		boutonC.addActionListener(this);
		boutonS.addActionListener(this);
		
		southPanel.add(subSouthPanel);
		subSouthPanel.setBackground(Color.lightGray);
		southPanel.setBackground(Color.lightGray);

		return southPanel;
	}

	/**
		Permet d'obtenir le panel CONSOLE
	*/
	public JPanel getConsolePane(){

		JPanel consolePanel = new JPanel();
		
		consoleLabel.setEditable(false);
		consolePanel.add(consoleLabel);
		consolePanel.setBackground(Color.WHITE);

		return consolePanel;
	}

	/**
		Permet d'obtenir le panel CONSOLE
	*/
	public JPanel getEastPane(){

		JPanel eastPanel = new JPanel();
		eastPanel.setBackground(Color.lightGray);
		return eastPanel;
	}

	/**
		Permet d'obtenir lire un fichier
	*/
	public void readFile(JTextArea console){ 
	  
		try {
			JFileChooser chooser = new JFileChooser();
		    int returnVal = chooser.showOpenDialog(console);
		    if(returnVal == JFileChooser.APPROVE_OPTION) {
				FileReader fileReader = new FileReader(chooser.getSelectedFile());
				BufferedReader bufferReader = new BufferedReader(fileReader);

				console.read(bufferReader, null);
			}
		} catch(Exception e) {
			System.out.println(e.toString());
		}
	}

	/**
		Permet d'obtenir lire un fichier
	*/
	public void makeFile(String s){ 
	  
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter("valeurs.txt"));
		    writer.write(s);
		    writer.close();
		
		} catch(Exception e) {
			System.out.println(e.toString());
		}
	}
	
	public static void main(String [] args)
	{
		new StationMeteo("Station meteo");
	}
}