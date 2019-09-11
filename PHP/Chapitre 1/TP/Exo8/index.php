<?php 
	$password = "toto";

	if(!empty($_POST['password']))
	{
		if($_POST['password'] == $password)
		{
			echo "vous avez hack le serveur";
		}
	}
	else
	{
		?>

		<form method="POST" action="#">
			<input type="password" name="password">
			<input type="submit" value="hacker">
		</form>

		<?php
	}
	session_start();
	session_destroy();
?>