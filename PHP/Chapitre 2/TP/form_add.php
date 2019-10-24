<?php

// Récupérer le nombre de prix nobels dans la base de données pour l'afficher à la place de TO FILL.
require("model.php");
$base = Model::getModel();
$res = $base->getCategories();

$categories = "";

foreach ($res as $value) {
	$categories .= "<label><input type='radio' name='category' value='".$value["category"]."'>".$value["category"]."</label>";
}

require "begin.html";
?>
<h1> List of the nobel prizes </h1>

<form action="add.php">
	<p>
		<label>
			Name
			<input type="text" name="name">
		</label>
	</p>

	<p>
		<label>
			Year
			<input type="text" name="year">
		</label>
	</p>

	<p>
		<label>
			Birth date
			<input type="text" name="birthdate">
		</label>
	</p>

	<p>
		<label>
			Birth place
			<input type="text" name="birthplace">
		</label>
	</p>

	<p>
		<label>
			Country
			<input type="text" name="name">
		</label>
	</p>

	<p>
		<?php echo $categories ?>
	</p>

	<textarea name="Motivation" cols="70" rows="10"></textarea>

	<p>
		<label>
			<input type="submit" value="add to database">
		</label>
	</p>

</form>


<?php require "end.html"; ?>