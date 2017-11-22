<?php
  include 'connect.php';

	$ProductName = $_POST["Product_Name"];
	$Price = $_POST["Price"];
	$Category = $_POST["Category"];
	$ImageUrl = $_POST["Image_Link"];
	$Gender = $_POST["Gender"];
	$Place = $_POST["Place"];
	$Shiping = $_POST["Shiping"];
	$Discount = $_POST["Discount"];
	$Statuss = $_POST["Statuss"];

	
$db = new DataAccessHelper;
$db ->connect();
$db ->executeNonQuery("INSERT INTO products(ProductName,Price,Category,ImageUrl,Gender,Place,Shiping,Discount,Statuss)
 VALUES ('$ProductName',$Price,'$Category','$ImageUrl','$Gender','$Place','$Shiping','$Discount','$Statuss')");
$db ->close();	
echo "Inserted 1 record to db";	
header('Location: Manage.php'); 
?>

