console.log("Ce programme JS vient d'être chargé");
$(document).ready(function()
{
	console.log("Le document est prêt");
	$('h1').click(function()
		{
			console.log("L'utilisateur a cliqué sur h1");
			$('p').text('Bonjour!');
			$('p').css('color','red');
		});
	console.log("La mise en place est finie. En attente d'événements...");
});