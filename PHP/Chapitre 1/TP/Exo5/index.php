<?php

$joueurs = [ 
	['nom' => 'Mehwish', 'score' => 150],
	['nom' => 'Laurent', 'score' => 120], 
	['nom' => 'Ines', 'score' => 98], 
	['nom' => 'Sondes', 'score' => 153], 
	['nom' => 'Davide', 'score' => 118]
];


function meilleurs_joueurs($tab)
{
	$best = $tab[0];

	foreach ($tab as $value) {
		if($value['score'] > $best['score'])
		{
			$best = $value;
		}
	}

	return implode(" ", $best);
}


echo meilleurs_joueurs($joueurs);
?>