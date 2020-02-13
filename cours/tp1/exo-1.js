$(document).ready(function () {
    console.log("Le document est prêt");
    $('input').click(function () {
        console.log("L'utilisateur a cliqué sur le bouton");
        if ($('input').val() === 'cacher') {
            $('img').hide();
            $('input').val('montrer');
        } else {
            $('img').show();
            $('input').val('cacher');
        }
    });
    console.log("La mise en place est finie. En attente d'événements...");
});