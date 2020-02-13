<?php
Class TODO
{
	private $to_dos;

	public function __construct()
	{
		$this->to_dos = [];
	}

	public function add_todo($tache)
	{
		if(!preg_match("#^ +$#", $tache) && !preg_match("#^///+$#", $tache))
		{
			$this->to_dos[] = $tache;
		}
	}

	public function remove_todo($id)
	{
		unset($this->to_dos[$id]);

	}

	public function isEmpty()
	{
		return empty($this->to_dos);
	}

	public function getHTML()
	{
		if(!$this->isEmpty())
		{
			$str =  "<ul>";
			foreach ($this->to_dos as $key => $value) {
				$str.= "<li><a href=\"index.php?id=".$key."\">".$value."</a></li>";
			}
			$str .=  "</ul>";
		}
		else
		{
			$str = "<p>Aucune tache à faire !</p>";
		}
		return $str;
	}

	public function get_representation()
	{
		if(!$this->isEmpty())
		{
			$str = implode(" /// ", $this->to_dos);
		}
		else
		{
			$str = "<p>Aucune tache à faire !</p>";
		}
		return $str;
	}

	public function set_representation($data)
	{
		$this->to_dos = explode(" /// ", $data);
	}
}
?>