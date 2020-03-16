<?php
// Une liste d'utilisateurs, juste pour l'exemple. 
// En pratique on chercherait dans une base de données.
$utilisateurs = array(
    'joe'   => array('nom' => 'Joe C.', 'score' => 34, 'age' => 22),
    'martin' => array('nom' => 'Martin', 'score' => 3, 'age' => 7),
    'karim' => array('nom' => 'Karim', 'score' => 45, 'age' => 19),
    'leila' => array('nom' => 'Leïla', 'score' => 49, 'age' => 23),
);

$uid=$_GET['uid'];
if(isset($utilisateurs[$uid]))
{
	$reponse=$utilisateurs[$uid];
	$reponse['ok']=true;
}
else
{
	$reponse=array('ok'=>false,
		  'message'=>"Cet utilisateur n'existe pas");
}

header('Content-type: application/json');
echo json_encode($reponse);
