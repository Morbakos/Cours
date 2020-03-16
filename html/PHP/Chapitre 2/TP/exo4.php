<?php
require("model.php");
$base = Model::getModel();

$res = $base->getLast();

$prix = "<ul>";
foreach ($res as $value) {
	$prix .= "<li>";
	$prix .= implode("</li><li>", $value);
	$prix .= "<br><br>";
}
$prix .= "</ul><br>";

?>

<!DOCTYPE html>
<html>
<head>
	<title>Prix nobels</title>
</head>
<body>
	<?php echo $prix; ?>
</body>
</html>