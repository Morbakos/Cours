<?php
session_start();
include('Database.php');
include('fonctions.php');
include('constantes.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>Contrat</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<link rel="stylesheet" type="text/css" href="style-red.css">

</head>
<body>

	<section id="cover">
		<div id="cover-caption">
			<div id="container" class="container">				
				<div class="text-center" style="color: white;">
					<div class="info-form">
						<?php
						$action = isset($_GET['action'])? $_GET['action'] : 'login';

						switch ($action) {
							case 'login': 
							if(isset($_POST['pseudo']))
							{
									//== On vérifie que l'utilisateur a bien entré ses identifiants
								if(empty($_POST['pseudo']) || empty($_POST['password']))
								{
									echo "<p>Vous devez remplir tout les champs.<br>
									Cliquez <a href='index.php'>ici</a> pour recommencer</p>";
								}
								else
								{
									$base = Database::getBase();
									$result = $base->getUserData($_POST['pseudo']);

										//== Identifiants OK
									if (cryptpassword($_POST['password'],$result['salt']) == $result['password']) 
									{
											//== On vérifie que l'utilisateur n'est pas banni
										if($result['rang'] == 0)
										{
											erreur(USER_BANNED);
										}
										elseif(time() <= $result['banneduntil'])
										{
											$_SESSION['banneduntil'] = $result['banneduntil'];
											erreur(USER_BANNED_UNTIL);
										}
										else //== L'utilisateur n'est pas banni, on défini les variables de session
										{
											$_SESSION['id'] = $result['iduser'];
											$_SESSION['pseudo'] = $result['pseudo'];
											$_SESSION['email'] = $result['email'];
											$_SESSION['rang'] = $result['rang'];
											$base->updateLastVisit($_SESSION['id']);
											
											?>
											<meta http-equiv="refresh" content="0;URL=portail.php">
											<?php
										}
									}
									else
									{
										header("Location: index.php?action=login&result=fail");
									}
								}	
							}
							elseif (isset($_SESSION['id'])) 
							{
								?>
								<meta http-equiv="refresh" content="0;URL=portail.php"> 
								<?php
							}
							else
							{
								if(isset($_GET['result']))
								{
									echo'<div class="alert alert-danger" role="alert">
									Les informations que vous avez fournis n\'ont pas permis de vous identifier. Merci de réessayer.
									</div>';
								}

								?>

								<h1>Bienvenue chez <span style="color: #de2916;">DEFCON-Community</span></h1>
								<form action="index.php?action=login" method="POST">
									<input type="text" name="pseudo" placeholder="Pseudo"><br>
									<input type="password" name="password" placeholder="Mot de passe"><br>
									<input type="submit" value="Soumettre">
								</form>
								<p> Pas inscrit ? <a href="index.php?action=register">Cliquez ici pour vous inscrire.</a>
									<p><a href="/">Revenir à la page d'accueil</a></p>
									<?php
								}

								break;

								//== Cas d'enregistrement d'un utilisateur
								case 'register':

									//== On vérifie qu'il n'est pas arrivé ici par erreur s'il est connecté, auquel cas on le redirige vers son portail.
								if(isset($_SESSION['id']))
								{
									header("Location: index.php?action=login");
								}

									//== On vérifie si le formulaire n'a pas été saisi
								if(empty($_POST['pseudo']))
								{
									//== affichage du formulaire
									?>

									<h1>Bienvenue chez <span style="color: #de2916;">DEFCON-Community</span></h1>
									<form action="index.php?action=register" method="POST" id="registerForm">
										<input type="text" name="pseudo" placeholder="Pseudo"><br>
										<input type="email" name="email" placeholder="Email"><br><br>

										<input type="password" name="password" placeholder="Mot de passe"><br>
										<input type="password" name="confirmpassword" placeholder="Confirmer"><br><br>

										<label for="type">Vous êtes représentant d'un groupe ? </label>
										<input type="checkbox" name="groupe" id="groupe" value="groupe"><br>

										<div id="group_data" style="display: none;">
											<label for="groupname">Nom du groupe</label><input type="text" name="groupname"><br>
											<label>Nombre de membres</label><input type="number" id="groupmembercount" name="groupmembercount">

										</div>									

										<input type="submit" value="Soumettre">
									</form>

									<p> Déjà inscrit ? <a href="index.php">Cliquez ici pour vous connecter.</a>
										<p><a href="/">Revenir à la page d'accueil</a></p>

										<?php
									}
								else //== Le formulaire a été saisi, on le traite
								{

									//== Obtention de la base
									$base = Database::getBase();

									//== Déclaration de variables d'erreurs
									$pseudo_erreur1 = NULL;
									$mdp_erreur1 = NULL;
									$mdp_erreur2 = NULL;
									$email_erreur1 = NULL;
									$email_erreur2 = NULL;
									$groupe_erreur1 = NULL;
									$groupe_erreur2 = NULL;

									//== Déclaration de variables d'accès rapide
									$i = 0;
									$temps = time();
									$pseudo = trim(htmlspecialchars(htmlspecialchars(stripslashes($_POST['pseudo']))));
									$email = trim(htmlspecialchars(htmlspecialchars(stripslashes($_POST['email']))));
									$pass = $_POST['password'];
									$confirm = $_POST['confirmpassword'];
									$groupe = (isset($_POST['groupe'])?1:0);
									$nomgroupe = $_POST['groupname'];
									$membresgroupe = $_POST['groupmembercount'];

									//== Vérifications

									//== Check du pseudo
									if(strlen($pseudo) < 3 || strlen($pseudo) > 20)
									{
										$pseudo_erreur1 = "Votre pseudo ne respecte pas la restriction de charactère. Il doit contenir entre 3 et 20 charactères";
										$i++;
									}

									//== Check de l'email

									//==== Check si l'email est déjà utilisé
									if(!$base->emailFree($email))
									{
										$email_erreur1 = "Votre adresse email est déjà utilisée";
										$i++;
									}

									//==== Check de la forme
									if (!preg_match("#^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]{2,}\.[a-z]{2,4}$#", $email) || empty($email))
									{
										$email_erreur2 = "Votre adresse E-Mail n'a pas un format valide";
										$i++;
									}

									//== Check du password	

									//==== Check de la longueur
									if(strlen($pass) < 10)
									{
										$mdp_erreur1 = "Votre mot de passe ne respecte pas la restriction de charactère. Il doit contenir au moins 10 charactères";
										$i++;
									}

									//==== Check de la confirmation								
									if ($pass != $confirm || empty($confirm) || empty($pass))
									{
										$mdp_erreur2 = "Votre mot de passe et votre confirmation diffèrent, ou sont vides";
										$i++;
									}

									//== Vérification du groupe
									if($groupe)
									{
										//==== Vérification du nom
										if (empty($nomgroupe))
										{
											$groupe_erreur1 = "Le nom du groupe est vide";
											$i++;
										}

										//==== Vérification du nombre de membres
										if (empty($membresgroupe))
										{
											$groupe_erreur2 = "Vous devez définir le nombre de membres de votre groupe (sans vous compter)";
											$i++;
										}

										if(!$base->groupFree($nomgroupe))
										{
											$groupe_erreur3 = "Le groupe existe déjà";
											$i++;
										}

									}

									if($i==0)
									{
										echo'<h1>Inscription terminée</h1>';
										echo'<p>Bienvenue '.stripslashes(htmlspecialchars($_POST['pseudo'])).' vous êtes maintenant inscrit.</p>
										<p>Cliquez <a href="./index.php">ici</a> pour revenir à la page d accueil</p>';

										//== Création d'un array pour passer les paramètres
										$data = array();
										$data["pseudo"] = $pseudo;
										$data["email"] = $email;
										$data["salt"] = generateSalt();
										$data["pass"] = cryptpassword($pass,$data["salt"]);

										
										$_SESSION['pseudo'] = $pseudo;
										$_SESSION['id'] = $base->createUser($data);
										$_SESSION['rang'] = 1;

										

										if($groupe)
										{
											$data = null;
											$data["nomgroupe"] = $nomgroupe;
											$data["membresgroupe"] = $membresgroupe;
											$base->createGroup($data);

										}
										//header("Location: index.php?action=login");
									}
									else
									{
										echo'<h1>Inscription interrompue</h1>';
										echo'<p>Une ou plusieurs erreurs se sont produites pendant l\'incription</p>';
										echo'<p>Nous avons comptabilisé '.$i.' erreur(s) dans votre formulaire d\'inscription</p>';
										echo'<p>'.$pseudo_erreur1.'</p>';
										echo'<p>'.$mdp_erreur1.'</p>';
										echo'<p>'.$mdp_erreur2.'</p>';
										echo'<p>'.$email_erreur1.'</p>';
										echo'<p>'.$email_erreur2.'</p>';
										echo'<p>'.$groupe_erreur1.'</p>';
										echo'<p>'.$groupe_erreur2.'</p>';

										echo'<p><a href="index.php?action=register">Cliquez ici pour recommencer</a></p>';
									}


								}
								break;

								case 'logout':
								session_destroy();
								header("Location: index.php");
								break;

								default:
								erreur();
								break;
							}
							?>
						</div>
						<br>
					</div>
				</div>
			</div>
		</section>

		<script type="text/javascript">

			document.getElementById('groupe').onclick = function() {
				affichageChamps(this, 'group_data');
			}

			function affichageChamps(box,id)
			{
				// Get the checkbox
				var el = document.getElementById(id);

				// If the checkbox is checked, display the output text
				if (box.checked){
					el.style.display = "block";
				} else {
					el.style.display = "none";
				}
			}
		</script>
	</body>
	</html>