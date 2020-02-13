<?php

class Controller_set extends Controller
{

	public function action_default()
	{
		$this->action_form_add();
	}

	public function action_form_add()
	{
		if (autorisation("can_update")) {
			$model = Model::getModel();
			$data = $model->getCategories();
			$this->render("form_add", $data);
		} else {
			$message = [
				"title" => "Error",
				"message" => "action not allowed"
			];
			$this->render("message", $message);
		}
	}

	public function action_form_update()
	{
		if (autorisation("can_update")) {
			$model = Model::getModel();

			if (isset($_GET['id']) && $model->isInDataBase($_GET['id'])) {
				$data = [
					"categories" => $model->getCategories(),
					"data" => $model->getNobelPrizeInformations($_GET['id'])
				];

				$this->render("form_update", $data);
			} else {
				$message = [
					"title" => "Error",
					"message" => "ID not set or not found in database"
				];
				$this->render("message", $message);
			}
		} else {
			$message = [
				"title" => "Error",
				"message" => "action not allowed"
			];
			$this->render("message", $message);
		}
	}

	public function action_add()
	{

		if (autorisation("can_update")) {
			if (!isset($_POST['name'])) {
				$message = [
					"title" => "No form submitted",
					"message" => "You did not submitted any form"
				];
			} else {
				if ($this->check_data()) {
					$infos = array();
					$infos["name"] = $_POST["name"];
					$infos["year"] = $_POST["year"];
					$infos["category"] = $_POST["category"];

					$vide = ["birthdate", "birthplace", "country", "motivation"];
					foreach ($vide as $value) {
						if ($_POST[$value] == "") {
							$_POST[$value] = null;
						}
					}

					$model = Model::getModel();
					$model->addNobelPrize($infos);

					$message = [
						"title" => "Nobel prize added",
						"message" => "The Nobel Prize has been successfully added"
					];
				} else {
					$message = [
						"title" => "Error",
						"message" => "There is an error, please check the data"
					];
				}
			}
			$this->render("message", $message);
		} else {
			$message = [
				"title" => "Error",
				"message" => "action not allowed"
			];
			$this->render("message", $message);
		}
	}

	public function action_remove()
	{
		if (autorisation("can_delete")) {

			$model = Model::getModel();
			if (!isset($_GET['id'])) {
				$message = [
					"title" => "ID not defined",
					"message" => "There is no ID in the URL"
				];
			} else {

				if ($model->isInDataBase($_GET['id'])) {
					$model->removeNobelPrize($_GET['id']);
					$message = [
						"title" => "Nobel prize deleted",
						"message" => "The nobel prize has been deleted"
					];
				} else {
					$message = [
						"title" => "Error",
						"message" => "Invalid ID"
					];
				}
			}
			$this->render("message", $message);
		} else {
			$message = [
				"title" => "Error",
				"message" => "action not allowed"
			];
			$this->render("message", $message);
		}
	}

	public function action_update()
	{
		if (condition) {
			if (!isset($_POST['name'])) {
				$message = [
					"title" => "No form submitted",
					"message" => "You did not submitted any form"
				];
			} else {
				if ($this->check_data_with_id()) {
					$infos = array();
					$infos["id"] = $_POST["id"];
					$infos["name"] = $_POST["name"];
					$infos["year"] = $_POST["year"];
					$infos["category"] = $_POST["category"];

					$vide = ["birthdate", "birthplace", "country", "motivation"];
					foreach ($vide as $value) {
						if ($_POST[$value] == "") {
							$_POST[$value] = null;
						}
					}

					$model = Model::getModel();
					$model->updateNobelPrize($infos);

					$message = [
						"title" => "Nobel prize updated",
						"message" => "The Nobel Prize has been successfully updated"
					];
				} else {
					$message = [
						"title" => "Error",
						"message" => "There is an error, please check the data"
					];
				}
			}
			$this->render("message", $message);
		} else {
			$message = [
				"title" => "Error",
				"message" => "action not allowed"
			];
			$this->render("message", $message);
		}
	}

	private function check_data()
	{
		$valide = true;

		// Check du name
		if (!isset($_POST["name"]) || preg_match("#^\s*$#", $_POST["name"])) {
			$valide = false;
		}

		//Check categorie
		if (!isset($_POST["category"]) || preg_match("#^\s*$#", $_POST["category"])) {
			$valide = false;
		}

		//Check de l'année
		if (!isset($_POST["year"]) || preg_match("#^\-+#", $_POST["year"]) || preg_match("#\D#", $_POST["year"])) {
			$valide = false;
		}
		return $valide;
	}

	private function check_data_with_id()
	{
		$valide = true;

		//Check des data
		if (!$this->check_data()) {
			$valide = false;
		}

		if (!preg_match("#^\d+$#", $_POST['id'])) {
			$valide = false;
		}

		if ($_POST['id'] <= 0) {
			$valide = false;
		}

		return $valide;
	}
}
