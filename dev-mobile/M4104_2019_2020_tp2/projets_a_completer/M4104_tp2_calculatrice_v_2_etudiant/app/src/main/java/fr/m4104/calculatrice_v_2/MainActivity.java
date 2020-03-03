package fr.m4104.calculatrice_v_2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {

    // Clefs pour les extras de de l'Intent
    public final static String OPERANDE_1 = "operande_1";
    public final static String OPERANDE_2 = "operande_2";
    public final static String OPERATEUR = "operateur";

    private EditText operande_1;    // Zone d'édition pour l'operande 1
    private EditText operande_2;    // Zone d'édition pour l'operande 2
    private EditText operateur;     // Zone d'édition pour l'operateur

    // Affichage du résultat du calcul
    private TextView tv_resultat;

    public static final int REQ_CALCUL = 0 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /**
         * Désérialisation des ressources
         */  // A compléter

        /**
         * Désérialisation des ressources
         */

        deserialiserRessources();

        /**
         * Mise en place de l'écouteur du bouton calculer
         */
        initConnection();

        // A compléter


    }

    /**
     * Désérialise les ressources
     */
    private void deserialiserRessources() {
        // A compléter
    }

    /**
     * Mise en place des écouteurs
     */
    private void initConnection() {
        /** Dans l'écouteur il faut :
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
