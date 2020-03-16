$(document).ready(function () {
    $(".bouton-affecter").click(function () {
        var personne = $(this).parent().parent().children().eq(0).text();
        var nom = $('#exampleModalLabel').find($('#personnel-en-affectation').text(personne));
        $('#exampleModal').modal();
    });

    $("#squad").change(function () {
        var team = $("#squad").val();
        emptySlots(team);   
    })

    $("#affecter").click(function() {
        var personne = $("#personnel-en-affectation").text();
        var role = $("#")
        affecter()
    });
});

function emptySlots(team) {
    team = "#"+team;
    var empty = [];
    var role;
    $(team).find('.nom').each(function (i) {
        // console.log($(this).text());
        if ($(this).text() === "") {
            // get du role
            role = $(this).parent().children().eq(1).text();
            empty.push(role);
        }
    }) 

    $('#slot>option').remove();
    $.each(empty, function(index, value) {
        $('#slot').append("<option value=\""+ value +"\"> " + value + "</option>");
    })
}

function affecter(personne,id_role) {
    
}