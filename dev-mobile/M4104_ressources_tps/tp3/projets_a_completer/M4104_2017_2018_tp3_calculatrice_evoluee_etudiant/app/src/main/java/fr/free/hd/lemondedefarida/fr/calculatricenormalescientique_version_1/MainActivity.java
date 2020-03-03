/**
 * @Author B. KHAFIF
 * Copyright 2017 - 2018
 * Reprodution interdite
 * Calculatrice normale et scientifique
 */

package fr.free.hd.lemondedefarida.fr.calculatricenormalescientique_version_1;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.widget.TextView;


public class MainActivity extends Activity {

    //private static final ParseurMath parseur = ParseurMath.getInstance();

    private TextView afficheur;     // Display TextView


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
      // A compléter


    }



    /**
     * Mise en place des écouteurs
     */
    public void initConnection(){

        // A completer

        /**
         * Mise en place des écouteurs des boutons commune aux deux types
         * de calculatrices
         */

        // A compléter

        /**
         * Mise en place des écouteurs relatifs à la calculatrice scientifique uniquement
         */
        Log.i("orientation",""+getScreenOrientation());

        int orientation = this.getScreenOrientation();

        // A compléter



    }


    /**
     * Détection de l'orientation du terminal
     * @return (int) :
     * * Configuration.ORIENTATION_LANDSCAPE si paysage
     * * Configuration.ORIENTATION_PORTRAIT si portrait
     */
    public int getScreenOrientation()
    {
        Display getOrient = getWindowManager().getDefaultDisplay();
        int orientation = Configuration.ORIENTATION_UNDEFINED;
        if(getOrient.getWidth()==getOrient.getHeight()){
            orientation = Configuration.ORIENTATION_SQUARE;
        } else{
            if(getOrient.getWidth() < getOrient.getHeight()){
                orientation = Configuration.ORIENTATION_PORTRAIT;
            }else {
                orientation = Configuration.ORIENTATION_LANDSCAPE;
            }
        }
        return orientation;
    }
}
