<?php
session_start();
include 'Database.php';
include 'fonctions.php';
include 'constantes.php';
isset($_SESSION['id']) ? '' : header("Location: index.php");

//== Génération de l'objet base de données
$base = Database::getBase();

//== Vérification des bans
$ban = $base->getBan();

if($ban != null)
{
	if(time() <= $ban['banneduntil'])
	{
		erreur(USER_BANNED_UNTIL);
	}
}
elseif($ban['rang'] == 0)
{
	erreur(USER_BAN);
}

$data = $base->getUserData($_SESSION['pseudo']);

$_SESSION['id'] = $data['iduser'];
$_SESSION['pseudo'] = $data['pseudo'];
$_SESSION['email'] = $data['email'];
$_SESSION['rang'] = $data['rang'];

?>
<!DOCTYPE html>
<html>
<head>
	<title>Portail serveur</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<link rel="stylesheet" type="text/css" href="style-red.css">

	<script type="text/javascript">
		function enableAdmin()
		{
			var fields = document.getElementsByTagName("input");
			for (var i = 0; i < fields.length; i++) {

				if(fields[i].disabled)
				{
					fields[i].disabled = false;
				}
				else
				{
					fields[i].disabled = true;	
				}
			}

			fields = document.getElementsByTagName("select");
			for (var i = 0; i < fields.length; i++) {

				if(fields[i].disabled)
				{
					fields[i].disabled = false;
				}
				else
				{
					fields[i].disabled = true;	
				}
			}

			fields = document.getElementsByTagName("textarea");
			for (var i = 0; i < fields.length; i++) {

				if(fields[i].disabled)
				{
					fields[i].disabled = false;
				}
				else
				{
					fields[i].disabled = true;	
				}
			}

			fields = document.getElementById("updateReferent");
			console.log(fields);

			if(fields.style.display == "none")
			{
				fields.style.display = "block";
			}
			else
			{
				fields.style.display = "none";	
			}
			
		}

		function renewPassword(id)
		{
			var pseudo = document.getElementById("pseudo"+id);
			console.log(pseudo.textContent);

			if(window.confirm("Souhaitez vous vraiment générer un nouveau mot de passe pour " + pseudo.textContent))
			{
				var newpassword = regeneratePassword();
				alert("Le nouveau mot de passe de " + pseudo.textContent + " est " + newpassword);
				document.getElementById("newpassword" + id).setAttribute('value', newpassword);
				console.log(document.getElementById("newpassword" + id).value);
				document.getElementById("newpasswordform" + id).submit();
			}

		}

		function regeneratePassword() 
		{
			return  Math.random().toString(36).substring(2, 10) + Math.random().toString(36).substring(2, 10);
		}

		function notDoneYet()
		{
			alert("Cette action n'est pas possible pour le moment.\nGavin travaille dessus.");
		}

		function showTempBanForm(id)
		{
			var fields = document.getElementById("tempBan" + id);
			console.log(fields.style.display);
			if(fields.style.display == "none")
			{
				fields.style.display = "block";
			}
			else
			{
				fields.style.display = "none";
			}

		}

		function deleteBan(id)
		{
			var pseudo = document.getElementById("pseudo"+id);
			var banneduntil = document.getElementById("banneduntil"+id);

			if(window.confirm("Souhaitez vous vraiment lever le bannissement de " + pseudo.textContent))
			{
				document.getElementById("removeBan" + id).setAttribute('value', "true");
				document.getElementById("tempBanForm" + id).submit();
			}

		}

		function confirmBan(id)
		{
			var pseudo = document.getElementById("pseudo"+id);

			if(window.confirm("Souhaitez vous vraiment bannir DEFINITIVEMENT " + pseudo.textContent))
			{
				document.getElementById("ban" + id).setAttribute('value', "true");
				document.getElementById("banForm" + id).submit();
			}
		}

		function confirmDelete(id)
		{
			var pseudo = document.getElementById("pseudo"+id);

			if(window.confirm("Souhaitez vous vraiment supprimer DEFINITIVEMENT le compte de " + pseudo.textContent))
			{
				document.getElementById("delete" + id).setAttribute('value', "true");
				document.getElementById("deleteUserForm" + id).submit();
			}
		}

		function changeStatut(id)
		{
			document.getElementById("newStatutValue").setAttribute('value', id);
			document.getElementById("updateStatutForm").submit();
		}

	</script>

