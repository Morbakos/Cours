console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
    console.log("Le document est pret");

    $('li').click(function (e) {
        $('#affichage').hide();
        var uid = $(this).attr('data-uid');
        $.get("utilisateurs.php",
            { uid: uid },
            function (reponse) {
                if (reponse.ok) {
                    console.log(reponse);
                    $('#nom').text(reponse.nom);
                    $('#age').text(reponse.age);
                    $('#score').text(reponse.score);
                    $('#affichage').show();
                    $('#affichage').offset({ left: e.pageX, top: e.pageY });
                } else {
                    alert("L'utilisateur saisi n'existe pas");
                };
            }
        );
    });

    // Fermer la boite si on clique n'importe où dans la page (sauf sur un utilisateur)
	$('html').mousedown(function(e)
	{
		console.log("Évènement mousedown sur html");
		if(!$(e.target).is('#utilisateurs li'))
		{
			$('#affichage').hide();
		}
	});

    console.log("La mise en place est finie. En attente d'événements...");
});