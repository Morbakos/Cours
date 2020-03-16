import sys
import os

# Generating the Content dir
os.mkdir("Content")
os.chdir("Content")
os.mkdir("img")
os.mkdir("js")
os.mkdir("css")
os.mkdir("fonts")
os.chdir("../")

# Generating the Models dir
os.mkdir("Models")

# Generating the Controllers dir
os.mkdir("Controllers")

# Generating the Views dir
os.mkdir("Views")

# Generating the Utils dir
os.mkdir("Utils")

fichier = open("index.php", "w")
routeur = """<?php 
require_once \"Utils/functions.php\";
require_once \"Models/Model.php\";
require_once \"Controllers/Controller.php\";

$controllers = ["", ""]; // Liste des controllers
$controller_default = ""; // Controller par defaut

if( isset($_GET['controller']) and in_array($_GET['controller'], $controllers) ){
    $nom_controller = $_GET['controller'];
} else {
    $nom_controller = $controller_default;
}

$nom_classe = 'Controller_'. $nom_controller;
$nom_fichier = 'Controllers/'. $nom_classe .'.php';
if(file_exists($nom_fichier)){
    require_once $nom_fichier;
    $controller = new $nom_classe();
}
else
 die('Error 404: Not found');
"""
fichier.write(routeur)
fichier.close()