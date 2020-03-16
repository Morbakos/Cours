<?php
require_once 'chat-fonctions.php';
chat_connexion_bdd();
chat_initialiser_bdd();
echo "La base de donnees a ete reinitialisee";
echo "<a href='chat.html'>Revenir</a>";