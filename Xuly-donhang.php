<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

    include 'connect.php';
	$db = new DataAccessHelper;
	$db ->connect();
	
	$id_get = $_GET['id'];
	$db ->executeNonQuery("DELETE FROM order_product WHERE ID = '$id_get'");
		
$db ->close();
header('Location: order.php');
?>
