<?php

session_start();
setlocale(LC_TIME, "fr_FR.utf8");
header('Content-Type: text/html; charset=utf-8');
require_once 'commentaires-fonctions.php';

// Cas particulier: réinitialiser les commentaires
if(isset($_GET['reinitialiser']))
{
	reinitialiser_commentaires();
	die('Commentaires réinitialisés ok.');
}

// Chercher tous les commentaires et trier
$commentaires=commentaires();
$commentaires=trier_par_date($commentaires);

// Lire les données GET envoyées par le client
$debut=(int)$_GET['debut'];
$fin  =(int)$_GET['fin'  ];

// Construire le HTML à envoyer au client
$html='';
for($i=$debut;$i<=$fin;$i++)
{
	$com=$commentaires[$i];
	$html.=commentaire_rendu_en_html($com);
	$html.="\n";
}
// Envoyer le HTML au client
echo $html;