<?php
    $a=array();
    $a['xyz']=array('abc','def');
    header('Content-Type: application/json');
    echo json_encode($a);
?>

