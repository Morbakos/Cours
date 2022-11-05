console.log("Ce programme JS vient d'être chargé");

document.addEventListener("DOMContentLoaded", function () {
    console.log("Le document est pret");
    var joueur = "X";

    document.getElementById('morpion').addEventListener('click', function (e) {
        if(event.target.textContent != '') { return; }
        event.target.textContent = joueur;
        joueur = (joueur === "X" ? 'O' : 'X');
    })
});