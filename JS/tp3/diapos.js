console.log("Ce programme JS vient d'être chargé");
$(document).ready(function () {
    console.log("Le document est pret");
    var nbImg = $('img').length;
    // function diapo(next) {
    //     var pos = parseInt($('#dia-images').css('left'));
    //     // Décallage gauche si false
    //     if (!next) {
    //         pos += 600;
    //     } else {
    //         pos -= 600;
    //     }
    //     console.log(pos);
    //     if (pos < -600 * 3 || pos > 0) { return; }
    //     $('#dia-images').animate({ left: pos }, 200);
    // }

    // $('#dia-gauche').click(function () {
    //     diapo(false);
    // });
    // $('#dia-droite').click(function () {
    //     diapo(true);
    // });

    var diapo = setInterval(function () {
        var position = parseInt($('#dia-images').css('left'));
        if (position % 600 !== 0) { return; }
        position -= 600;
        if (position < -600 * nbImg) { position = 0; }
        $('#dia-images').animate({ left: position });
    }, 2000);

    $('#dia-fleches span').mousedown(function () {
        clearInterval(diapo);
        var position = parseInt($('#dia-images').css('left'));
        if (position % 600 !== 0) { return; }
        var flecheDroite = $(this).attr('id') === 'dia-droite';
        position += (flecheDroite ? -600 : 600);
        if (position < -600 * nbImg || position > 0) { return; }
        $('#dia-images').animate({ left: position });
    });

    // CORRECTION
    // $('#dia-fleches span').mousedown(function () {
    //     var position = parseInt($('#dia-images').css('left'));
    //     if (position % 600 !== 0) { return; }
    //     var flecheDroite = $(this).attr('id') === 'dia-droite';
    //     position += (flecheDroite ? -600 : 600);
    //     if (position < -600 * 3 || position > 0) { return; }
    //     $('#dia-images').animate({ left: position });
    // });

    console.log("La mise en place est finie. En attente d'événements...");
});