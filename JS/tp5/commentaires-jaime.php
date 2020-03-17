<?php

session_start();
require_once 'commentaires-fonctions.php';

// Chercher tous les commentaires 
$commentaires=commentaires();

$id=(int)$_POST['id'];
$cle=commentaires_chercher_cle_de_id($commentaires,$id);
if($cle===false){echo 'erreur';exit(1);}
$commentaires[$cle]['jaime']++;

enregistrer_commentaires($commentaires);

echo 'ok';