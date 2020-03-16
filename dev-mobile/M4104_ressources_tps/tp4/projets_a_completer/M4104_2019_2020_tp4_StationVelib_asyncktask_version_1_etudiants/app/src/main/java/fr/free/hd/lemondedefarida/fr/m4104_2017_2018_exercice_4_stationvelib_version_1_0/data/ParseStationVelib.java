package fr.free.hd.lemondedefarida.fr.m4104_2017_2018_exercice_4_stationvelib_version_1_0.data;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import java.io.InputStreamReader;
import java.util.ArrayList;

import parse_xml_station_velib.InterfaceProgressParseXML;
import parse_xml_station_velib.StationVelib;
import parse_xml_station_velib.StationsVelibParserXML;

/**
 * Created by LEMAIRE on 18/02/2017.
 * révision : 2020
 */


/**
 * AsyncTask
 * Premier paramètre générique (InputStreamReader) : Flux permettant de lire le fichier XML
 * Deuxième paramètre générique (Void) : Cette version de l'application ne rend pas compte de
 *                                  l'évolution de la tâche de l'AsyncTask
 * Troisième paramètre générique (ArrayList<StationVelib>) : Ensemble d'instances de StationVelibs qui correspond au résultat de la tâche
 *                       réalisée par l'AsyncTask
 *
 */
public class ParseStationVelib extends AsyncTask <InputStreamReader, Integer, ArrayList<StationVelib>>
{
    /**
     * Vue qui affichera l'ensemble des stations velib
     */
    private final View view = null;



    /**
     * Constructeur de l'AsyncTask ParseStationVelib
     * @param view (View) : Vue qui affichera l'ensemble des StationVelibs
     */
    public ParseStationVelib( View view) {
        // A compléter

    }


    /**
     * Tâche qui est réalisée par l'AsyncTask
     * <BR/> Le traitement consiste à parser le flux XML ppur obtenir un ensemble de StationVelibs
     * @param params (InputStreamReader) : Flux permettant de lire le fichier XML
     * @return (ArrayList<StationVelib>) : Ensemble de StationVelibs
     */
    @Override
    protected ArrayList<StationVelib> doInBackground(InputStreamReader... params) {

        // Ensemble des StationVelibs extraites du Flux
        ArrayList<StationVelib> stationsVelib = null;

        /**
         * Parsing du document XML
         */
        // A compéter

        /**
         * C'est ici que vous devez extraire les stations velibs du flux XML
         * et les stocker dans stationsVelib
         */



        return stationsVelib;
    }


    /**
     * Actions à faire paprès l'exécution de la tâche de l'AsyncTask
     * Il faut "afficher" le résultat au sein de l'UIThread
     * @param stationsVelib
     */
    @Override
    protected void onPostExecute(ArrayList<StationVelib> stationsVelib) {
        super.onPostExecute(stationsVelib); // Appel à la méthode mère obligatoire


        // Il faut exposer le résultat

    }

}
