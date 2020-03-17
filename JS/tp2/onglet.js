console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
    $('#onglets-menu li').mousedown(function () {
        
        $('.menu-actif').removeClass('menu-actif');
        $(this).addClass('menu-actif');

        var num = $('#onglets-menu li').index(this);
        $('.contenu-actif').removeClass('contenu-actif');
        $('#onglets-contenu div').eq(num).addClass('contenu-actif');
    });
    console.log("La mise en place est finie. En attente d'événements...");
});