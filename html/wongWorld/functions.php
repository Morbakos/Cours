<?php

function isGameInit()
{
    return isset($_SESSION['game']);
}

function gameInit()
{
    $base = Model::getModel();
    //==== Ajout des variables pour le jeu
    $loc = $base->getAllLocations(); // Récp du lieux

    //=== Traitement lieux
    $_SESSION['game']['crime']['location'] = $base->getRandomLocation();
    array_splice($loc, array_search($_SESSION['game']['crime']['location']['indice'], $loc), 1);
    $key = array_rand($loc);
    $_SESSION['game']['crime']['location']['findIn'] = $loc[$key]['indice'];
    array_splice($loc, $key, 1);

    //=== Traitement arme
    $_SESSION['game']['crime']['weapon'] = $base->getRandomWeapon();
    $key = array_rand($loc);
    $_SESSION['game']['crime']['weapon']['findIn'] = $loc[$key]['indice'];
    array_splice($loc, $key, 1);

    //=== Traitement suspect
    $_SESSION['game']['crime']['suspect'] = $base->getRandomSuspect();
    $key = array_rand($loc);
    $_SESSION['game']['crime']['suspect']['findIn'] = $loc[$key]['indice'];
    array_splice($loc, $key, 1);

    $weapons = $base->getAllWeapons();
    $suspects = $base->getAllSuspects();
    for ($i = 0; $i < 3; $i++) {
        $keyW = array_rand($suspects); // select a random weapon
        $keyL = array_rand($loc); // select a random loc

        $arrayName = [];
        $arrayName["indice"] = $suspects[$keyW]['indice'];
        $arrayName["findIn"] = $loc[$keyL]['indice'];

        array_splice($loc, $keyL, 1);
        array_splice($suspects, $keyW, 1);
        $_SESSION['data']['available_suspects'][] = $arrayName;
    }

    for ($i = 0; $i < 3; $i++) {
        $keyW = array_rand($weapons); // select a random weapon
        $keyL = array_rand($loc); // select a random loc

        $arrayName = [];
        $arrayName["indice"] = $weapons[$keyW]['indice'];
        $arrayName["findIn"] = $loc[$keyL]['indice'];

        array_splice($loc, $keyL, 1);
        array_splice($weapons, $keyW, 1);
        $_SESSION['data']['available_weapon'][] = $arrayName;
    }
    
    $_SESSION['removed']['weapons'] = $weapons;
    $_SESSION['removed']['suspects'] = $suspects;
}
