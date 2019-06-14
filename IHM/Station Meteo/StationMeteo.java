import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;

interface StationMeteoConstantes {
	public static String[] jourSemaine = {"Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"};
	public static String[] infos = {"Place", "Semaine", "Temperature", "Precipitation"};
}

public class StationMeteo implements StationMeteoConstantes, ActionListener {

	JTextArea consoleLabel = new JTextArea();

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
		
		/*Dimension screen = Toolkit.getDefaultToolkit().getScreenSize(); 
		int x = (int) screen.getWidth();
		int y = (int) screen.getHeight();*/

		int x = 700;
		int y = 400;
		frame.setSize(x,y);
		frame.setResizable(false);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
	}

	public void actionPerformed(ActionEvent e){
		consoleLabel.setText(e.getActionCommand());
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
			subFrontPanel.add(new JTextField(5));
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

		readFile(consoleLabel);
		
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
			FileReader fileReader = new FileReader("./test.txt");
			BufferedReader bufferReader = new BufferedReader(fileReader);

			console.read(bufferReader, null);
		} catch(Exception e) {
			System.out.println(e.toString());
		}
	}
	
	public static void main(String [] args)
	{
		new StationMeteo("Station meteo");
	}
}