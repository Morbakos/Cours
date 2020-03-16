<?php

// Récupérer le nombre de prix nobels dans la base de données pour l'afficher à la place de TO FILL.
require("model.php");
$base = Model::getModel();

$res = $base->getLast();

$data = "<table>
<tbody>
<tr>
<th>Name</th>
<th>Category</th>
<th>Year</th>
</tr>";

foreach ($res as $value) {
	$data .= "<tr>";
	$data .= "<td><a href='informations.php?id=".$value['id']."'>".$value['name']."</a></td>";
	$data .= "<td>".$value['category']."</a></td>";
	$data .= "<td>".$value['year']."</td>";
	$data .= "</tr>";
}

$data.= "</tbody>
</table>";

require "begin.html";
?>
<h1> List of the nobel prizes </h1>


<?php
echo $data;
?>

<?php require "end.html"; ?>