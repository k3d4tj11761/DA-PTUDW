<!DOCTYPE html>
<?php session_start(); ?>
<?php

include 'connect.php';
$db = new DataAccessHelper;
$db->connect();
$UserName = $_POST['User_Name'];
$PassWord = $_POST['Pass_Word'];
$sql = $db->executeQuery("Select * from account where UserName = '$UserName' and PassWord = '$PassWord' ");
if(mysqli_num_rows($sql) > 0){
	$_SESSION['User_Name'] = $_POST['User_Name'];
	header("Location: index.php");
}
else {
	$_SESSION['UserName'] = $_POST['User_Name'];
	header("Location: index.php");
}
print_r($_SESSION);
echo"</pre>";
$db->close();
?>
<?php
	if(isset($_GET['dx'])){
		$tam = $_GET['dx'];
		}
	if($tam == 'dangxuat'){
			unset($_SESSION['User_Name']);
			header('Location: index.php');
		}
?>
</html>