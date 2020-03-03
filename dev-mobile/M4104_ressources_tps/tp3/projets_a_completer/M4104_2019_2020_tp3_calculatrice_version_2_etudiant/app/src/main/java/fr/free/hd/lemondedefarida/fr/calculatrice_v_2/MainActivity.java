package fr.free.hd.lemondedefarida.fr.calculatrice_v_2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {
    public final static String OPERANDE_1 = "operande_1";
    public final static String OPERANDE_2 = "operande_2";
    public final static String OPERATEUR = "operateur";
    private static final String AFFICHEUR = "afficheur" ;

    private EditText operande_1;
    private EditText operande_2;

    private TextView tv_afficheur;

    private String s_afficheur;

    public static final int REQ_CALCUL = 0 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /**
         * Désérialisations du layout associé à l'Activity
         */



        /**
         * Désérialisation des ressources
         */



        /**
         * Mise en place des écouteurs
         */


    }



    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);


    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);




    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {

        super.onActivityResult(requestCode, resultCode, data);
    }
}
