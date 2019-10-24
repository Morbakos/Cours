<?php

// Récupérer le nombre de prix nobels dans la base de données pour l'afficher à la place de TO FILL.
require("model.php");
$base = Model::getModel();

if(isset($_GET['id']) && $_GET['id'] > 0)
{
	$res = $base->getNobelPrizeInformations($_GET['id']);
	$message = "<ul><li>";
	$message .= implode("</li><li>", $res);
	$message .= "</li></ul>";
}
else
{
	$message = "Aucun prix nobel n'est référencé avec cet identifiant";
}

require "begin.html";
?>
<h1> List of the nobel prizes </h1>

<?php 
echo $message;
require "end.html"; ?>