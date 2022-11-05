console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
    console.log("Le document est pret");
    $('#pages').change(function () {
        // console.log($('#pages').val());
        $.get('commentaires.php',
            {
                debut: parseInt($('#pages').val()),
                fin: parseInt($('#pages').val()) + 4
            },
            function (reponse) {
                $("#commentaires").html(reponse);
            }
        )
    });
    $('#pages').change();

    $('#commentaires').on('mousedown', '.jaime-plus', function (e) {
        // éviter la sélection désagréable quand on clique
        e.preventDefault();
        var commentaire = $(this).parent().parent();
        var idCommentaire = parseInt(commentaire.attr('data-com-id'));
        $.post('commentaires-jaime.php',
            {
                id: idCommentaire
            },
            function (reponse) {
                console.log('Réponse recue:', reponse);
                if (reponse === 'ok') {
                    var jaime = commentaire.find('.jaime');
                    var val = jaime.text() === '' ? 0 : parseInt(jaime.text());
                    jaime.text(val + 1);
                }
            });
    });
}); 