<?php

echo "<h1>Expression regulière</h1>";

function testER($er,$tab)
{
	foreach ($tab as $value) {
		if(preg_match($er, $value))
		{
			echo "<strong>$value</strong> satisfait l'expression régulière <strong>$er</strong> <br>";
		}
		else
		{
			echo "<strong>$value</strong> ne satisfait pas l'expression régulière <strong>$er</strong> <br>";
		}
	}
}

$tab =
[
	"atchoum",
	"php",
	"erer",
	"phosphorescent",
	"a847,kf,ef",
	"a847kf,ef"
];

testER("#[a-z][0-9]{3}[a-z]#", $tab);
?>