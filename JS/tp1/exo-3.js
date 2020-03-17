$(document).ready(function()
{
	console.log("Le document est prêt");

	$('img').mousemove(function(event)
		{
			$('#affiche-x').text(event.pageX);
			$('#affiche-y').text(event.pageY);
		});

	$('img').click(function(event)
		{
			console.log("Click sur l'image");
			var splat=$('<img class="splat" alt="" src="https://moodle.iutv.univ-paris13.fr/img/js/splat.png"/>');
			splat.css('left', (event.pageX-16) + "px");
			splat.css('top', (event.pageY-16) + "px");
			$('body').append(splat);
		});

	console.log("La mise en place est finie. En attente d'événements...");
});