

<?php


if($tam == 'insertaccount'){
	echo "acc";
  	include 'connect.php';

	$UserName = $_POST["User_Name"];
	$PassWord = $_POST["Pass_Word"];
	$SDT = $_POST["SDT"];
	$Email = $_POST["Email"];
	$DiaChi = $_POST["Dia_Chi"];

	
$db = new DataAccessHelper;
$db ->connect();
$db ->executeNonQuery("INSERT INTO account(UserName,PassWord,SDT,Email,DiaChi,CreatedDate,ModifiedDate)
 VALUES ('$UserName','$PassWord','$SDT','$Email','$DiaChi',now(),now())");
$db ->close();	
 header('Location: index.php');
}
?>

<?php
if(isset($_GET['ac'])){
	$tam = $_GET['ac'];
	}
if($tam == 'insertproduct_new'){
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
	$Introduce = $_POST["Introduce"];
	$ImageUrl_1 = $_POST["ImageUrl_1"];
	$ImageUrl_2 = $_POST["ImageUrl_2"];
	$ImageUrl_3 = $_POST["ImageUrl_3"];
	$ImageUrl_4 = $_POST["ImageUrl_4"];
	$ImageUrl_5 = $_POST["ImageUrl_5"];
	
$db = new DataAccessHelper;
$db ->connect();
$db ->executeNonQuery("INSERT INTO products(ProductName,Price,Category,ImageUrl,Gender,Place,Shiping,Discount,Statuss,Introduce,ImageUrl_1,ImageUrl_2,ImageUrl_3,ImageUrl_4,ImageUrl_5)
 VALUES ('$ProductName',$Price,'$Category','$ImageUrl','$Gender','$Place','$Shiping','$Discount','$Statuss','$Introduce','$ImageUrl_1','$ImageUrl_2','$ImageUrl_3','$ImageUrl_4','$ImageUrl_5')");
$db ->close();	
	
}
