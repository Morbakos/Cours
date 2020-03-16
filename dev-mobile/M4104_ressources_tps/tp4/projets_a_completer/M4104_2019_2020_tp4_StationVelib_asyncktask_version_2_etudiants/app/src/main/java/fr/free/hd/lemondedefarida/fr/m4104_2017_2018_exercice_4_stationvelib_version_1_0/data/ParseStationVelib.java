package fr.free.hd.lemondedefarida.fr.m4104_2017_2018_exercice_4_stationvelib_version_1_0.data;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.view.View;

import java.io.InputStreamReader;
import java.util.ArrayList;

import parse_xml_station_velib.InterfaceProgressParseXML;
import parse_xml_station_velib.StationVelib;

/**
 * Created by LEMAIRE on 18/02/2017.
 * révision : 2020
 */


/**
 * AsyncTask
 * Premier paramètre générique (InputStreamReader) : Flux permettant de lire le fichier XML
 * Deuxième paramètre générique (Integer) : Ce paramètre permet à l'Asynctask rendre compte de son déroulement
 * Troisième paramètre générique (ArrayList<StationVelib>) : Ensemble d'instances de StationVelibs qui correspond au résultat de la tâche
 *                       réalisée par l'AsyncTask
 *
 *  Interface InterfaceProgressParseXML est implémentée afin de permettre au parseur d'informer l'AsyncTask à chaque
 *  station extraite du flux XML grâce à l'appel de la méthode de call-back notifyNextStation() qui devra être redéfinie
 */
public class ParseStationVelib extends AsyncTask <InputStreamReader, Integer, ArrayList<StationVelib>>
        implements InterfaceProgressParseXML {

    public final static int NB_STATION_VELIB = 1224;
    private final View view = null;

    private int handleParamCount=0;
    private ProgressDialog progressDialog = null; /* Barre de progression pour exposer la progression de
                                              la tâche */



    /**
     * Constructeur de l'AsyncTask ParseStationVelib
     * @param progressDialog (ProgressDialog) : Barre de progression qui permettra à l'AsyncTask
     *                            d'exposer son déroulement
     * @param view (View) : Vue qui affichera l'ensemble des StationVelibs
     */
    public ParseStationVelib(ProgressDialog progressDialog, View view) {

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
     * Actions à faire avant le lancement de la tâche de l'AsyncTask
     * * Il faut initialiser et calibrer la barre de progression
     */
    @Override
    protected void onPreExecute() {
        super.onPreExecute(); // Appel de la méthode de la classe mère obligatoire

        // A compléter

    }

    /**
     * Permet d'exposer dans l'IHM l'état du déroulement de l'AsyncTask
     * @param values (Integer) : fait état de la progression de l'AsyncTask
     */
    @Override
    protected void onProgressUpdate(Integer... values) {
        super.onProgressUpdate(values); // Appel de la méthode de la classe mère obligatoire

        // A compléter


    }


    /**
     * Actions à faire paprès l'exécution de la tâche de l'AsyncTask
     * Il faut "afficher" le résultat au sein de l'UIThread
     * @param stationsVelib (ArrayList<StationVelib>) : Ensemble des StationVelibs extraites
     *                              du flux XML
     */
    @Override
    protected void onPostExecute(ArrayList<StationVelib> stationsVelib) {
        super.onPostExecute(stationsVelib); // Appel à la méthode mère obligatoire


        // Il faut exposer le résultat


    }

    @Override
    /**
     * Implémentation de l'interface InterfaceProgressParseXML
     * Call-back pour le parserXML
     * @param stationVelib (StationVelib) : Station velib qui vient d'être parsée
     */
    public void notifyNextStation(StationVelib stationVelib) {
        // Méthode permettant de publier la progression de la tâche
    }
}
