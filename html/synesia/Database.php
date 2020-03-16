<?php

//==== Classe qui vas gérer l'intéraction avec la BD
class Database 
{
	private $bd;
	private static $instance = null;

		//==== Méthode qui créé un objet Database
	private function __construct()
	{
		try 
		{
			$hote = 'mysql:host=localhost;dbname=synesia;charset=utf8';
			// $user = "contrat";
			// $pass = "Iigs4*85";
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
		if (is_null(self::$instance)) self::$instance = new Database(); 
		return self::$instance;
	}
	
	public function getQuestionList()
	{
		try 
		{
			$sql = 'SELECT idQuestion, question FROM question';
			$query = $this->bd->prepare($sql);
			$query->execute();
			$res = $query->fetchAll(PDO::FETCH_ASSOC);
			return $res;
		} catch (Exception $e) {
			die('Erreur : '.$e->getCode().' '. $e->getMessage());
		}
	}

	public function getDatePublicationResultats()
	{
		try 
		{
			$sql = 'SELECT dateRes FROM config';
			$query = $this->bd->prepare($sql);
			$query->execute();
			$res = $query->fetch(PDO::FETCH_ASSOC);
			return $res;
		} catch (Exception $e) {
			die('Erreur : '.$e->getCode().' '. $e->getMessage());
		}
	}

	public function createUser($nom, $prenom)
	{
		try 
		{
			$sql = 'INSERT INTO user VALUES(null, :nom, :prenom, 0)';
			$query = $this->bd->prepare($sql);
			$query->bindValue(':nom', $nom);
			$query->bindValue(':prenom', $prenom);
			$query->execute();
			return $this->lastInsertId();
		} catch (Exception $e) {
			// die('Erreur : '.$e->getCode().' '. $e->getMessage());
			return false;
		}
	}

	public function lastInsertId()
	{
		return $this->bd->lastInsertId();
	}
}
?>