
<?php session_start(); ?>
<?php
if(isset($_GET['ac'])){
	$tam = $_GET['ac'];
}

if($tam == 'insertaccount'){

	if(empty($_POST["User_Name"]) || empty($_POST["Pass_Word"]) || 
	empty($_POST["SDT"]) || empty($_POST["Email"]) || empty($_POST["Dia_Chi"]))
	{
		$_SESSION['loi'] = 'Vui Lòng điền đầy đủ thông tin';
		
	}
	else{
  	include 'connect.php';
	$UserName = $_POST['User_Name'];
	$PassWord = $_POST['Pass_Word'];
	$SDT =  $_POST['SDT'] ;
	$Email = $_POST['Email'];
	$DiaChi = $_POST['Dia_Chi'];
	
	
	
	
$db = new DataAccessHelper;
$db ->connect();
$db ->executeNonQuery("INSERT INTO account(UserName,PassWord,SDT,Email,DiaChi,CreatedDate,ModifiedDate)
 VALUES ('$UserName','$PassWord','$SDT','$Email','$DiaChi',now(),now())");
	
$db ->close();	
	}
	
 header('Location: index.php');
	
}
?>

<?php
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
?>
<!-- Order -->
<?php
if($tam == 'order' && empty($_SESSION['User_Name'])){
	$_SESSION["error_order"] = "error_order";
	header('Location: giohang.php');
}
if($tam == 'order' && isset($_SESSION['User_Name'])){
  include 'connect.php';

$db = new DataAccessHelper;
$db ->connect();

for($k = 0;$k<count($_SESSION['ADD_']);$k++){
	$id_session = $_SESSION['ADD_'][$k]['id'];
	$sqll = $db->executeQuery("SELECT * FROM products where ID = '$id_session'");
								
		if(mysqli_num_rows($sqll) > 0){
			while ($row = mysqli_fetch_assoc($sqll)){
				$ProductName = $row['ProductName'];
				$Price = $row['Price'];
				$Image_Url = $row['ImageUrl'];
				$soluong = $_SESSION['ADD_'][$k]['soluong'];
				$size = $_SESSION['ADD_'][$k]['size'];
				$UserName = $_SESSION['User_Name'];
				$db ->executeNonQuery("INSERT INTO 																										   					order_product(ProductName,Price,Image_Url,UserName,CreatedDate,soluong,size)
  					VALUES ('$ProductName','$Price','$Image_Url','$UserName',now(),$soluong,$size )");
				}
		}
}
$db ->close();	
header('Location:account_index.php?ktdh');	
}
?>
<!-- Xóa Account -->
<?php
	if(isset($_GET['dx'])){
		$tam = $_GET['dx'];
		}
	if($tam == 'dangxuat'){
		unset($_SESSION['User_Name']);
		
		}
?>

