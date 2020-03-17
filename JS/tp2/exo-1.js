console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
	console.log("Le document est prêt");

	$('#nom').keyup(function (event) {
		console.log("Une touche a été appuyée dans nom");
		var texte = $("#nom").val();
		$('#erreur-nom').toggle(/[^a-zA-Z '-]/.test(texte));
		texte = texte.toLowerCase();
		texte = texte.replace(/[^a-z]/g, '-');
		$('#login').val(texte);
	});

	$('#email').keyup(function (event) {
		console.log("Une touche a été appuyée dans email");
		var email = $('#email').val();
		$('#erreur-email').toggle(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i.test(email) === false);
	});
	$('#mdp').keyup(function (event) {
		console.log("Une touche a été appuyée dans mdp");
		var mdp = $('#mdp').val();
		$('#erreur-mdp').toggle(mdp.length < 6);
		var confirm = $('#confirm').val();
		$('#erreur-confirm').toggle(mdp !== confirm);
	});
	$('#confirm').keyup(function (event) {
		console.log("Une touche a été appuyée dans confirm");
		var mdp = $('#mdp').val();
		var confirm = $('#confirm').val();
		$('#erreur-confirm').toggle(mdp !== confirm);
	});

	$('form').submit(function (event) {
		if ($('.erreur:visible').length !== 0) {
			event.preventDefault();
			alert('Merci de corriger les erreurs.');
		}
	});


	console.log("La mise en place est finie. En attente d'événements...");
});