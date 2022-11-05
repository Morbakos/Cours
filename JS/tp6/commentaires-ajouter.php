<?php

session_start();
require_once 'commentaires-fonctions.php';

// Chercher tous les commentaires 
$commentaires=commentaires();

$nom    =$_POST['nom'];
$contenu=$_POST['contenu'];
$maxId=0;
foreach($commentaires as $commentaire){$maxId=max($maxId,$commentaire['id']);}
$commentaire=array('id'=>$maxId+1,
			  'nom'=>$nom,
			  'date'=>time(),
			  'contenu'=>$contenu,
			  'jaime'=>0);
$commentaires[]=$commentaire;
enregistrer_commentaires($commentaires);

echo 'ok';