<?php

session_start();
require_once 'chat-fonctions.php';
chat_connexion_bdd();

if(!isset($_SESSION['nom'])){$_SESSION['nom']='anonyme';}
if(preg_match('/^#nom (.{1,15})$/',$_POST['texte'],$match)){$_SESSION['nom']=$match[1];}


$req=$db->prepare("INSERT INTO messages (nom, texte) VALUES (:nom,:texte)");
$req->execute(array('nom'=>$_SESSION['nom'],
		    'texte'=>$_POST['texte']));

echo "ok";
