<?php
require_once("../Exo6/todolist.php");
session_start();

if(!isset($_SESSION["tdl"]))
{
	$_SESSION["tdl"] = new TODO();
	if(isset($_COOKIE["tdl"]))
	{
		$_SESSION["tdl"]->set_representation($_COOKIE["tdl"]);
	}
}

if(isset($_GET["tache"]) && trim($_GET["tache"]) != "")
{
	$_SESSION["tdl"]->add_todo($_GET["tache"]);
}

if(isset($_GET["id"]))
{
	$_SESSION["tdl"]->remove_todo($_GET["id"]);
}

if(isset($_GET["action"]))
{
	if ($_GET["action"] == "save") {
		setcookie("tdl",  $_SESSION['tdl']->get_representation(), time() + 3600*60*60, null, null, false, true);
	}
	elseif ($_GET["action"] == "delete") {
		setcookie("tdl",  "", time() - 1);
	}
	elseif ($_GET["action"] == "deleteS") {
		unset($_SESSION["tdl"]);
	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>TODOList</title>
	<meta charset="utf-8">
</head>
<body>
	
	<h1>Ma TODOLIST</h1>
	<?php
		//echo $_SESSION["tdl"]->getHTML();
	//echo $_SESSION["tdl"]->get_representation();
	//$_SESSION["tdl"]->set_representation(" /// ");
	echo $_SESSION["tdl"]->getHTML();

	echo "<a href='index.php?action=save'>Sauvegarder la todolist</a><br><a href='index.php?action=delete'>Supprimer la todolist</a><br><a href='index.php?action=deleteS'>Supprimer la session_commit()</a>"
	?>

	<p>
		<form action="index.php">
			<input type="text" name="tache">
			<input type="submit" value="Ajouter une tâche">
		</form>
	</p>

</body>
</html>