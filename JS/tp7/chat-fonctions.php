<?php

// Ouvrire la connexion avec la base de données 
// Si c'est la première fois, chat_initialiser_bdd() est aussi appelée.
function chat_connexion_bdd()
{
    global $db;
    //                                       database  user       password
    $db = new PDO('mysql:host=localhost;dbname=cours', 'root', '');
    // Si la table messages n'existe pas encore, appeler chat_initialiser_bdd()
    $result = $db->query("SELECT 1 FROM messages LIMIT 1");
    if ($result === false) {
        chat_initialiser_bdd();
    }
    // Afficher les messages d'erreur
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}

// Supprime l'ancienne table "messages" et la recrée à nouveau.
// Rempli la table avec quelques messages.
function chat_initialiser_bdd()
{
    global $db;
    // Supprimer la table messages si elle existe déjà
    $db->exec('DROP TABLE IF EXISTS messages');
    // Créer la table messages
    $db->exec('CREATE TABLE messages(
   id  SERIAL PRIMARY KEY,
   nom           TEXT      NOT NULL,
   texte         TEXT      NOT NULL
);');

    // Remplir la table messages avec 3 messages
    $req = $db->prepare("INSERT INTO messages(nom, texte) VALUES(:nom, :texte)");
    $req->execute(array('nom' => "Joe", 'texte' => 'Salut tout le monde.'));
    $req->execute(array('nom' => "Joe", 'texte' => "Ya quelqu'un ?"));
    $req->execute(array('nom' => "Leïla", 'texte' => 'Salut.'));
}
