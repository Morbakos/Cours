console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
    console.log("Le document est pret");

    function ajouter_joueur(joueur) {
        var ligne = $('<tr><td class="nom"></td><td class="score"></td></tr>');
        ligne.find(".nom").text(joueur.nom);
        ligne.find(".score").text(joueur.score);
        $('#joueurs').append(ligne);
    }

    function calculer_total() {
        var somme = 0;
        $("tr").each(function () {
            var data = $(this).find('.score').text();
            somme = somme + parseInt(data);
        });

        return somme;
    }

    function calculer_mediane() {
        var scores = [];
        $('#joueurs tr').each(function () {
            var s = parseInt($(this).find('.score').text());
            scores.push(s);
        });
        scores.sort(function (a, b) { return a - b; });
        return scores[Math.floor(scores.length / 2)];
    }

    $('#ajout-bouton').click(function () {
        var joueur = {
            nom: $('#ajout-nom').val(),
            score: $('#ajout-score').val()
        };
        ajouter_joueur(joueur);
        $('#total').text(calculer_total);
        $('#mediane').text(calculer_mediane);
    });

    console.log("La mise en place est finie. En attente d'événements...");
});