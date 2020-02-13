<?php

//==== Classe qui vas gérer l'intéraction avec la BD
class Model 
{
	private $bd;
	private static $instance = null;

		//==== Méthode qui créé un objet Model
	private function __construct()
	{
		try 
		{
			$hote = 'mysql:host=localhost;dbname=cours;charset=utf8';
			$user = "root";
			$pass = "";

			$this->bd = new PDO($hote, $user, $pass);
			$this->bd->query('SET NAMES utf8');
			$this->bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->bd->setAttribute(PDO::ATTR_EMULATE_PREPARES, FALSE);
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());
		}
	}

	//==== Retourne un objet de classe Base
	public static function getBase() {

		//==== On crée une nouvelle instance de la classe si elle n'existe pas, sinon on retourne celle existante
		if (is_null(self::$instance)) self::$instance = new Model(); 
		return self::$instance;
	}

	public function getAll()
	{
		try
		{
			
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}
}
?>