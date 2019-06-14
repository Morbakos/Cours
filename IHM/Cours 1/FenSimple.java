import javax.swing.*;
import java.awt.*;

public class FenSimple extends JFrame {

	/**
	* Constructeur champ a champ
	*/
	public FenSimple(String titre, int x, int y, int w, int h, Cursor c) {
		super(titre);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setBounds(x,y,w,h);
		this.setVisible(true);
		this.setCursor(c);
		String version = System.getProperty("java.version");

		Toolkit aTK = Toolkit.getDefaultToolkit();
		Dimension dim = aTK.getScreenSize();
		System.out.println("largeur "+ dim.width + " hauteur " + dim.height);
		System.out.println("Version "+ version);	
	}
	
	public static void main(String[] args) {
		new FenSimple("Ma fenetre", 300, 200, 500, 400, new Cursor(Cursor.HAND_CURSOR));
	}
}