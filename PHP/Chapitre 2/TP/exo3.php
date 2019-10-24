<?php
require("model.php");
$base = Model::getModel();

$res = $base->getIntel(12);

$prix = "<ul><li>";
$prix .= implode("</li><li>", $res);
$prix .= "</li></ul>";

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