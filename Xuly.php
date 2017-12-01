<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

    include 'connect.php';
	$db = new DataAccessHelper;
	$db ->connect();
	if(isset($_POST['update'])){
		
	$ProductName = $_POST['Product_Name'];
	$Price = $_POST['Price'];
	$Category = $_POST['Category'];
	$ImageUrl = $_POST['Image_Link'];
	$Gender = $_POST["Gender"];
	$Place = $_POST["Place"];
	$Shiping = $_POST["Shiping"];
	$Discount = $_POST["Discount"];
	$Statuss = $_POST["Statuss"];
	$Introduce = $_POST["Introduce"];
	$ImageUrl_1 = $_POST["ImageUrl_1"];
	$ImageUrl_2 = $_POST["ImageUrl_2"];
	$ImageUrl_3 = $_POST["ImageUrl_3"];
	$ImageUrl_4 = $_POST["ImageUrl_4"];
	$id_get = $_GET['id'];
	
	$db ->executenonQuery("UPDATE products SET ProductName = '$ProductName', Price = $Price, Category = '$Category', 					ImageUrl = '$ImageUrl', Gender = '$Gender', Place = '$Place', Shiping = '$Shiping', Discount = '$Discount', Statuss = '$Statuss',Introduce = '$Introduce',ImageUrl_1 = '$ImageUrl_1',ImageUrl_2 = '$ImageUrl_2',ImageUrl_3 = '$ImageUrl_3',ImageUrl_4 = '$ImageUrl_4' WHERE ID = '$id_get';");	
		}
	else{
	$id_get = $_GET['id'];
	$db ->executeNonQuery("DELETE FROM products WHERE ID = '$id_get'");
		}
$db ->close();
header('Location: Manage.php');
?>