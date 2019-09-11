<h1 style="color: red;">Ancienne version du TP</h1>

<?php

if( isset($_POST['calcul']) && preg_match("#^(\d+)([+/*-])(\d+)$#", $_POST['calcul'], $match) )
{
	echo "Résultat de ".$_POST['calcul']." : ";
	
	switch ($match[2]) {
		case '+':
		echo $match[1] + $match[3];
		break;

		case '-':
		echo $match[1] - $match[3];
		break;

		case '*':
		echo $match[1] * $match[3];
		break;

		case '/':
		echo $match[1] / $match[3];
		break;

		default:
		echo "Une erreur s'est produite.";
		break;
	}
}
else
{
	echo "Erreur, veuillez refaire votre calcul";
	echo "<hr>";
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Calculatrice</title>
</head>
<body>

	<form action="" method="POST">
		<input type="text" name="calcul" placeholder="Saisissez l'opération">
		<input type="submit" value="Calculer">
	</form>

</body>
</html>