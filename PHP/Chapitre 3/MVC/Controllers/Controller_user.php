<?php

class Controller_user extends Controller
{

	public function action_default()
	{
		$this->action_form_login();
	}

	public function action_form_login()
	{
        $this->render("form_login");
    }
    
    public function action_login()
	{
        // Check for login
        $m = Model::getModel();
        $user = $m->getUser($_POST['login']);

        if(password_verify($_POST['password'],$user['password']))
        {
            $_SESSION['user'] = $user;
            $message = [
                "title" => "Logged in",
                "message" => "You are now logged in"
            ];
        }
        else {
            $message = [
                "title" => "Error",
                "message" => "Invalid login or password"
            ];
        }

        $this->render("message",$message);
	}
    
    public function action_form_register()
	{
        $this->render("form_register");
    }
    
    public function action_register()
	{
        // Check for register
        $m = Model::getModel();
        
        if ($_POST['password'] === $_POST['passwordverify']) {
            $data = [
                "name" => $_POST['login'],
                "password" => password_hash($_POST['password'], PASSWORD_DEFAULT)
            ];
            $m->addUser($data);
            $_SESSION['user'] = $m->getUser($_POST['login']);
            $message = [
                "title" => "Register completed",
                "message" => "Register completed, you are now logged in"
            ];
        }
        else {
            $message = [
                "title" => "Error",
                "message" => "Invalid data"
            ];
        }
        $this->render("message", $message);
    }
    
    public function action_logout()
    {
        unset($_SESSION['user']);
        $this->render("home");
    }

}
