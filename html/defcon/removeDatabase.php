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
			$hote = 'mysql:host=localhost;dbname=contrats;charset=utf8';
			$user = "contrat";
			$pass = "Iigs4*85";

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
	
	//==== Retourne si l'utilisateur est banni
	public function getBan() {

		$sql = "SELECT rang, banneduntil FROM user WHERE iduser = :id";
		$req = $this->bd->prepare($sql);
		$req->bindValue(':id', $_SESSION['id']);
		$req->execute();
		$result = $req->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function createUser($data)
	{
		$sql = "INSERT INTO user
		VALUES(
		NULL,
		:pseudo,
		:email,
		:password,
		:salt,
		1,
		:inscrit,
		:visit,
		NULL
	)";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':pseudo', $data["pseudo"]);
	$req->bindValue(':email', $data["email"]);
	$req->bindValue(':password', $data["pass"]);
	$req->bindValue(':salt', $data["salt"]);
	$req->bindValue(':inscrit', time());
	$req->bindValue(':visit', time());
	$req->execute();

	return $this->bd->lastInsertId();
}

public function createContrat($data)
{
	$sql = "INSERT INTO contrat
	VALUES(
	NULL,
	:demandeur,
	NULL,
	2,
	:nom,
	:jeu,
	:demande,
	:temps
)";
$req = $this->bd->prepare($sql);
$req->bindValue(':demandeur', $_SESSION["id"]);
$req->bindValue(':nom', $data["nom"]);
$req->bindValue(':jeu', $data["jeu"]);
$req->bindValue(':demande', $data["demande"]);
$req->bindValue(':temps', time());
$req->execute();
$this->updateRank($_SESSION["id"],2);
}

public function createGroup($data)
{
	$sql = "INSERT INTO groupe
	VALUES(
	NULL,
	:id,
	:nom,
	:membres
)";
$req = $this->bd->prepare($sql);
$req->bindValue(':id', $_SESSION['id']);
$req->bindValue(':nom', $data["nomgroupe"]);
$req->bindValue(':membres', $data["membresgroupe"]);
$req->execute();
}

public function getUserData($nom)
{
	$sql = "SELECT * FROM user WHERE lcase(pseudo) = lcase(:pseudo)";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':pseudo', $nom);
	$req->execute();
	$result = $req->fetch(PDO::FETCH_ASSOC);

	if($this->getGroup($result['iduser'])) {
		$result = array_merge($result, $this->getGroup($result['iduser']));
	}

	$result = array_merge($result, $this->getContratAccepte($result['iduser']));
	$result = array_merge($result, $this->getContratEnAttente($result['iduser']));
	$result = array_merge($result, $this->getContratRefuse($result['iduser']));

	return $result;
}

public function getUserList()
{
	$sql = "SELECT * FROM user";
	$req = $this->bd->prepare($sql);
	$req->execute();
	$result = $req->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

public function getContratAccepte($id)
{
	$sql = "SELECT count(*) AS nbreContratAccepte FROM contrat WHERE statut = 3 && demandeur = :id";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':id', $id);
	$req->execute();
	$result = $req->fetch(PDO::FETCH_ASSOC);
	return $result;
}

public function getContratEnAttente($id)
{
	$sql = "SELECT count(*) AS nbreContratEnAttente FROM contrat WHERE statut = 2 && demandeur = :id";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':id', $id);
	$req->execute();
	$result = $req->fetch(PDO::FETCH_ASSOC);
	return $result;
}

public function getContratRefuse($id)
{
	$sql = "SELECT count(*) AS nbreContratRefuse FROM contrat WHERE statut = 1 && demandeur = :id";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':id', $id);
	$req->execute();
	$result = $req->fetch(PDO::FETCH_ASSOC);
	return $result;
}

public function getRangList()
{
	$sql = "SELECT * FROM rang";
	$req = $this->bd->prepare($sql);
	$req->execute();
	$result = $req->fetchAll(PDO::FETCH_ASSOC);

	return $result;
}

