<?php
require("model.php");
$base = Model::getModel();
$prix = $base->getAll();


?>

<!DOCTYPE html>
<html>
<head>
	<title>Prix nobels</title>
</head>
<body>
	<?php echo $prix["nbpn"] ?>
</body>
</html>