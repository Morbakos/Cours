<?php
session_start();

if(!isset($_SESSION['nombre']))
{
	$_SESSION['nombre'] = 1;
}

if(isset($_GET['nombre']))
{
	if (preg_match("#^-?\d*?\d+$#", $_GET['nombre']))
	{
		$_SESSION['nombre'] *= $_GET["nombre"];
	}
}

echo "<p>".$_SESSION['nombre']."</p>";

echo "L'URL est <a href=\"exo10.php?nombre=25\">exo10.php?nombre=25</a>";
?>

<form action="exo10.php">
	<input type="text" name="nombre">
	<input type="submit" value="Soumettre">
</form>
