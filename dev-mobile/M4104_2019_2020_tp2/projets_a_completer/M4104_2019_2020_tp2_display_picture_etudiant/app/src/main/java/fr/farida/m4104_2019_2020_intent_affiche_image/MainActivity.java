package fr.farida.m4104_2019_2020_intent_affiche_image;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Button;

import androidx.annotation.AnyRes;
import androidx.annotation.NonNull;

public class MainActivity extends Activity {

    // Bouton permettant de demander l'affichaege d'une image
    private Button buttonDisplayPicture;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        // Désérialisation des ressources XML


        // Mise en place des écouteurs


    }

    /**
     * Désérialise les ressources
     * Permet d'intancier les instances à partir des ressources
     * XML des composants graphiques (widgets)
     */
    private void deserialiser(){
        // A compléter

    }

    /**
     * Mise en place des écouteurs
     * Permet de mettre en place les fonctions de call-back
     * lié aux évènements
     */
    private void initConnections(){
      // A compléter
    }

    /**
     * Retourne l'URI correspondant à une ressource Drawable
     * @param context - context : Context de l'activité
     * @param drawableId - identifiant de la ressource
     * @return - uri : URI corrspondant à la ressource
     */
    public static final Uri getUriToDrawable(@NonNull Context context,
                                             @AnyRes int drawableId) {
        Uri imageUri = Uri.parse(ContentResolver.SCHEME_ANDROID_RESOURCE +
                "://" + context.getResources().getResourcePackageName(drawableId)
                + '/' + context.getResources().getResourceTypeName(drawableId)
                + '/' + context.getResources().getResourceEntryName(drawableId) );
        return imageUri;
    }

}
