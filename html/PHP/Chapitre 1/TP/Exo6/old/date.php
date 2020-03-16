<?php
class Date
{
	private $d;
	private $y;
	private $m;
	private static $instance;
	public const JOURS_MOIS = array(1 =>31,29,31,30,31,30,31,31,30,31,30,31 );

	private function __construct($date)
	{
		if($this->isValid($date))
		{
			$chaine = explode("/", $date);
			$this->d = $chaine[0];
			$this->m = $chaine[1];
			$this->y = $chaine[2];
		}
		else
		{
			$this->d = 01;
			$this->m = 01;
			$this->y = 2000;
		}
	}

	private function isValid($date)
	{
		if(preg_match(" /^[0-3][0-9]\/[0-1][0-9]\/[0-9]{4}$/", $date))
		{
			$date = explode("/", $date);
			return $date[0] <= Date::JOURS_MOIS[intval($date[1])];
		}
	} 

	public static function makeDate($date)
	{
		if (is_null(self::$instance)) self::$instance = new Date($date);
		return self::$instance;

	}

	public function display()
	{
		echo $this->d."/".$this->m."/".$this->y;
	}

	public function isLeap()
	{
		if(($this->y%4 == 0 && $this->y%100 != 0) || $this->y%400 == 0)
		{
			return true;
		}
		return false;
	}

}



?>