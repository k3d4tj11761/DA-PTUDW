

<?php
if(isset($_GET['ac'])){
	$tam = $_GET['ac'];
	}
if($tam == 'insertproduct'){
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
	
header('Location: Manage.php'); 
}

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
 
}
?>


