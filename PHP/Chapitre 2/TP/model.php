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
	public static function getModel() {

		//==== On crée une nouvelle instance de la classe si elle n'existe pas, sinon on retourne celle existante
		if (is_null(self::$instance)) self::$instance = new Model(); 
		return self::$instance;
	}

	public function getAll()
	{
		try
		{
			$sql = "SELECT COUNT(*) FROM nobels";
			$req = $this->bd->prepare($sql);
			$req->execute();
			$res = $req->fetch(PDO::FETCH_NUM);

			return $res[0];
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}

	public function getNobelPrizeInformations($id)
	{
		if(empty($id))
		{
			return false;
		}

		try
		{
			$sql = "SELECT * FROM nobels WHERE id = :id";
			$req = $this->bd->prepare($sql);
			$req->bindValue("id", $id);
			$req->execute();
			$res = $req->fetch(PDO::FETCH_ASSOC);

			return $res;
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());	
		}
	}

	public function getLast()
	{
		try
		{
			$sql = "SELECT * FROM nobels ORDER BY id desc LIMIT 25";
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

	public function getCategories()
	{
		try
		{
			$sql = "SELECT * FROM categories";
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

	public function addNobelPrize($infos)
	{
		$sql = "INSERT INTO nobels('year','category','name','birthdate','birthplace','county', 'motivation') VALUES (:annee, :cat, :nom, :daten, :pays, :motiv)";
		$req = $this->bd->prepare($sql);
		$req->bindValue('annee', $infos['year']);
		$req->bindValue('cat', $infos['category']);
		$req->bindValue('nom', $infos['name']);
		$req->bindValue('daten', $infos['birthdate']);
		$req->bindValue('pays', $infos['county']);
		$req->bindValue('motiv', $infos['motivation']);
	}
}
?>