</head>
<body>

	<!-- ** NAVBAR ** -->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div class="mx-auto order-0">
			<a class="navbar-brand mx-auto" href="/"><strong><span style="color: #de2916;">DEFCON-Community</span></strong></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="portail.php?action=user" style="color: #de2916;"><?php echo $_SESSION['pseudo']; ?></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/">Accueil</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="portail.php">Demandes de serveur</a>
				</li>
				<?php 
				if($_SESSION['rang'] == 3)
				{
					?>
					<li class="nav-item">
						<a class="nav-link" href="portail.php?action=admin">Pannel admin</a>
					</li>
					<?php
				}
				?>
				<li class="nav-item">
					<a class="nav-link" href="index.php?action=logout">Se déconnecter</a>
				</li>
			</ul>
		</div>
	</nav>

	<div id="listBody">

		<?php
		$action = isset($_GET['action']) ? $_GET['action'] : 'list';

		switch ($action) {
			case 'list':

			echo "<button type='button' class='btn btn-primary'><a href='portail.php?action=create'>Demander un serveur</a></button>";

			echo '<div class="table-responsive"><table class="table table-striped table-sm"><tr>
			<th class="align-middle text-center" style="color: #de2916;">Nom du projet</th>
			<th class="align-middle text-center" style="color: #de2916;">Jeu du projet</th>
			<th class="align-middle text-center" style="color: #de2916;">Horodatage</th>
			<th class="align-middle text-center" style="color: #de2916;">Demandeur</th>
			<th class="align-middle text-center" style="color: #de2916;">Référent</th>
			<th class="align-middle text-center" style="color: #de2916;">Statut</th>
			<th class="align-middle text-center" style="color: #de2916;">Options</th>
			</tr>';
			faireTableau($base->getServerList());
			echo "</table></div>";

			break;

			case 'details':

			//==== Vérification de la sécurité des entrées
			$_GET = secureInputs($_GET);

			//==== Vérification que le contrat est défini
			if (!isset($_GET['contrat'])) {
				erreur(CONTRAT_UNDEFINED);
			}

			if(isset($_POST['newStatut']))
			{
				$_POST = secureInputs($_POST);
				if($_POST['newStatut'])
				{
					$base->updateContratStatut($_GET['contrat'],$_POST['newStatut']);
				}
				echo '<div class="alert alert-success" role="alert">
				Action effectuée !
				</div>';
			}

			if(isset($_POST['referent']))
			{
				$_POST = secureInputs($_POST);
				$base->updateReferent($_GET['contrat'],$_POST['referent']);
				
				echo '<div class="alert alert-success" role="alert">
				Action effectuée !
				</div>';
			}

			$data = $base->getContrat($_GET['contrat']);
			$liste = $base->getStatutById($data['idstatut']);
			$referent = $base->getAdmin();

			//==== Vérification que l'utilisateur a l'autorisation d'afficher le contrat
			if (!verifAuth($data['demandeur'])) {
				erreur(ACTION_NOT_ALLOWED);
			}

			?>


			<div class="text-center">

				<!-- Partie demandeur -->
				<div class="form-group">
					<label for="nomdemandeur">Nom du demandeur </label>
					<input type="text" name="nomdemandeur" value="<?php echo $data['pseudodem'] ?>" disabled><br>

					<label for="emaildemandeur">Email du demandeur </label>
					<input type="text" name="emaildemandeur" value="<?php echo $data['emaildem'] ?>" disabled>
				</div>

				<div class="form-group">
					<label for="nomdemandeur">Nom du référent </label>
					<input type="text" name="nomdemandeur" value="<?php echo $data['pseudoref'] ?>" disabled><br>

					<label for="emaildemandeur">Email du référent </label>
					<input type="text" name="emaildemandeur" value="<?php echo $data['emailref'] ?>" disabled>
					<div id="updateReferent" style="display: none;">
						<form id="updateReferent" method="POST" action="#">
							<label for="setReferent">Définir le référent</label>
							<select name="referent" disabled>
								<?php
								foreach ($referent as $value) {
									echo '<option value="'.$value["pseudo"].'">'.$value["pseudo"].'</option>';
								}
								?>
							</select>
							<input type="submit" class="btn btn-primary" value="Mettre a jour" disabled>
						</form>
					</div>
				</div>
				

				<!-- Partie groupe -->

				<!-- Uniquement si membre d'un groupe -->

				<?php
				if(isset($data['idgroupe']))
				{
					?>

					<div class="form-group">
						<label for="nomgroupe">Nom du groupe </label>
						<input type="text" name="nomgroupe" value="<?php echo $data['nomgroupe'] ?>" disabled><br>

						<label for="nombremembresgroupe">Nombre de membres </label>
						<input type="text" name="nombremembresgroupe" value="<?php echo $data['membres'] ?>" disabled>
					</div>

					<?php
				}
				?>

				<!-- Partie serveur 1/2 -->
				<div class="form-group">
					<label for="nomprojet">Nom du projet </label>
					<input type="text" name="nomprojet" value="<?php echo $data['nom'] ?>" disabled><br>

					<label for="jeuprojet">Jeu du projet </label>
					<input type="text" name="jeuprojet" value="<?php echo $data['jeu'] ?>" disabled><br>

					<label for="datedemandeprojet">Date de la demande </label>
					<input type="text" name="datedemandeprojet" value="<?php echo date('d-m-Y',$data['temps']) ?>" disabled><br>


					<?php echo '<form action="portail.php?action=details&contrat='.$_GET['contrat'].'" method="POST" id="updateStatutForm">'; ?>


					<label for="statutprojet">Statut </label>
					<input type="text" name="datedemandeprojet" value="<?php echo $liste['nomstatut'] ?>" disabled><br>

					<input type="hidden" name="newStatut" value="" id="newStatutValue">

					<button type='button' class='btn btn-primary' onclick="changeStatut(3)">Approuver</a></button>
					<button type='button' class='btn btn-warning' onclick="changeStatut(2)">En attente</a></button>
					<button type='button' class='btn btn-danger' onclick="changeStatut(1)">Refuser</a></button>
				</form>
			</div>		

			<!-- Partie serveur 2/2 -->
			<div class="form-group">
				<label for="demandeprojet">Détails de la demande </label><br>
				<textarea name="demandeprojet" style="height: 500px; width: 800px;" disabled><?php echo $data['demande'] ?></textarea>
			</div>				


			<?php

			if ($_SESSION['rang'] >= 3) {
				echo "<button type='button' class='btn btn-link' onclick='enableAdmin()'>Administration</button>";
			}
			echo "<button type='button' class='btn btn-link'><a href='portail.php?action=visualisation&contrat=".$_GET["contrat"]."'>Voir le contrat</button>";
			?>

		</div>

		<?php
		break;

		case 'admin':

			//==== Vérification qu'il s'agit d'un admin
		if ($_SESSION['rang'] < 3) {
			erreur(ACTION_NOT_ALLOWED);
		}

		if(isset($_POST['newpassword']))
		{
			$_POST = secureInputs($_POST);
			$base->updateUserPassword($_POST['updateid'],$_POST['newpassword'],$_POST['salt']);
			echo '<div class="alert alert-success" role="alert">
			Action effectuée !
			</div>';
		}

		if(isset($_POST['banUntil']))
		{
			$_POST = secureInputs($_POST);
			$base->updateUserBan($_POST['updateid'],$_POST['banUntil']);
			echo '<div class="alert alert-success" role="alert">
			Action effectuée !
			</div>';
		}

		if(isset($_POST['removeBan']))
		{
			$_POST = secureInputs($_POST);
			if($_POST['removeBan'])
			{
				$base->updateUserBan($_POST['updateid'],NULL);
			}
			echo '<div class="alert alert-success" role="alert">
			Action effectuée !
			</div>';
		}

		if(isset($_POST['enableBan']))
		{
			$_POST = secureInputs($_POST);
			if($_POST['enableBan'])
			{
				$base->userPermaBan($_POST['updateid']);
			}
			echo '<div class="alert alert-success" role="alert">
			Action effectuée !
			</div>';
		}

		if(isset($_POST['deleteUser']))
		{
			$_POST = secureInputs($_POST);
			if($_POST['deleteUser'])
			{
				$base->deleteUser($_POST['updateid']);
			}
			echo '<div class="alert alert-success" role="alert">
			Action effectuée !
			</div>';
		}

		if(isset($_POST['changeRank']))
		{
			$_POST = secureInputs($_POST);
			$base->updateRank($_POST['updateid'], $_POST['rankList']);
			echo '<div class="alert alert-success" role="alert">
			Action effectuée !
			</div>';
		}

		echo '<div class="table-responsive"><table class="table table-striped table-sm"><tr style="color: #de2916;">
		<th class="align-middle text-center" >#</th>
		<th class="align-middle text-center" >Pseudo</th>
		<th class="align-middle text-center" >Email</th>
		<th class="align-middle text-center" >Mot de passe</th>
		<th class="align-middle text-center" >Rang</th>
		<th class="align-middle text-center" >Inscrit</th>
		<th class="align-middle text-center" >Dernière connexion</th>
		<th class="align-middle text-center" >Banni jusqu\'à</th>
		<th class="align-middle text-center" >Options</th>
		</tr>';

		$rang = $base->getRangList();
		$users = $base->getUserList();
		faireTableauUser($users,$rang);

		?>

		<?php

		break;

		case 'user':

		erreur();
		if(!empty($_POST['password']))
		{
			$i = 0;

			//==== Déclaration des variables d'erreurs
			$mdp_erreur1 = null;
			$mdp_erreur2= null;

			$pass = $_POST['password'];
			$confirm = $_POST['confirmPassword'];

			//==== Check de la longueur
			if(strlen($pass) < 10)
			{
				$mdp_erreur1 = "Votre mot de passe ne respecte pas la restriction de charactère. Il doit contenir au moins 10 charactères";
				$i++;
			}

			//==== Check de la confirmation								
			if ($pass != $confirm || empty($confirm))
			{
				$mdp_erreur2 = "Votre mot de passe et votre confirmation diffèrent, ou sont vides";
				$i++;
			}

			if($i == 0)
			{
				echo "upate";
			}
			else
			{
				echo "<p>".$mdp_erreur1."</p>";
				echo "<p>".$mdp_erreur2."</p>";
			}
		}

		$data = $base->getUserData($_SESSION['pseudo']);
		?>

		<form action="portail.php?action=user" method="post">
			<div class="form-group">
				<label for="pseudo">Pseudo :</label><input type="text" name="pseudo" value="<?php echo $_SESSION['pseudo'] ?>">
				<br><label for="email">Email :</label><input type="text" name="email" value="<?php echo $_SESSION['email'] ?>">	
			</div>

			<div class="form-group">
				<!--<label for="password">Changer de mot de passe :</label><input type="password" name="password">
					<br><label for="confirmPassword">Confirmer :</label><input type="password" name="confirmPassword">-->	
				</div>

				<div class="form-group">
					<label for="inscrit">Date d'inscription :</label><input type="text" name="inscrit" value="<?php echo date('d-m-Y',$data['inscrit']) ?>" disabled>	
				</div>

				<div class="form-group">
					<label for="pseudo">Contrat acceptés :</label><input type="text" name="pseudo" value="<?php echo $data['nbreContratAccepte'] ?>" disabled>
					<br><label for="pseudo">Contrat en attente :</label><input type="text" name="pseudo" value="<?php echo $data['nbreContratEnAttente'] ?>" disabled>
					<br><label for="pseudo">Contrat refusés :</label><input type="text" name="pseudo" value="<?php echo $data['nbreContratRefuse'] ?>" disabled>
				</div>

				<div class="form-group">
					<label for="password">Nouveau mot de passe :</label><input type="password" name="password">
					<br><label for="confirmPassword">Confirmer :</label><input type="password" name="confirmPassword">	
				</div>

				<input type="submit" class="btn btn-primary" value="Mettre à jour mes informations">

			</form>

			<?php
			break;

			case 'create':

			if(isset($_POST['nomprojet']))
			{
				//==== Sécurisation des données saisies
				$_POST = secureInputs($_POST);

				$i = 0;

				//==== Déclaration des variables d'erreurs
				$erreur_nom_projet1 = null;
				$erreur_nom_projet2 = null;
				$erreur_jeu_projet = null;
				$erreur_demande_projet1 = null;
				$erreur_demande_projet2 = null;

				//==== simplification des variables
				$nomprojet = $_POST['nomprojet'];
				$nomjeu = $_POST['nomjeu'];
				$demande = $_POST['demandeprojet'];				

				//==== Vérification du nom du projet
				if(strlen($nomprojet) < 5 || strlen($nomprojet) > 25)
				{
					$erreur_nom_projet1 = "Le nom de votre projet est trop court ou trop long. Il doit contenir entre 5 et 25 caractères";
					$i++;
				}

				if(empty($nomprojet))
				{
					$erreur_nom_projet2 = "Le nom de votre projet est vide";
					$i++;
				}

				//==== Vérification du nom du jeu
				if(empty($nomjeu))
				{
					$erreur_jeu_projet = "Vous n'avez pas saisi de jeu pour votre projet";
					$i++;
				}

				//==== Vérification de la demande
				if(strlen($demande) < 30)
				{
					$erreur_nom_projet1 = "Vous n'avez pas suffisament détailler votre demande.";
					$i++;
				}

				if(empty($demande))
				{
					$erreur_nom_projet2 = "Vous n'avez pas rempli de demande.";
					$i++;
				}


				if($i==0)
				{
					$data = array();
					$data["nom"] = $nomprojet;
					$data["jeu"] = $nomjeu;
					$data["demande"] = $demande;
					$res = $base->createContrat($data);

					header("Location: portail.php?action=list");

				}
				else
				{
					echo'<div class="text-center" style="text-align: left;"><h1>Demande interrompue</h1>';
					echo'<p>Une ou plusieurs erreurs se sont produites pendant l\'incription</p>';
					echo'<p>Nous avons comptabilisé '.$i.' erreur(s) dans votre formulaire</p>';
					echo'<p>'.$erreur_nom_projet1.'</p>';
					echo'<p>'.$erreur_nom_projet2.'</p>';
					echo'<p>'.$erreur_jeu_projet.'</p>';
					echo'<p>'.$erreur_demande_projet1.'</p>';
					echo'<p>'.$erreur_demande_projet2.'</p>';

					echo'<p><a href="portail.php?action=create">Cliquez ici pour recommencer</a></p></div>';
				}


			}
			else
			{
				if(isset($_GET['data']) && $_GET['data'] == "fail")
				{
					echo '<div class="alert alert-danger" role="alert">
					Une erreur s\'est produite. Merci de réessayer plus tard.
					</div>';
				}
				?>
				<div class="text-center">
					<form action="portail.php?action=create" method="post" id="createServer">

						<div class="form-group">
							<label for="nomprojet">Nom de votre projet</label>
							<input type="text" id="nomprojet" name="nomprojet"><br>

							<label for="nomjeu">Nom du jeu de votre projet</label>
							<input type="text" id="nomjeu" name="nomjeu">
						</div>

						<div class="form-group">
							<label for="demandeprojet" style="text-align: center;">Détails de la demande </label><br>
							<textarea name="demandeprojet" id="demandeprojet" style="height: 500px; width: 800px;"></textarea>
							<p><i>Merci de donner un maximum de détails. Plus votre présentation est détaillée, plus vous aurez de chances de convaincre un membre DEFCON de vous convoquer pour un entretien</i></p>
						</div>

						<input type="submit" class="btn btn-primary" value="Soumettre la demande">
					</form>
				</div>

				<?php
			}
			break;

			case 'visualisation':

			if (!isset($_GET['contrat'])) {
				erreur(CONTRAT_UNDEFINED);
			}

			$_GET = secureInputs($_GET);

			$data = $base->getContrat($_GET['contrat']);

			if(!$data)
			{
				erreur(CONTRAT_NOT_FOUND);
			}
		//==== Vérification que l'utilisateur a l'autorisation d'afficher le contrat
			if (!verifAuth($data['demandeur'])) {
				erreur(ACTION_NOT_ALLOWED);
			}

			if ($data['statut'] !=3) {
				echo '<h1 style="color: #de2916; margin-bottom: 1.5rem; text-align: center;">ATTENTION: CECI N\'EST PAS UN CONTRAT OFFICIEL. IL NE PEUT PAS ÊTRE UTILISE COMME REFERENCE.</h1>';
				if ($data['statut'] ==1) {
					echo '<div class="alert alert-danger" style="text-align: center;" role="alert">
					Cette demande a été refusée !
					</div>';
				}
				else
				{
					echo '<div class="alert alert-warning" style="text-align: center;" role="alert">
					Cette demande est en cours d\'examen !
					</div>';
				}
			} else {
				echo '<div class="alert alert-success" style="text-align: center;" role="alert">
				Cette demande a été approuvée !
				</div>';
			}
			?>

			<h2 style="color: #de2916; text-align: center;"><strong>Contrat DEFCON-Community</strong></h2>

			<h4 style="color: #de2916; text-decoration: underline; margin-left: 2.5rem;">Entre les soussignés</h4>
			<p>Entre d’une part le groupe <strong>DEFCON-Community</strong>, représenté par <strong><?php echo $data['pseudoref'] ?></strong></p>
			<p>
				Et d'autre part
				<?php
				if(isset($data['nomgroupe']))
				{
					?>
					le groupe <strong><?php echo $data['nomgroupe'] ?></strong>, représenté par <strong><?php echo $data['pseudodem'] ?></strong>
					<?php
				} 
				else
				{
					?>
					<strong><?php echo $data['pseudodem'] ?></strong>.
					<?php
				}
				?>
			</p>
			<p>Il a été convenu ce qui suit:</p>

			<h4 style="color: #de2916; text-decoration: underline; margin-left: 2.5rem;">I. Objet du contrat</h4>
			<p>Le présent contrat est destiné à régir, de la manière la plus complète possible, la relation conclue entre le groupe <strong>DEFCON-Community</strong> et <strong><?php echo $data['pseudodem'] ?></strong></p>

			<h4 style="color: #de2916; text-decoration: underline; margin-left: 2.5rem;">II. Engagement de DEFCON-Community</h4>
			<p>Le groupe <strong>DEFCON-Community</strong> s’engage à héberger sur ses plateformes <strong><?php echo $data['pseudodem'] ?></strong>.</p> 
			<p>Sont inclus les services suivants:</p>
			<ul style="margin-left: 2.5rem;">
				<li>Mise à disposition d’une machine</li>	
				<li>Mise à disposition de canaux ainsi que de groupes de permissions TeamSpeak</li>
				<li>Mise à disposition d’un forum administré par le groupe <strong>DEFCON-Community</strong> et sous-administré par <strong><?php echo $data['pseudodem'] ?></strong></li>
			</ul>

			<h4 style="color: #de2916; text-decoration: underline; margin-left: 2.5rem;">III. Engagement de <?php echo $data['pseudodem'] ?></h4>
			<p><strong><?php echo $data['pseudodem'] ?></strong> s’engage à réaliser et administrer le projet <strong><?php echo $data['nom'] ?></strong> dans le respect des conditions définies par le règlement de <strong>DEFCON-Community</strong>.</p>
			<p><strong><?php echo $data['pseudodem'] ?></strong> s’engage également à fournir des accès administrateurs aux gérant, assistant-gérant et administrateur du groupe <strong>DEFCON-Community</strong>.</p>

			<h4 style="color: #de2916; text-decoration: underline; margin-left: 2.5rem;">IV. Litige</h4>
			<p>Les deux parties s’engagent à régler à l’amiable tout différend éventuel qui pourrait résulter du présent contrat.</p>

			<h4 style="color: #de2916; text-decoration: underline; margin-left: 2.5rem;">V. Résiliation</h4>
			<p>Les deux parties peuvent mettre un terme au présent contrat suivant un préavis écrite de résiliation.</p>
			<p>Dans le cas où la partie souhaitant rompre le contrat est le groupe <strong>DEFCON-Community</strong>, le préavis sera transmis au(x) responsable(s) du projet.</p>
			<p>Dans le cas où la partie souhaitant rompre le contrat est <strong><?php echo $data['pseudodem'] ?></strong>, le préavis doit être transmis à un gérant ou un administrateur du groupe <strong>DEFCON-Community</strong>.</p>
			<p>En cas de résiliation de contrat, le groupe <strong>DEFCON-Community</strong> conservera l’intégralité de la partie originale du projet ainsi que tous les droits d’exploitation, tandis que <strong><?php echo $data['pseudodem'] ?></strong> pourra, si souhaité, conserver une copie du projet.</p>		

			<?php
			echo "<button type='button' class='btn btn-link'><a href='portail.php?action=details&contrat=".$_GET["contrat"]."'>Revenir aux détails</a></button>";

			if ($data['statut'] !=3) {
				echo '<h1 style="color: #de2916; margin-bottom: 1.5rem; text-align: center;">ATTENTION: CECI N\'EST PAS UN CONTRAT OFFICIEL. IL NE PEUT PAS ÊTRE UTILISE COMME REFERENCE.</h1>';
				if ($data['statut'] ==1) {
					echo '<div class="alert alert-danger" style="text-align: center;" role="alert">
					Cette demande a été refusée !
					</div>';
				}
				else
				{
					echo '<div class="alert alert-warning" style="text-align: center;"  role="alert">
					Cette demande est en cours d\'examen !
					</div>';
				}
			} else {
				echo '<div class="alert alert-success" style="text-align: center;" role="alert">
				Cette demande a été approuvée !
				</div>';
			}
			break;

			default:
			erreur();
			break;
		}

		?>

	</div>
</body>
</html>

