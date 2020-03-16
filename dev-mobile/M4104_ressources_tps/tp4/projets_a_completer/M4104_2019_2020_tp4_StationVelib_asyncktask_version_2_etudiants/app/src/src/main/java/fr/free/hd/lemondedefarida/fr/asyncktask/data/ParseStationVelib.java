package fr.free.hd.lemondedefarida.fr.asyncktask.data;

import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import java.net.URL;
import java.util.ArrayList;

import parse_xml_station_velib.StationVelib;
import parse_xml_station_velib.StationsVelibParserXML;

/**
 * Created by marmotton on 18/02/2017.
 */

public class ParseStationVelib extends AsyncTask <URL, Void, ArrayList<StationVelib>>  {
    private final View view;

    public ParseStationVelib(View view) {
        this.view = view;

    }

    @Override
    protected ArrayList<StationVelib> doInBackground(URL... params) {

        ArrayList<StationVelib> stationsVelib = null;

        /**
         * Parsing du document XML
         */
        try {

            StationsVelibParserXML stationsParser = new StationsVelibParserXML(params[0],null,false);

            stationsVelib = stationsParser.getArrList();
            Log.i("Nb station velib : ", "" + stationsVelib.size());
            Log.i("stationsVelib",stationsVelib.toString());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return stationsVelib;
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
    }



    @Override
    protected void onPostExecute(ArrayList<StationVelib> stationsVelib) {
        super.onPostExecute(stationsVelib);

        String s="";
        for (StationVelib stationVelib : stationsVelib)
            s+=stationVelib.toString()+"\n";

        ((TextView)this.view).setText(s);

    }
}
