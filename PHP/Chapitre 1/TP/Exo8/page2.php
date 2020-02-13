<?php
	$page = $_SERVER["PHP_SELF"];
	include("securite.php");
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Accueil</title>
	</head>
	
	<body>

		<h1> Contenu secret : page 2</h1>

		<p> La deuxième syllabe du mot de passe est gou </p>


		<nav>
			<p> Pour plus de contenu secret, n'hésitez à aller voir sur les autres pages : </p> 
			<ul>
				<li><a href="page1.php"> Page 1</a></li>
				<li><a href="page2.php"> Page 2</a></li>
				<li><a href="page3.php"> Page 3</a></li>
			</ul>
		</nav>
	</body>
</html>

<?php
	include 'deconnexion.php';
?>