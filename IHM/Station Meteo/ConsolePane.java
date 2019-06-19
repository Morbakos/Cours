import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;

public class ConsolePane {
	private JTextArea console;
	private JPanel panel;

	public ConsolePane(){
		this.panel = new JPanel();
		this.console = new JTextArea();

		readFile();

		this.console.setEditable(false);
		this.panel.add(this.console);
		this.panel.setBackground(Color.WHITE);
	}

	public JPanel getPane() {
		return this.panel;
	}

	public JTextArea getConsole(){
		return this.console;
	}

	public void setText(String s) {
		this.console.setText(s);
	}

	/**
		Permet d'obtenir lire un fichier
	*/
	public void readFile(){ 
	  
		try {
			FileReader fileReader = new FileReader("./test.txt");
			BufferedReader bufferReader = new BufferedReader(fileReader);

			this.console.read(bufferReader, null);
		} catch(Exception e) {
			System.out.println(e.toString());
		}
	}
}