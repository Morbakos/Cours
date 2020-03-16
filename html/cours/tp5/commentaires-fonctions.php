<?php

// Racourci pour éviter les problèmes d'affichage des caractères HTML (<>&'") et les failles de sécurité XSS
function e($texte)
{
    return htmlspecialchars($texte, ENT_QUOTES, 'UTF-8');
}

// Trier par date déscendante
function trier_par_date($c)
{
    usort($c, 's');
    return $c;
}

function s($a, $b)
{
    return $a['date'] == $b['date'] ? 0 : (($a['date'] < $b['date']) ? 1 : -1);
}

// La liste des commentaires. 
// Les commentaires sont stockés dans la variable de SESSION.
// C'est pratique pour le TP, ca nous évite d'avoir besoin d'une base de données.
// Bien évidemment, ca ne marche pas du tout pour une vraie application.
function commentaires()
{
    if (!isset($_SESSION['commentaires'])) {
        $_SESSION['commentaires'] = liste_initiale_commentaires();
    }
    return $_SESSION['commentaires'];
}

function reinitialiser_commentaires()
{
    $_SESSION['commentaires'] = liste_initiale_commentaires();
}

// Enregister la liste des commentaires. 
// Les commentaires sont stockés dans la variable de SESSION.
// C'est pratique pour le TP, ca nous évite d'avoir besoin d'une base de données.
// Bien évidemment, ca ne marche pas du tout pour une vraie application.
function enregistrer_commentaires($commentaires)
{
    $_SESSION['commentaires'] = $commentaires;
}

function liste_initiale_commentaires()
{
    return
        array(
            array('id' => 101, 'nom' => 'Karim', 'date' => 1425283400, 'contenu' => "J'aime beaucoup ces cours de JavaScript !", 'jaime' => 5),
            array('id' => 102, 'nom' => 'Joe', 'date' => 1425283700, 'contenu' => "Ah bon ? Moi je préfère les tartes aux fraises.", 'jaime' => -1),
            array('id' => 103, 'nom' => 'Karim', 'date' => 1425284060, 'contenu' => "T'es pas sur Marmiton là...", 'jaime' => -4),
            array('id' => 104, 'nom' => 'Driss', 'date' => 1425284080, 'contenu' => "T'as compris quelque chose à Ajax ?", 'jaime' => 0),
            array('id' => 105, 'nom' => 'Lian', 'date' => 1425284120, 'contenu' => "Ouais... c'est facile avec jQuery.", 'jaime' => 2),
            array('id' => 106, 'nom' => 'Naïma', 'date' => 1425284320, 'contenu' => "Ces trucs de client / serveur ca m'embrouille.", 'jaime' => 0),
            array('id' => 107, 'nom' => 'Lian', 'date' => 1425284520, 'contenu' => "C'est simple... le client c'est le JS ... et le serveur le PHP.", 'jaime' => 1),
            array('id' => 108, 'nom' => 'Naïma', 'date' => 1425284620, 'contenu' => "Oui, mais le HTML, il est où ?", 'jaime' => 0),
            array('id' => 109, 'nom' => 'Driss', 'date' => 1425284820, 'contenu' => "Dans la base de données, évidemment.", 'jaime' => -8),
            array('id' => 110, 'nom' => 'Karim', 'date' => 1425284920, 'contenu' => "Mais non! T'as rien compris.", 'jaime' => -1),
            array('id' => 111, 'nom' => 'Lian', 'date' => 1425285120, 'contenu' => "Le HTML est envoyé par le serveur au navigateur.", 'jaime' => 1),
            array('id' => 112, 'nom' => 'Driss', 'date' => 1425285180, 'contenu' => "Elle sert à quoi alors la BDD ?", 'jaime' => 0),
            array('id' => 113, 'nom' => 'Karim', 'date' => 1425285120, 'contenu' => "Le PHP prend les infos de la BDD, fait du HTML avec et l'envoie au navigateur.", 'jaime' => 5),
            array('id' => 114, 'nom' => 'Joe', 'date' => 1425285220, 'contenu' => "J'ai faim.", 'jaime' => -5),
            array('id' => 115, 'nom' => 'Naïma', 'date' => 1425285320, 'contenu' => "C'est bientot la pause ?", 'jaime' => 2),
            array('id' => 116, 'nom' => 'Joe', 'date' => 1425285420, 'contenu' => "Encore 5 minutes...", 'jaime' => 0),
            array('id' => 117, 'nom' => 'Lian', 'date' => 1425285620, 'contenu' => "Vous pensez qu'à manger.", 'jaime' => 0),
            array('id' => 118, 'nom' => 'Karim', 'date' => 1425285720, 'contenu' => "C'est la pause :-)", 'jaime' => 10),
            array('id' => 119, 'nom' => 'Lian', 'date' => 1425285750, 'contenu' => "Moi je reste travailler.", 'jaime' => -4),
            array('id' => 120, 'nom' => 'Naïma', 'date' => 1425285770, 'contenu' => "Chacun son truc...", 'jaime' => 0),
        );
}

// Renvoyer l'indice dans le tableau du commentaire ayant l'id $id
function commentaires_chercher_cle_de_id($commentaires, $id)
{
    foreach ($commentaires as $k => $c) {
        if ($c['id'] == $id) {
            return $k;
        }
    }
    return false;
}

// Retourne le HTML nécessaire pour afficher un seul commentaire.
function commentaire_rendu_en_html($com)
{
    return
        '<div class="commentaire" data-com-id="' . $com['id'] . '">' . "\n" .
        '    <div class="entete-com">' . "\n" .
        '        <span class="nom" >' . e($com['nom']) . '</span>' . "\n" .
        '        <span class="date">' . strftime('%e %b, %H:%M', $com['date']) . '</span></div>' . "\n" .
        '    <div class="contenu-com">' . e($com['contenu']) . '</div>' . "\n" .
        '    <div class="pied-com">' . "\n" .
        '        <span class="repondre">Répondre</span> ' . "\n" .
        '        <span class="jaime">' . ($com['jaime'] !== 0 ? $com['jaime'] : '') . '</span> ' . "\n" .
        '        <span class="jaime-plus"></span> ' . "\n" .
        '        <span class="jaime-moins"></span> ' . "\n" .
        '    </div>' . "\n" .
        '</div>' . "\n";
}
