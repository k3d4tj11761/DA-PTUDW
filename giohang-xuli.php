 
 <?php session_start(); ?>
 /* Xoa */
 <?php
	if(isset($_GET['delete_cart'])){
		$id_get = $_GET['delete_cart'];
		unset($_SESSION['ADD_'.$id_get]);
		header('Location: giohang.php');
	}
?>