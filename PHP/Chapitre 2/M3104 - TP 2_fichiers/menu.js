$(document).ready(function(){
    console.log("Document ready");
    menu = $('#menu_side');
    $('.open_menu').click(function(){
        menu.show();
    });

    $('.close_menu').click(function(){
        menu.hide();
    });



    // ===== Scroll to Top ==== 
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
            $('#return-to-top').fadeIn(200);    // Fade in the arrow
        } else {
            $('#return-to-top').fadeOut(200);   // Else fade out the arrow
        }
    });

    $('#return-to-top').click(function() {      // When arrow is clicked
        $('body,html').animate({
            scrollTop : 0                       // Scroll to top of body
        }, 500);
    });


    $(window).trigger("scroll");

});


// menu_side=document.getElementById("menu_side");

// function open_menu(){
//     menu_side.style.display = "block";
// }

// function close_menu(){
//     menu_side.style.display = "none";
// }

// closeM = document.getElementsByClassName("close_menu");
// for(var i= 0; i < closeM.length; i++){
//     closeM[i].addEventListener("click",close_menu);
// }

// openM = document.getElementsByClassName("open_menu");
// for(var i= 0; i < openM.length; i++){
//     openM[i].addEventListener("click",open_menu);
// }


