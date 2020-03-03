package fr.farida.m4104_2019_2020_intent_affiche_image;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ImageView;


public class DisplayPicture extends Activity {

    // widget permettant d'afficher l'image
    private ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.display_picture);

        // Désérialisation des ressources XML


        // Récupération de l'URI embarquée dans l'Intent



        // Affichage de l'image dans son cadre

    }

    /**
     * Désérialise les ressources
     * Permet d'intancier les instances à partir des ressources
     * XML des composants graphiques (widgets)
     */
    private void deserialiser(){
        // A compléter

    }
}
