$(document).ready(function () {
    $('h1').click(function () {
        var prop = { left: 500, opacity: 0, "border-radius": 100, padding: 100 };
        $('h1').animate(prop, 1000, function () {
            $('h1').animate({ left: 0, opacity: 1, "border-radius": 0, padding: 20 }, 1000);
        });
    });

});