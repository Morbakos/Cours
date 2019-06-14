import javax.swing.*;
import java.awt.*;

public class FenAjoutBouton extends JFrame {

	public FenAjoutBouton(String titre, int w, int h) {
		super(titre);
		this.initialise();
		this.setSize(w,h);
		this.setVisible(true);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
	}

	public void initialise() {
		Container c = this.getContentPane();
		JButton butOk = new JButton("Ok");
		JButton bOk = new JButton("Ok");
		GridLayout grid = new GridLayout(1,2);
		c.setLayout(grid);
		c.add(butOk);
		c.add(bOk);
		this.initMenu();
	}

	public void initMenu() {
		JMenuBar jmb = new JMenuBar();
		this.setJMenuBar(jmb);
		JMenu mdef = new JMenu("Definir");
		JMenuItem defNom = new JMenuItem("le nom");
		mdef.add(defNom);
		jmb.add(mdef);
	}

	public static void main(String[] args) {
		new FenAjoutBouton("Ajout d'un bouton", 200,300);
	}
}