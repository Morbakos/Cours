<?php
	include("date.php");
	$date = Date::makeDate("22/05/2020");
	echo $date->display();
	echo "<br>".$date->isLeap();

	$toto = array();
	$toto[] = "test";

	var_dump($toto);
?>