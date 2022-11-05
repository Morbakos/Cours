$(document).ready(function()
{
	console.log("Le document est prêt");
	$('img').mousemove(function(event)
		{
			$('#affiche-x').text(event.pageX);
			$('#affiche-y').text(event.pageY);
		});
	console.log("La mise en place est finie. En attente d'événements...");
});