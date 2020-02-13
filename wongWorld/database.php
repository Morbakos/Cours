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
			$hote = 'mysql:host=localhost;dbname=wongworld;charset=utf8';
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
	public static function getModel() {

		//==== On crée une nouvelle instance de la classe si elle n'existe pas, sinon on retourne celle existante
		if (is_null(self::$instance)) self::$instance = new Model(); 
		return self::$instance;
	}

	public function getRandomWeapon()
	{
		try
		{
            //==== Récupération des armes
			$sql = "SELECT indice FROM indice WHERE categorie = 'arme' ORDER BY RAND() LIMIT 1";
			$req = $this->bd->prepare($sql);
			$req->execute();
            $res = $req->fetch(PDO::FETCH_ASSOC);
			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
    }
    
    public function getRandomSuspect()
	{
		try
		{
            //==== Récupération des suspect
			$sql = "SELECT indice FROM indice WHERE categorie = 'suspect' ORDER BY RAND() LIMIT 1";
			$req = $this->bd->prepare($sql);
			$req->execute();
            $res = $req->fetch(PDO::FETCH_ASSOC);
			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
    }
    
    public function getRandomLocation()
	{
		try
		{
            //==== Récupération des location
			$sql = "SELECT indice FROM indice WHERE categorie = 'piece' ORDER BY RAND() LIMIT 1";
			$req = $this->bd->prepare($sql);
			$req->execute();
            $res = $req->fetch(PDO::FETCH_ASSOC);
			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}

	public function getAllLocations()
	{
		try
		{
			$sql = "SELECT * FROM indice WHERE categorie = 'piece' ";
			$req = $this->bd->prepare($sql);
			$req->execute();
            $res = $req->fetchAll(PDO::FETCH_ASSOC);
			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}

	public function getAllWeapons()
	{
		try
		{
			$sql = "SELECT * FROM indice WHERE categorie = 'arme' ";
			$req = $this->bd->prepare($sql);
			$req->execute();
            $res = $req->fetchAll(PDO::FETCH_ASSOC);
			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}

	public function getAllSuspects()
	{
		try
		{
			$sql = "SELECT * FROM indice WHERE categorie = 'suspect' ";
			$req = $this->bd->prepare($sql);
			$req->execute();
            $res = $req->fetchAll(PDO::FETCH_ASSOC);
			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}
}
?>