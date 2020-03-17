console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
    console.log("Le document est pret");
    var joueur = "X";

    $('#morpion td').mousedown(function () {
        console.log("Le bouton de la souris a été enfoncé.");
        if ($(this).text() !== '') { return; } // Vérification d'erreur
        $(this).text(joueur); // Ajour du signe du joueur
        joueur = (joueur === "X" ? 'O' : 'X'); // 
    });

    $('button').click(function () {
        console.log("nettoyage");
        $('#morpion td').text('');
    });
    console.log("La mise en place est finie. En attente d'événements...");
});
