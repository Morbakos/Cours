<?php

class Controller_list extends Controller
{

    public function action_default()
    {
        $this->action_last();
    }

    public function action_last()
    {
        $m = Model::getModel();
        $data = [
            "last" => $m->getLast()
        ];
        $this->render("last", $data);
    }

    public function action_informations()
    {
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
        $this->render("informations", $info);
    }
}
