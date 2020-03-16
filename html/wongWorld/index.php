<?php
session_start();
// unset($_SESSION);
require_once 'database.php';
require_once 'functions.php';

//==== Vérification si une partie a déjà commencé ou non.
if (!isGameInit()) {
    gameInit();
} else {
    // echo "game started";
}

// var_dump($_SESSION['game']);

// echo "removed <br />";
echo "crime location";
var_dump($_SESSION['game']['crime']['location']);
echo "crime suspect";
var_dump($_SESSION['game']['crime']['suspect']);
echo "crime weapon";
var_dump($_SESSION['game']['crime']['weapon']);

echo "removed weapons";
var_dump($_SESSION['removed']['weapons']);
echo "removed suspects";
var_dump($_SESSION['removed']['suspects']);

echo "Available weapons";
var_dump($_SESSION['data']['available_weapon']);
echo "Available suspects";
var_dump($_SESSION['data']['available_suspects']);

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Wong World</title>
</head>
<body>
    
</body>
</html>