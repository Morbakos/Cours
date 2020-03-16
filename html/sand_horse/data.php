<?php

require_once 'liaison_database.php';

$base = Base::getBase();

$data = array(
    'Commandant' => array(
        'fusil' => 'M4A1',
        'accessoiresFusil' => array(
            'viseur' => 'aimpoint',
            'canon' => 'silencieux'
        ),
        'chargeursFusil' => array(
            'Stanag1' => 4,
            'Stanag 2' => 8
        ),
        'pistolet' => 'Glock 17G4',
        'accessoiresPistolet' => array('viseur' => 'aimpoint', 'canon' => 'silencieux'),
        'equipement' => array(
            'casque' => 'casque lourd',
            'gilet' => 'gilete lourd',
            'sacADos' => 'sac a dos'
        ),
        'materiel' => array(
            'chargeurFusil' => '',
            'chargeurPistolet' => '',
            'grenades' => array(
                'frag' => 2,
                'flash' => 2,
                'fumi' => array(
                    'blanche' => 4,
                    'rouge' => 5
                )
            )
        )
    ),

    'Capitaine' => array(
        'fusil' => 'M4A1',
        'accessoiresFusil' => array(
            'viseur' => 'aimpoint',
            'canon' => 'silencieux'
        ),
        'chargeursFusil' => array(
            'Stanag1' => 4,
            'Stanag 2' => 8
        ),
        'pistolet' => 'Glock 17G4',
        'accessoiresPistolet' => array('viseur' => 'aimpoint', 'canon' => 'silencieux'),
        'equipement' => array(
            'casque' => 'casque lourd',
            'gilet' => 'gilete lourd',
            'sacADos' => 'sac a dos'
        ),
        'materiel' => array(
            'chargeurFusil' => '',
            'chargeurPistolet' => '',
            'grenades' => array(
                'frag' => 2,
                'flash' => 2,
                'fumi' => array(
                    'blanche' => 4,
                    'rouge' => 5
                )
            )
        )
    ),

    'MedicChef' => array(
        'fusil' => 'M4A1',
        'accessoiresFusil' => array(
            'viseur' => 'aimpoint',
            'canon' => 'silencieux'
        ),
        'chargeursFusil' => array(
            'Stanag1' => 4,
            'Stanag 2' => 8
        ),
        'pistolet' => 'Glock 17G4',
        'accessoiresPistolet' => array('viseur' => 'aimpoint', 'canon' => 'silencieux'),
        'equipement' => array(
            'casque' => 'casque lourd',
            'gilet' => 'gilete lourd',
            'sacADos' => 'sac a dos'
        ),
        'materiel' => array(
            'chargeurFusil' => '',
            'chargeurPistolet' => '',
            'grenades' => array(
                'frag' => 2,
                'flash' => 2,
                'fumi' => array(
                    'blanche' => 4,
                    'rouge' => 5
                )
            )
        )
    ),

    'OperateurRadio' => array(
        'fusil' => 'M4A1',
        'accessoiresFusil' => array(
            'viseur' => 'aimpoint',
            'canon' => 'silencieux'
        ),
        'chargeursFusil' => array(
            'Stanag1' => 4,
            'Stanag 2' => 8
        ),
        'pistolet' => 'Glock 17G4',
        'accessoiresPistolet' => array('viseur' => 'aimpoint', 'canon' => 'silencieux'),
        'equipement' => array(
            'casque' => 'casque lourd',
            'gilet' => 'gilete lourd',
            'sacADos' => 'sac a dos'
        ),
        'materiel' => array(
            'chargeurFusil' => '',
            'chargeurPistolet' => '',
            'grenades' => array(
                'frag' => 2,
                'flash' => 2,
                'fumi' => array(
                    'blanche' => 4,
                    'rouge' => 5
                )
            )
        )
    )
);


// $reponses = $base->getStuff("toto");

// $data = array();
// foreach ($reponses as $key => $value) {
//     $data[] = $value['stuff'];
// }

// // var_dump($reponse);
// header('Content-type: application/json');
$reponses = $base->getStuff("toto");
// echo json_encode($reponse);
var_dump($reponses);
// $base->setStuff($data);

// foreach ($data as $key => $value) {
//     $base->setStuff($value);
// }