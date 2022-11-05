console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
	console.log("Le document est pret");
	var idDernierMessage = 0;

	// Chercher le message suivant à partir du serveur
	window.setInterval(function () {
		$.get('chat-message-suivant.php',
			{ idDernierMessage: idDernierMessage },
			function (reponse) {
				console.log('reponse:', reponse);
				if (reponse === false) { return; }
				var ligne = $('<li><span class="nom"></span><span class="texte"></span></li>');
				ligne.find('.nom').text(reponse.nom + " > ");
				ligne.find('.texte').text(reponse.texte);
				$('#chat').append(ligne);
				$("#chat").scrollTop($("#chat")[0].scrollHeight);
				idDernierMessage = reponse.id;
			});
	}
		, 200);

	// Quand la touche entrée est appuyée, envoyer un message au serveur
	$('#message').keypress(function (e) {
		console.log("Une touche a été appuyée:", e.keyCode);
		if (e.keyCode !== 13) { return; }
		var message = $('#message').val();
		$.post('chat-ajouter.php',
			{ texte: message },
			function (reponse) {
				$('#message').val('');
			});
	});	

});