public function getGroup($id)
{
	$sql = "SELECT * FROM groupe WHERE representant = :id";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':id', $id);
	$req->execute();
	$result = $req->fetch(PDO::FETCH_ASSOC);
	return $result;
}

public function getServerList()
{
	$sql = "SELECT stat.nomstatut, 
	cont.*,
	dem.pseudo AS 'pseudodem',
	dem.email AS 'emaildem',
	ref.pseudo AS 'pseudoref',
	ref.email AS 'emailref'
	FROM contrat cont 
	JOIN statut stat ON
	cont.statut = stat.idstatut
	LEFT JOIN user dem ON
	cont.demandeur = dem.iduser
	LEFT JOIN user ref ON
	cont.referent = ref.iduser";


	if($_SESSION['rang'] < 3)
	{
		$sql .=" WHERE
		cont.demandeur = :id";
	}

	$req = $this->bd->prepare($sql);
	if($_SESSION['rang'] < 3)
	{
		$req->bindValue(':id', $_SESSION['id']);
	}
	$req->execute();
	$result = $req->fetchAll(PDO::FETCH_ASSOC);

	return $result;
}

public function getContrat($id)
{
	try
	{
		$sql = "SELECT cont.*,
		stat.idstatut AS idstatut,
		stat.nomstatut,
		dem.pseudo AS 'pseudodem',
		dem.email AS 'emaildem',
		ref.pseudo AS 'pseudoref',
		ref.email AS 'emailref'
		FROM contrat cont
		JOIN statut stat ON
		cont.statut = stat.idstatut
		LEFT JOIN user dem ON
		cont.demandeur = dem.iduser
		LEFT JOIN user ref ON
		cont.referent = ref.iduser
		WHERE cont.idcontrat = :id";

		$req = $this->bd->prepare($sql);
		$req->bindValue(':id', $id);
		$req->execute();
		$result = $req->fetch(PDO::FETCH_ASSOC);

		if($this->getGroup($result['demandeur']))
		{
			$result = array_merge($result, $this->getGroup($result['iduser']));
		}


		return $result;
	}
	catch (Exception $e)
	{
		die('Erreur : '.$e->getCode().' '. $e->getMessage());	
	}
}

public function getAdmin()
{
	try
	{
		$sql = "SELECT *
		FROM user
		WHERE rang = 3";

		$req = $this->bd->prepare($sql);
		$req->execute();
		$result = $req->fetchAll(PDO::FETCH_ASSOC);

		return $result;
	}
	catch (Exception $e)
	{
		die('Erreur : '.$e->getCode().' '. $e->getMessage());	
	}
}

public function getStatut()
{
	$sql = "SELECT * FROM statut";

	$req = $this->bd->prepare($sql);
	$req->execute();
	$result = $req->fetchAll(PDO::FETCH_ASSOC);

	return $result;
}

public function getStatutById($id)
{
	$sql = "SELECT nomstatut FROM statut WHERE idstatut = :id";

	$req = $this->bd->prepare($sql);
	$req->bindValue(':id', $id);
	$req->execute();
	$result = $req->fetch(PDO::FETCH_ASSOC);

	return $result;
}

public function updateLastVisit($id)
{
	$sql = "UPDATE user SET lastvisit = :temps WHERE iduser = :id";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':temps', time());
	$req->bindValue(':id', $id);
	$req->execute();
}

public function updateRank($id, $rankId)
{
	$sql = "UPDATE user SET rang = (SELECT idrang FROM rang WHERE lcase(nomrang) = lcase(:rankid)) WHERE iduser = :id";
	$req = $this->bd->prepare($sql);
	$req->bindValue(':rankid', $rankId);
	$req->bindValue(':id', $id);
	$req->execute();
}

