$(document).ready(function () {
    var nbQuestions = 0;

    $('#agree').click(function () {
        // Check si les infos ont été rentrée
        if ($('#nom-rp').val() !== "" && $('#prenom-rp').val() !== "") {
            // Create user in DB
            $.post(
                'action.php',
                {
                    action: 'createUser',
                    nom: $('#nom-rp').val(),
                    prenom: $('#prenom-rp').val(),
                },
                function (reponse) {
                    if (reponse) {
                        // Get liste questions
                        $.post(
                            'action.php',
                            {
                                action: 'getListeQuestions'
                            },
                            function (reponse) {
                                $(reponse).each(function (index) {
                                    var question = $("<div class='form-group'><span><h4 class='royalblue'>Question: </h4><p class='question'></p><textarea class='form-control reponse' rows='3'></textarea></span></div><br>");
                                    question.find('.question').text(reponse[index].question);
                                    question.find('.question').attr('question-id', index + 1);
                                    $('#questionnaire').append(question);
                                    nbQuestions += 1;
                                });
                                var bouton = $('<button id="submit" class="btn btn-info">Soumettre</button>');
                                $('#questionnaire').append(bouton);
                                addSubmitAction();
                                $('#presentation').hide();
                                $('#info').removeClass("alert-danger");
                                $('#info').html("");
                                $("#info").hide();
                                $('#questionnaire').show();
                            }
                        )
                    } else {
                        $('#info').addClass("alert-danger");
                        $('#info').html("Vous avez déjà participé !");
                        $("#info").show();
                    }
                }
            );
        } else {
            $('#info').addClass("alert-danger");
            $('#info').html("Vous devez remplir tout les champs !");
            $("#info").show();
        }

    });

    dateResultats();

});

function addSubmitAction() {
    $('#submit').click(function () {
        if (confirm("Es-tu sûr de vouloir soumettre des réponses ?")) {
            var rep = $('.reponse').val();

            if (rep.length != nbQuestions) {
                $('#info').addClass("alert-danger");
                $('#info').html("Vous devez répondre à toutes les questions !");
                $("#info").show();
            } else {
                // $.post(
                //     'action.php',
                //     {
                //         action: 'reponse',
                //         reponses: rep
                //     }
                // )
                $('#info').html("Réponses soumises !<br/> Les résultats seront publiés le <span class='date-publication frenchred'></span>");
                dateResultats();
                $('#questionnaire').hide();
                $('#info').show();
            }
        } else {

        }
    });
}

function dateResultats() {
    var res = $.post(
        'action.php',
        {
            action: 'getDatePublicationResultats'
        },
        function (reponse) {
            $('.date-publication').text(reponse);
        }
    );

    return res;
}