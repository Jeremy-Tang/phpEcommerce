<?php 

session_start();
include("include/db.php");
include("functions/functions.php");

switch($_REQUEST['sAction']){

    default :

    getProducts();

    break;

    case'getPaginator';

    getPaginator();

    break;

}

?> 