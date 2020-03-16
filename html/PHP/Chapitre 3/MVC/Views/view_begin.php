<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<title> Nobel Prizes</title>
	<link rel="stylesheet" href="Content/css/nobel.css" />
</head>

<body>
	<nav>
		<ul>
			<?php if (!isset($_SESSION['user']['idUser'])) : ?>
				<li><a href="?controller=user"> Login</a></li>
				<li><a href="?controller=user&action=form_register"> Register</a></li>
			<?php else : ?>
				<li><a href="?controller=user&action=logout"> Logout</a></li>
			<?php endif ?>
			<li><a href="?controller=list&action=last"> Last Nobel Prizes</a></li>
			<li><a href="?controller=set&action=form_add"> Add a Nobel prize</a></li>
			<li><a href="?controller=list&action=pagination"> All the Nobel Prizes</a></li>
			<li><a href="?controller=search"> Search among te Nobel prizes</a></li>
		</ul>
	</nav>

	<header>
		<h1><a href="?"> Nobel Prizes </a></h1>
		<!-- <h2><?= $_SESSION['user']['pseudo'] ?></h2> -->

	</header>

	<main>