<?php

session_start();
require_once 'chat-fonctions.php';
chat_connexion_bdd();

$idDernierMessage=(int)$_GET['idDernierMessage'];
$req=$db->prepare("SELECT * FROM messages WHERE id>? ORDER BY id ASC LIMIT 1");
$req->execute(array($idDernierMessage));
$message=$req->fetch(PDO::FETCH_ASSOC);

header('Content-Type: application/json; charset=utf-8');
echo json_encode($message);
