package fr.m4104.display_number;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity {
    // Pour la saisi du nombre
    private EditText et_number;

    // Bouton pour l'affichage
    private Button bt_dispay;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        /**
         * Désérialisation des ressources
         */

        deserialiserRessources();

        /**
         * Mise en place de l'écouteur du bouton calculer
         */
        initConnection();



    }

    /**
     * Désérialise les ressources
     * Permet d'intancier les instances à partir des ressources
     * XML des composants graphiques (widgets)
     */
    private void deserialiserRessources() {
        // A compléter

        et_number = (EditText) this.findViewById(R.id.et_number);
        bt_dispay = (Button) this.findViewById(R.id.bt_display);


    }

    /**
     * Mise en place des écouteurs
     * Permet de mettre en place les fonctions de call-back
     * liées aux évènements
     */
    private void initConnection() {
        /** Dans l'écouteur il faut :
         *
         * - Instancier un Intent explicite
         * - Charger les extras dans l'Intent pour l'affichage
         * - Lancer l'activité d'affichage
         */

        bt_dispay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                // On récupère le nombre de l'EditText
                String sNb = et_number.getText().toString();

                try {
                    // Conversion de sNb en un nobre entier

                   // A compléter
                }
                catch (NumberFormatException e){
                    Toast.makeText(MainActivity.this, R.string.invalid_number, Toast.LENGTH_LONG).show();
                }
            }
        });
    }
}
