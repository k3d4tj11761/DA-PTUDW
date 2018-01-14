 
 <?php session_start(); ?>
 /* Xoa *
  <?php
  /*
	if(isset($_GET['delete_cart'])){
		$id_get = $_GET['delete_cart'];
		unset($_SESSION['ADD_'.$id_get]);
		header('Location: giohang.php');
	}
	*/
	if(isset($_GET['delete_cart'])){
		$id_get = $_GET['delete_cart'];
		for($i = 0;$i<count($_SESSION['ADD_']);$i++){
			if($_SESSION['ADD_'][$i]['id'] == $id_get){
				$_SESSION['ADD_'][$i]['soluong'] -=1;
				if($_SESSION['ADD_'][$i]['soluong'] == 0){
				array_splice($_SESSION['ADD_'], $i ,1);
				print_r($_SESSION['ADD_']);
				}
				//session_destroy();
				header('Location: giohang.php');
			}
		}
	}
	
?>