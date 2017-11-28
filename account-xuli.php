<!DOCTYPE html>
<?php

include 'connect.php';
$db = new DataAccessHelper;
$db->connect();
$UserName = $_POST['User_Name'];
$PassWord = $_POST['Pass_Word'];
$sql = $db->executeQuery("Select * from account where UserName = '$UserName' and PassWord = '$PassWord' ");
if(mysqli_num_rows($sql) > 0){
	setcookie('User_Name',$_POST['User_Name'],time() + 3600);
	header("Location: index.php");
}
else 
	echo "Dang Nhap That Bai";

print_r($_COOKIE);
echo"</pre>";
$db->close();
?>
<?php
	if(isset($_GET['dx'])){
		$tam = $_GET['dx'];
		}
	if($tam == 'dangxuat'){
			setcookie('User_Name',$_POST['User_Name'],time() - 3600);
			header('Location: index.php');
		}
?>
</html>