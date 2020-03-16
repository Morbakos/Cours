<?php


/**
 * Fonction échappant les caractères html dans $message
 * @param  string $message chaîne à échapper
 * @return string          chaîne échappée
 */
function e($message)
{
    return htmlspecialchars($message, ENT_QUOTES);
}

/**
 * Vérifie si l'utilisateur est autorisé à exécuter l'action
 * @param  string $message chaîne à échapper
 * @return string          chaîne échappée
 */
function autorisation($action)
{
    return isset($_SESSION['user'][$action]) && $_SESSION['user'][$action] != 0;
}

