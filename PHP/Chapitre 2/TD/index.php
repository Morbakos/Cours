<?php

function liste($base)
{
	$sql = "Select nom,prenom,age from Personnage";
	$req = $base->prepare($sql);
	$req->execute();

	echo "<ul>";
	while ($ligne = $req->fetch(PDO::FETCH_ASSOC)) 
	{
		if(is_null($ligne["age"]))
		{
			$ligne["age"] = "Valeur non définie";	
		}

		echo "<li>". $ligne["nom"] ." ". $ligne["prenom"] ." ". $ligne["age"] ."</li>";
	}
	echo "</ul>";
}

function liste_famille($base,$famille)
{
	$sql = "Select nom,prenom,age from Personnage where nom = :nom";
	$req = $base->prepare($sql);
	$req->bindValue("nom",$famille);
	$req->execute();

	$res = $req->fetchAll(PDO::FETCH_ASSOC);

	foreach ($res as $value) {

		if(is_null($value["age"]))
		{
			$value["age"] = "Valeur non définie";	
		}

		echo "<li>". $value["nom"] ." ". $value["prenom"] ." ". $value["age"] ."</li>";
	}

}

try
{
	$hote = 'mysql:host=localhost;dbname=cours;charset=utf8';
	$user = "root";
	$pass = "";

	$base = new PDO($hote,$user,$pass);
	$base->query('SET NAMES utf8');
}
catch(Exception $e)
{
	die($e->getMessage());
}

echo "<h1>Exo 1</h1>";
liste($base);



echo "<h1>Exo 2</h1>";
liste_famille($base,"simpson");
?>