<?php
session_start();

// Tableau de réponses aux questions
$reponses = [
	0 => [
		"enonce" => "Quel langage est utilisé pour la programmation Web côté serveur",
		"choix" => ["HTML",
		"PHP",
		"CSS"
	],
	"reponse" => "PHP"
],
[
	"enonce" => "Quel langage est utilisé pour apprendre l'algo",
	"choix" => ["C++",
	"BASH",
	"C"
],
"reponse" => "C++"
],
[
	"enonce" => "Quand sont les cours de développement mobile",
	"choix" => ["S2",
	"S3",
	"S4"
],
"reponse" => "S4"
]

];

function showForm($reponses)
{
	?>
	<form method="POST" action="">
		<?php
		$i = 1;
		$formulaire = "";
		shuffle($reponses);
		foreach ($reponses as $key => $value) {
		//var_dump($value);
			echo "Question $i: ".$value["enonce"]. "<br>";
			shuffle($value["choix"]);
			foreach ($value["choix"] as $v) {
				//$formulaire.= "<input type='radio' name='$i' value='$v'>$v<br>";
				echo "<input type='radio' name='$key' value='$v'>$v<br>";
			}
			$i++;
		}

		?>
		<input type="submit" name="">
	</form>
	<?php
}

//var_dump($_POST);


// Fonction de vérification des réponses utilisateur
function checkReponses($rep, $res)
{
	$score = 0;
	foreach ($rep as $key => $value) {
		if($value == $res[$key]["reponse"])
		{
			$score += 1;
		}
	}

	return $score;
}

// Vérification d'une réponse à toutes les questions
if( isset($_POST) && count($_POST) == count($reponses))
{
	// Stockage du résultat dans une variable de session
	$_SESSION['score'] = checkReponses($_POST, $reponses);

	// Vérification de la présence d'un cookie
	if(isset($_COOKIE['score']))
	{
		// Comparaison des scores
		if ($_SESSION['score'] > $_COOKIE['score']) {
			echo "<h1> Félicitations ! Vous avez réalisé le score de ".$_SESSION['score']." et battu votre ancien record, qui était de ".$_COOKIE['score'].".</h1>";
		}
		else
		{
			echo "<h1>Vous avez réalisé le score de ".$_SESSION['score'].". Votre meilleur score est de ".$_COOKIE['score'].".</h1>";
		}
	}
	else
	{
		echo "<h1>Félicitation, vous avez réalisé le score de ".$_SESSION['score'].".</h1>";
	}
	setcookie('score', $_SESSION['score'], time() + 3600*60*60, null, null, false, true);
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Questionnaire multiple !</title>
</head>
<body>

	
		
		<?php
		echo showForm($reponses);
		?>


</body>
</html>