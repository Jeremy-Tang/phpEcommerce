<?php 

session_start();

session_destroy();

echo "<script>window.open('Home.php','_self')</script>";

?>