public function updateUserData($id, $data)
{
		/*$sql = "UPDATE user SET rang = (SELECT idrang FROM rang WHERE lcase(nomrang) = lcase(:rankid)) WHERE iduser = :id";
		$req = $this->bd->prepare($sql);
		$req->bindValue(':rankid', $rankId);
		$req->bindValue(':id', $id);
		$req->execute();*/
	}

	public function updateReferent($id, $referent)
	{
		try
		{
			$sql = "UPDATE contrat SET referent = (SELECT iduser FROM user WHERE lcase(pseudo) = lcase(:pseudo)) WHERE idcontrat = :id";
			$req = $this->bd->prepare($sql);
			$req->bindValue(':pseudo', $referent);
			$req->bindValue(':id', $id);
			$req->execute();	
		}
		catch (Exception $e)
		{
			die('Erreur : '.$e->getCode().' '. $e->getMessage());
		}
		
	}

	public function updateContratStatut($id, $statut)
	{
		$sql = "UPDATE contrat SET statut = :statut WHERE idcontrat = :id";
		$req = $this->bd->prepare($sql);
		$req->bindValue(':statut', $statut);
		$req->bindValue(':id', $id);
		$req->execute();
	}

	public function updateUserPassword($id,$password, $salt)
	{
		$sql = "UPDATE user SET password = :password WHERE iduser = :id";
		$req = $this->bd->prepare($sql);
		$req->bindValue(':password', cryptPassword($password,$salt));
		$req->bindValue(':id', $id);
		$req->execute();
	}

	public function updateUserBan($id,$ban)
	{
		$sql = "UPDATE user SET banneduntil = :ban WHERE iduser = :id";
		$req = $this->bd->prepare($sql);
		if($ban == null)
		{
			$req->bindValue(':ban', NULL);	
		}
		else
		{
			$req->bindValue(':ban', strtotime($ban));
		}
		$req->bindValue(':id', $id);
		$req->execute();
	}

	function userPermaBan($id)
	{
		$sql = "UPDATE user SET rang = 0 WHERE iduser = :id";
		$req = $this->bd->prepare($sql);
		$req->bindValue(':id', $id);
		$req->execute();
	}

	public function emailFree($email)
	{
		$sql = 'SELECT COUNT(*) AS nbr FROM user WHERE email =:mail';
		$query= $this->bd->prepare($sql);
		$query->bindValue(':mail',$email);
		$query->execute();
		$mail_free=($query->fetchColumn()==0)?1:0;

		return $mail_free;
	}

	public function groupFree($group)
	{
		$sql = 'SELECT COUNT(*) AS nbr FROM groupe WHERE lcase(nomgroupe) = lcase(:group)';
		$query= $this->bd->prepare($sql);
		$query->bindValue(':group',$group);
		$query->execute();
		$group_free=($query->fetchColumn()==0)?1:0;

		return $group_free;
	}

	public function lastInsertId()
	{
		return $this->bd->lastInsertId();
	}

	public function deleteUser($id)
	{
		$sql = "DELETE FROM user WHERE iduser = :id";
		$req = $this->bd->prepare($sql);
		$req->bindValue(':id', $id);
		$req->execute();
	}	


	public function getTicket($statut, $user=null)
	{
		try 
		{
			$sql = 'SELECT 
			tick.idTicket,
			tick.idAuteur,
			tick.idReferent,
			tick.titreTicket,
			tick.contenuTicket,
			tick.idPriorite,
			tick.statut,
			tick.creation,
			tick.modification,
			prio.labelPrio,
			prio.styleBadge
			FROM ticket tick 
			JOIN priorite prio
			ON tick.idPriorite = prio.idPriorite
			WHERE tick.statut = :stat
			';
			if( !is_null($user) )
			{
				$sql .= 'and  tick.idAuteur = :aut';
			}
			$query = $this->bd->prepare($sql);
			$query->bindValue(':stat',$statut);
			if( !is_null($user) )
			{
				$query->bindValue(':aut',$user);
			}

			$query->execute();
			$res = $query->fetchAll(PDO::FETCH_ASSOC);

			return $res;
		} catch (Exception $e) {
			die('Erreur : '.$e->getCode().' '. $e->getMessage());
		}
	}
	?>