<?php
session_start();

// Tableau de réponses aux questions
$reponses = [
	1 => "PHP", "C++", "S4"
];


// Fonction de vérification des réponses utilisateur
function checkReponses($rep, $res)
{
	$score = 0;
	foreach ($rep as $key => $value) {
		if($value == $res[$key])
		{
			$score += 1;
		}
	}

	return $score;
}

// Vérification d'une réponse à toutes les questions
if( isset($_POST['1']) && isset($_POST['2']) && isset($_POST['3']) )
{
	// Stockage du résultat dans une variable de session
	$_SESSION['score'] = checkReponses($_POST, $reponses);

	// Vérification de la présence d'un cookie
	if(isset($_COOKIE['score']))
	{
		// Comparaison des scores
		if ($_SESSION['score'] > $_COOKIE['score']) {
			echo "<h1> Félicitations ! Vous avez réalisé le score de ".$_SESSION['score']." et battu votre ancien record, qui était de ".$_COOKIE['score'].".</h1>";
			setcookie('score', $_SESSION['score'], time() + 3600*60*60);
		}
		else
		{
			echo "<h1>Vous avez réalisé le score de ".$_SESSION['score'].". Votre meilleur score est de ".$_COOKIE['score'].".</h1>";
			setcookie('score', $_SESSION['score'], time() + 3600*60*60);
		}
	}
	else
	{
		echo "<h1>Félicitation, vous avez réalisé le score de ".$_SESSION['score'].".</h1>";
		setcookie('score', $_SESSION['score'], time() + 3600*60*60);
	}
}


?>

<!DOCTYPE html>
<html>
<head>
	<title>Questionnaire multiple !</title>
</head>
<body>

	<form method="POST" action="">
		
		<p>Quel langage est utilisé pour la programmation Web côté serveur</p>
		<input type="radio" name="1" value="HTML">HTML<br>
		<input type="radio" name="1" value="PHP">PHP<br>
		<input type="radio" name="1" value="CSS">CSS<br>

		<p>Quel langage est utilisé pour apprendre l'algo</p>
		<input type="radio" name="2" value="C++">C++<br>
		<input type="radio" name="2" value="BASH">Bash<br>
		<input type="radio" name="2" value="C">C<br>

		<p>Quand sont les cours de développement mobile</p>
		<input type="radio" name="3" value="S2">S2<br>
		<input type="radio" name="3" value="S3">S3<br>
		<input type="radio" name="3" value="S4">S4<br>		

		<input type="submit" value="Envoyer les réponses">

	</form>

</body>
</html>