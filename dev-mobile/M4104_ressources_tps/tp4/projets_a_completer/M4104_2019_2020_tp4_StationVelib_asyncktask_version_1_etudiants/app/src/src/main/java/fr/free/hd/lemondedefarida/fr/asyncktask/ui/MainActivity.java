package fr.free.hd.lemondedefarida.fr.asyncktask.ui;

import android.app.ProgressDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.net.MalformedURLException;
import java.net.URL;

import fr.free.hd.lemondedefarida.fr.asyncktask.R;
import fr.free.hd.lemondedefarida.fr.asyncktask.data.ParseStationVelib;

public class MainActivity extends AppCompatActivity {
    private TextView tvSationsVelib;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /**
         * Désérialisation des ressources
         */
        Button btStart = (Button) this.findViewById(R.id.bt_lancer);
        this.tvSationsVelib = (TextView) this.findViewById(R.id.tv_stations_velib);


        /**
         * Mise en place des écouteurs
         */
        btStart.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                ParseStationVelib parseXMLSationsVelib =
                        new ParseStationVelib(tvSationsVelib);
                try {
                    parseXMLSationsVelib.execute(new URL("http://www.velib.paris.fr/service/carto"));
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                }
            }
        });


    }
}
