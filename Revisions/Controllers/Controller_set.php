<?php

class Controller_set extends Controller
{
    public function action_default()
    {
        $this->action_form_add();
    }

    public function action_form_add()
    {
        $model = Model::getModel();
        $data = $model->getCategories();
        $this->render("form_add", $data);
    }

    public function action_add()
    {
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
                var_dump($_POST);
                //$model->addNobelPrize($infos);

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
