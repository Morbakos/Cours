<?php

Class Controller_home extends Controller {

    public function action_default(){
        $this->action_home();       
    }

    public function action_home(){
        $m = Model::getModel();
        $data = [
            "nb_nobels" => $m->getNbNobelPrizes()
        ];
        $this->render("home", $data);
    }
}

