<!-- Xóa Account -->
<?php session_start(); ?>
<?php
	if(isset($_GET['ac'])){
		$tam = $_GET['ac'];
		}
	if($tam == 'dangxuat'){
		unset($_SESSION['User_Name']);
		header('Location: index.php');
		print_r($_SESSION);
		echo"</pre>";
		}
?>


