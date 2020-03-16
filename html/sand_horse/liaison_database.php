<?php

class Base
{
    //==== Variables
    private $bd;
    private static $instance = null;

    //==== Constructeur de la classe Base
    private function __construct()
    {
        try {

            //==== On défini les identifiants
            $hote = 'mysql:host=localhost;dbname=sand_horse;charset=utf8';
            $user = "root";
            $pass = "";

            //==== On crée l'objet PDO, qui permet de faire le lien avec la base de données
            $this->bd = new PDO($hote, $user, $pass);
            $this->bd->query('SET NAMES utf8');
            $this->bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->bd->setAttribute(PDO::ATTR_EMULATE_PREPARES, FALSE);
        } catch (Exception $e) {
            die('Erreur : ' . $e->getCode() . ' ' . $e->getMessage()); //==== Dans le cas où il y a une erreur, on arrête le programme et on affiche l'erreur
        }
    }

    //==== Retourne un objet de classe Base
    public static function getBase()
    {

        if (is_null(self::$instance)) self::$instance = new Base(); //==== On crée une nouvelle instance de la classe si elle n'existe pas, sinon on retourne celle existante
        return self::$instance;
    }

    public function getRoleFromSection($section)
    {
        try {
            $sql = "SELECT
                    s.nomSection,
                    r.nomRole,
                    r.rangRole,
                    ra.assigne
                FROM
                    section s
                JOIN
                    roleAssignation ra
                ON
                    s.idSection = ra.idSection
                JOIN
                    role r
                ON
                    ra.idRole = r.idRole
                WHERE
                    s.nomSection = LCASE(:section)";
            $query = $this->bd->prepare($sql);
            $query->bindValue(':section', $section);
            $query->execute();
            $res = $query->fetchAll(PDO::FETCH_ASSOC);

            return $res;
        } catch (Exception $e) {
            die('Erreur : ' . $e->getCode() . ' ' . $e->getMessage()); //==== Dans le cas où il y a une erreur, on arrête le programme et on affiche l'erreur
        }
    }

    public function getRoleFromRole($role)
    {
        try {
            $sql = "SELECT
                    s.nomSection,
                    r.nomRole,
                    r.rangRole,
                    ra.assigne
                FROM
                    role r
                JOIN
                    roleAssignation ra
                ON
                    r.idRole = ra.idRole
                JOIN
                    section s
                ON
                    ra.idSection = s.idSection
                WHERE
                    r.nomRole LIKE '%:role%'";
            $query = $this->bd->prepare($sql);
            $query->bindValue(':role', $role);
            $query->execute();
            $res = $query->fetchAll(PDO::FETCH_ASSOC);

            return $res;
        } catch (Exception $e) {
            die('Erreur : ' . $e->getCode() . ' ' . $e->getMessage()); //==== Dans le cas où il y a une erreur, on arrête le programme et on affiche l'erreur
        }
    }

    public function getStuff($stuff)
    {
        try {
            $sql = "SELECT * FROM `stuff` WHERE 1";
            $query = $this->bd->prepare($sql);
            // $query->bindValue(':role', $role);
            $query->execute();
            $res = $query->fetchAll(PDO::FETCH_ASSOC);

            return $res;
        } catch (Exception $e) {
            die('Erreur : ' . $e->getCode() . ' ' . $e->getMessage()); //==== Dans le cas où il y a une erreur, on arrête le programme et on affiche l'erreur
        }
    }

    public function setStuff($stuff)
    {
        try {
            $sql = "INSERT INTO stuff VALUES(NULL, :stuff)";
            $query = $this->bd->prepare($sql);
            $query->bindValue(':stuff', json_encode($stuff));
            $query->execute();
        } catch (Exception $e) {
            die('Erreur : ' . $e->getCode() . ' ' . $e->getMessage()); //==== Dans le cas où il y a une erreur, on arrête le programme et on affiche l'erreur
        }
    }
}
