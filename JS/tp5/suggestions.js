console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
	console.log("Le document est pret");
	$('#recherche').keyup(function (e) {
		console.log("Évènement keyup");
		$.get('suggestions.php',
			{ mot: $('#recherche').val() },
			function (reponse) {
				console.log("Réponse reçue du serveur: ", reponse);
				$('#suggestions').html(reponse);
				$('#suggestions').show();
			});
	});
	$('#suggestions').on('mousedown','li',function(e)
	{
		console.log("Évènement mousedown");
		$('#recherche').val($(this).text());
		$('#suggestions').hide();
	});
	console.log("La mise en place est finie. En attente d'événements...");
});