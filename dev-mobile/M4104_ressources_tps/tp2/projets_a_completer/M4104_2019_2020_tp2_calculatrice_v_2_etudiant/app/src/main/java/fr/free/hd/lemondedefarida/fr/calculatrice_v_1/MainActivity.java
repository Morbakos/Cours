package fr.free.hd.lemondedefarida.fr.calculatrice_v_1;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {
    public final static String OPERANDE_1 = "operande_1";
    public final static String OPERANDE_2 = "operande_2";
    public final static String OPERATEUR = "operateur";

    private EditText operande_1;
    private EditText operande_2;
    private EditText operateur;

    private TextView tv_resultat;

    public static final int REQ_CALCUL = 0 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /**
         * Désérialisation des ressources
         */

        // A compléter

        /**
         * Mise en place de l'écouteur du bouton calculer
         *
         * Dans l'écouteur il faut :
         *
         * - Instancier un Intent explicite
         * - Charger les extras pour le calcul
         * - Lancer l'activité de calcul
         */


        // A compléter

    }



    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {

        // A compléter

    }

}
