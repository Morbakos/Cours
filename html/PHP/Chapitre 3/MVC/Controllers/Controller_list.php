<?php

class Controller_list extends Controller
{

    public function action_default()
    {
        $this->action_last();
    }

    public function action_last()
    {
        if (autorisation("can_view")) {
            $m = Model::getModel();
            $data = [
                "last25" => $m->getLast()
            ];
            $this->render("last", $data);
        } else {
            $message = [
                "title" => "Error",
                "message" => "action not allowed"
            ];
            $this->render("message", $message);
        }
    }

    public function action_informations()
    {
        if (autorisation("can_view")) {
            $m = Model::getModel();

            if (!isset($_GET['id'])) {
                $this->action_error("ID non défini");
            }

            $info = $m->getNobelPrizeInformations($_GET['id']);

            if ($info == "") {
                $this->action_error("ID inexistant");
            } else {
                foreach ($info as $k => $d) {
                    if (is_null($d)) {
                        $info[$k] = "???";
                    }
                }
            }
            $this->render("information", $info);
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

            if (!isset($_GET['start']) || !preg_match("#^\d+$#", $_GET['start'])) {
                $start = 1;
            } else {
                $start = $_GET['start'];
            }

            $data = [
                "nbPage" => ceil($m->getNbNobelPrizes() / 25),
                "nobels" => $m->getNobelPrizesWithLimit(($start - 1) * 25, 25),
                "start" => $start
            ];

            $this->render("pagination", $data);
        } else {
            $message = [
                "title" => "Error",
                "message" => "action not allowed"
            ];
            $this->render("message", $message);
        }
    }
}
