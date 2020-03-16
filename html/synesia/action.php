<?php
session_start();

require 'Database.php';

if (isset($_POST['action'])) {

    $db = Database::getBase();

    switch ($_POST['action']) {
        case 'getListeQuestions':
            $reponse = $db->getQuestionList();
            break;

        case 'createUser':
            $reponse = $db->createUser($_POST['nom'], $_POST['prenom']);
            if ($reponse != false) {
                $_SESSION['id'] = $reponse;
                $reponse = true;
            } else {
                $reponse = false;
            };

            break;

        case 'getDatePublicationResultats':
            $reponse = $db->getDatePublicationResultats();

            if ($reponse === false) {
                $reponse = "Date non définie";
            }

            break;

        case 'getListeQuestions':
            $reponse = $db->getQuestionList();
            break;

        default:
            $reponse = "Action inconnue";
            break;
    }
} else {
    $reponse = "Erreur dans l'action";
}

header('Content-type: application/json');
echo json_encode($reponse);
