<?php 
session_start();
$password = "toto";

function showForm()
{
	?>
	<form action="<?php echo $_SERVER["PHP_SELF"] ?>" method="POST">
		<input type="password" name="password">
		<input type="submit" value="se connecter">
	</form>
	<?php
}

if ( !isset($_SESSION['connecte']) ) {
	if ( isset($_POST['password']) && $_POST['password'] == $password )
	{
		$_SESSION['connecte'] = true;
	}
}
elseif(isset($_GET['action']) && $_GET['action'] == "deconnexion")
{
	unset($_SESSION['connecte']);
}



if( !isset($_SESSION['connecte']) )
{
	showForm();
	exit();
}
?>