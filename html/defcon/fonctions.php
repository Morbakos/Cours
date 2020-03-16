<?php

function erreur($erreur='')
{
	$mess=($erreur!='')?$erreur:'Une erreur inconnue s\'est produite';
	exit('<h4>'.$mess.'</h4>
		<p>Cliquez <a href="/">ici</a> pour revenir à l\'accueil du site</p><p>Cliquez <a href="/contrat">ici</a> pour revenir à l\'accueil du portail</p>');
}

function faireTableau($data)
{
	foreach ($data as $value) {
		?>
		<tr>
			<td class="align-middle text-center">
				<?php echo $value['nom'] ?>
			</td>
			<td class="align-middle text-center">
				<?php echo $value['jeu'] ?>
			</td>
			<td class="align-middle text-center">
				<?php echo date("d M Y \à H\hi",$value['temps']) ?>
			</td>
			<td class="align-middle text-center">
				<?php echo $value['pseudodem'] ?>
			</td>
			<td class="align-middle text-center">
				<?php echo $value['pseudoref'] ?>
			</td>
			<td class="align-middle text-center">
				<?php echo $value['nomstatut'] ?>
			</td>
			<td class="align-middle text-center">
				<?php 
				echo "<a href='portail.php?action=details&contrat=".$value['idcontrat']."'>Voir les détails</a>" ;
				?>
			</td>
		</tr>
		<?php
	}
}

function faireTableauUser($users, $rang)
{
	foreach ($users as $user) {
		?>
		<tr id="<?php echo 'user' . $user['iduser'] ?>">
			<td class="align-middle text-center">
				<div id="id">
					<p id="<?php echo 'id' . $user['iduser'] ?>"><?php echo $user['iduser'] ?></p>
				</div>
			</td>
			<td class="align-middle text-center">
				
				<p id="<?php echo 'pseudo' . $user['iduser'] ?>"><?php echo $user['pseudo'] ?></p>

			</td>
			<td class="align-middle text-center">
				<p id="<?php echo 'email' . $user['iduser'] ?>"><?php echo $user['email'] ?></p>
			</td>
			<td class="align-middle text-center">
				<form id="<?php echo 'newpasswordform' . $user['iduser'] ?>" method="post" action="portail.php?action=admin">
					<input type="hidden" name="newpassword" id="<?php echo 'newpassword' . $user['iduser'] ?>">
					<input type="hidden" name="updateid" value="<?php echo $user['iduser'] ?>">
					<input type="hidden" name="salt" value="<?php echo $user['salt'] ?>">
					<input type="button" class="btn btn-warning" onclick="renewPassword(<?php echo $user['iduser'] ?>)" value="Régénérer le mot de passe">
				</form>
			</td>
			<td class="align-middle text-center">

				<form id="<?php echo 'rankForm' . $user['iduser'] ?>" method="post" action="portail.php?action=admin">
					<input type="hidden" name="updateid" value="<?php echo $user['iduser'] ?>">
					<input type="hidden" name="changeRank" id="<?php echo 'changeRank' . $user['iduser'] ?>">
					<select id="<?php echo 'changeRank' . $user['iduser'] ?>" name="rankList">
						<?php
						foreach ($rang as $unRang) {
							if($user['rang'] == $unRang['idrang'])
							{
								echo '<option value="'.$unRang["nomrang"].'" selected>'.$unRang["nomrang"].'';
							}
							else
							{
								echo '<option value="'.$unRang["nomrang"].'">'.$unRang["nomrang"].'';
							}
						}
						?>
					</select>
					<input type="submit" value="Changer le rang" class="btn btn-primary">
				</form>
			</td>
			<td class="align-middle text-center">
				<p id="<?php echo 'inscrit' . $user['iduser'] ?>"><?php echo date("d M Y",$user['inscrit']) ?></p>
			</td>
			<td class="align-middle text-center">
				<p id="<?php echo 'lastvisit' . $user['iduser'] ?>"><?php echo date("d M Y",$user['lastvisit']) ?></p>
			</td>
			<td class="align-middle text-center">
				<?php 
				if($user['banneduntil']!=null)
				{
					?>
					<p id="<?php echo 'banneduntil' . $user['iduser'] ?>"><?php echo date("d M Y",$user['banneduntil']) ?></p>
					<form id="<?php echo 'tempBanForm' . $user['iduser'] ?>" method="post" action="portail.php?action=admin">
						<input type="hidden" name="updateid" value="<?php echo $user['iduser'] ?>">
						<input type="hidden" name="removeBan" id="<?php echo 'removeBan' . $user['iduser'] ?>">
						<input type="button" class="btn btn-danger" value="Lever le banissement" onclick="deleteBan(<?php echo $user['iduser'] ?>)">
					</form>
					<?php
				}
				else
				{
					?>
					<button type='button' class='btn btn-link' id="<?php echo 'banneduntil' . $user['iduser'] ?>" onclick="showTempBanForm(<?php echo $user['iduser'] ?>)">Bannir temporairement</button>
					<div id="<?php echo 'tempBan' . $user['iduser'] ?>" style="display: none;">
						<form id="<?php echo 'tempBanForm' . $user['iduser'] ?>" method="post" action="portail.php?action=admin">
							<input type="hidden" name="updateid" value="<?php echo $user['iduser'] ?>">
							<input type="date" name="banUntil">
							<input type="submit" class="btn btn-danger" value="Confirmer">
						</form>
					</div>
					<?php
				}
				?>
			</td>
			<td class="align-middle text-center">
				<form id="<?php echo 'banForm' . $user['iduser'] ?>" method="post" action="portail.php?action=admin">
					<input type="hidden" name="updateid" value="<?php echo $user['iduser'] ?>">
					<input type="hidden" name="enableBan" id="<?php echo 'ban' . $user['iduser'] ?>">
					<button type='button' class='btn btn-link' id="<?php echo 'ban' . $user['iduser'] ?>" onclick="confirmBan(<?php echo $user['iduser'] ?>)">Bannir définitivement</button>
				</form>
				<form id="<?php echo 'deleteUserForm' . $user['iduser'] ?>" method="post" action="portail.php?action=admin">
					<input type="hidden" name="updateid" value="<?php echo $user['iduser'] ?>">
					<input type="hidden" name="deleteUser" id="<?php echo 'delete' . $user['iduser'] ?>">
					<button type='button' class='btn btn-link' id="<?php echo 'delete' . $user['iduser'] ?>" onclick="confirmDelete(<?php echo $user['iduser'] ?>)">Supprimer le compte</button>
				</form>
			</td>
		</tr>
		<?php
	}
}

function cryptPassword($password, $salt){
	$password = substr($salt, 0, 10).$password.substr($salt, 11, 20);
	$passw = hash("sha1", $password);
	return $passw;
}

function generateSalt()
{
	$length = 20;
	$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

function verifAuth($auth){
	if($_SESSION['rang'] >= 3)
	{
		return true;
	}
	elseif($_SESSION['id'] == $auth)
	{
		return true;
	}
	else
	{
		return false;
	}
}

//==== Fonction qui transforme les entrées
function secureInputs($input)
{
	if(is_array($input))
	{
		foreach ($input as $key => $value) {
			$value =  htmlentities(htmlspecialchars(stripslashes($value)));
		}
	} else {
		$input =  htmlentities(htmlspecialchars(stripslashes($value)));
	}

	return $input;
}
?>