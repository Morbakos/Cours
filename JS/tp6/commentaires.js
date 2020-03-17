console.log("Ce programme JS vient d'être chargé");
$(document).ready(function()
{
	console.log("Le document est pret");
	$('#pages').change(function()
	{
		$.get('commentaires.php',
			  {debut: parseInt($('#pages').val()),
			   fin:   parseInt($('#pages').val())+4,
			  },
			  function(reponse)
			  {
				  console.log("Une réponse a été reçue du serveur");
				  $('#commentaires').html(reponse);
			  });
	});
	$('#pages').change();

	$('#commentaires').on('mousedown','.jaime-plus',function(e)
	{
		// éviter la sélection désagréable quand on clique
		e.preventDefault();
		var commentaire=$(this).parent().parent();
		var idCommentaire=parseInt(commentaire.attr('data-com-id'));
		$.post('commentaires-jaime.php',
			   {
				   id: idCommentaire,
				   sens: 1,
			   },
			   function(reponse)
			   {
				   console.log('Réponse recue:',reponse);
				   if(reponse==='ok')
				   {
					   var jaime=commentaire.find('.jaime');
					   var val=jaime.text()==='' ? 0 : parseInt(jaime.text());
					   jaime.text(val+1);
				   }
			   });
	});

	$('#commentaires').on('mousedown','.repondre',function(e)
	{
		// Seulement bouton souris gauche
		if(e.which!==1){return;}
		$('#nom').val('');
		$('#contenu').val('');
		$('#formulaire').show();
		$('#formulaire').offset({left: e.pageX,top: e.pageY});
	});

	$('#ajouter').click(function(e)
	{
		$.post('commentaires-ajouter.php',
			   {
				   nom: $('#nom').val(),
				   contenu: $('#contenu').val()
			   },
			   function(reponse)
			   {
				   $('#formulaire').hide();
				   $('#pages').change();
			   });
	});

});

