<?php
class Controller_search extends Controller
{

    public function action_default()
    {
        $this->action_form();
    }

    public function action_form()
    {
        if (autorisation("can_view")) {
            $m = Model::getModel();
            $data = $m->getCategories();
            $this->render("form_search", $data);
        } else {
            $message = [
                "title" => "Error",
                "message" => "action not allowed"
            ];
            $this->render("message", $message);
        }
    }

    public function action_pagination()
    {
        if (autorisation("can_view")) {
            $m = Model::getModel();
            if (isset($_POST['form'])) {
                unset($_SESSION['filters']);

                if (isset($_POST['name'])) {
                    $_SESSION['filters']['name'] = $_POST['name'];
                }

                if ($_POST['year'] != '') {
                    $_SESSION['filters']['year'] = $_POST['year'];
                    $_SESSION['filters']['Sign'] = $_POST['Sign'];
                } else {
                    unset($_SESSION['filters']['Sign']);
                }

                if (isset($_POST['categories'])) {
                    $_SESSION['filters']['categories'] = $_POST['categories'];
                }
            }

            if (!isset($_GET['start']) || !preg_match("#^\d*$#", $_GET['start'])) {
                $start = 1;
            } else {
                $start = $_GET['start'];
            }

            if ($this->check_data($_SESSION['filters'])) {
                $infos = $m->findNobelPrizes($_SESSION['filters'], ($start - 1) * 25);
                $data = [
                    "nbPage" => ceil($m->nbFindNobelPrizes($_SESSION['filters']) / 25),
                    "nobels" => $infos,
                    "start" => $start
                ];
                $this->render("search", $data);
            } else {
                $message = [
                    "title" => "Error",
                    "message" => "Insuffisent filters"
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

    private function check_data($data)
    {
        $valide = true;

        // Check du name
        if ($data["name"] != '' && preg_match("#^\s*$#", $data["name"])) {
            $valide = false;
        }

        //Check de l'année
        if ($data["year"] != '' && preg_match("#^\-+#", $data["year"]) || preg_match("#\D#", $_POST["year"])) {
            $valide = false;
        }
        return $valide;
    }
}
