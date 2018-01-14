<link rel="stylesheet" href="css/css.css" />
<?php session_start(); ?>
<?php /*
include 'connect.php';
$db = new DataAccessHelper;
$db->connect();
if(isset($_GET['id_product']) && !empty($_GET['id_product'])){
	$id_get_product = $_GET['id_product'];
	$_SESSION['ADD_'.$id_get_product] = $id_get_product;
	print_r($_SESSION);
	echo"</pre>";
}
*/
// ADD giỏ hàng
include 'connect.php';
$db = new DataAccessHelper;
$db->connect();
if(isset($_GET['id_product']) && !empty($_GET['id_product']) && isset($_POST['size'])){
$id_get_product = $_GET['id_product'];
$size =  $_POST["size"];
	if(isset($_SESSION['ADD_'])){
		$count = count($_SESSION['ADD_']);
		$flag = TRUE;
		for($i=0;$i<$count;$i++){
			if($_SESSION['ADD_'][$i]['id'] == $id_get_product && $_SESSION['ADD_'][$i]['size'] == $size ){
				$_SESSION['ADD_'][$i]['soluong'] +=1;
				header('Location: giohang.php');
				$flag = FALSE;
				break;
				}
		}
		if($flag==TRUE){
		$_SESSION['ADD_'][$count]['id'] = $id_get_product;
		$_SESSION['ADD_'][$count]['soluong'] = 1;
		$_SESSION['ADD_'][$count]['size'] = $size;
		header('Location: giohang.php');
		}
	}
	
	
	
	else{
		$_SESSION['ADD_'] = array();
		$_SESSION['ADD_'][0]['id'] = $id_get_product;
		$_SESSION['ADD_'][0]['soluong'] = 1;
		$_SESSION['ADD_'][0]['size'] = $size;
	}
}
 // print_r($_SESSION['ADD_']);
?>
<?php include 'account.php'; ?>
<!-- header -->
    <div class="header">	
     	<div class="header-left" >
        	<!-- logo -->
          <div class="p-logo">
            <div class="logo">
				<a href="index.php"><img src="img/logo-lk (1).png"/></a>
           	 </div>
           </div>
                
            <!-- Tim Kiem -->
         <div id="click-search" class="sub-search"><a href="#"><span style="color:#000" class="fa fa-search" aria-hidden="true"></span></a></div>
         <div id="p-click-search" class="p-search">
         	<div id="back-id" class="back"><a href="#"><i style="color:#000" class="fa fa-arrow-left" aria-hidden="true"></i></a></div> 
            <div class="search">
            <form action="index.php" method="post">
            <ul style="list-style-type:none; display:inline-block; width:100%">
            <li><input type="text" name="search" size="40" placeholder="Nhập nội dung cần tìm" /></li>
	    
 	         <li><button>
           	 <a><span style="color:#000" class="fa fa-search" aria-hidden="true"></span></a>
            </button></li>
            </ul>
            </form>
           </div>
		</div>
     </div>
        <!-- Tài khoản -->
     <div class="header-right" >
        	
        	<div class="p-link">
            	<div class="link">
            	<a href="https://www.facebook.com"><span style="color:#000; font-size:20px" class="fa fa-facebook" aria-hidden="true"></span></a>
				<a href="https://www.google.com.vn"><span style="color:#000;margin-left:5px; font-size:20px" class="fa fa-twitter fa" aria-hidden="true"></span></a>
                <a href="https://twitter.com"><span style="color:#000;margin-left:5px; font-size:20px"  class="fa fa-google-plus fa" aria-hidden="true"></span></a>
                <a href="https://www.youtube.com/"><span style="color:#000; margin-left:5px; font-size:20px"  class="fa fa-youtube fa" aria-hidden="true"></span></a>
                </div>
            </div>
            
           
            
            <div  id="p-account">
            <ul>
           		<li class="account"><i  class="fa fa-user fa-2x" aria-hidden="true"></i>
                	
                     <?php
						if(isset($_SESSION['User_Name'])){
							echo '  <ul class="sub-account">
										<span class="js-arrow" style="left: 70.57px;"></span>
										<div style="margin-top:4px;">XIN CHÀO '.$_SESSION['User_Name'].'!</div>
                    					<li><a href="account_index.php">TÀI KHOẢN</a></li>
                        	
                        				<li><a href="Delete.php?ac=dangxuat">ĐĂNG XUẤT</a></li>
                    				</ul>';
						}
						else
							echo '
                   					 <ul class="sub-account">
									 	 <span class="js-arrow" style="left: 70.57px;"></span>
									 	 <div style="margin-top:4px;">Xin Chào</div>
                    			  		 <li><a class="login-window" href="#login-box-dn">ĐĂNG NHẬP</a></li>
                        		 
                      					 <li><a class="login-window" href="#login-box-dk">ĐĂNG KÝ</a></li>
                    				 </ul> ';
					?>
                </li>
                
                <li class="bag"><i  class="fa fa-shopping-bag fa-2x" aria-hidden="true"></i>
                	<div class="count_cart"><b><?php if(isset($_SESSION['ADD_'])){
						echo $count = count($_SESSION['ADD_']); } ?></b>
                    	
                     </div>
                    <ul class="sub-cart">
                    	<span class="js-arrow" style="left:382.57px; bottom:99%;border-width:11px"></span>
						<div class="title-cart">GIỎ HÀNG</div>
                   
                    	 <?php
						if(isset($_SESSION['ADD_'])){
						$ArrayPrice = array();
						$ship = array();
						$i = 0;
						$j = 0;
						$ship[$j] = 0;
						$ArrayPrice[$i] = 0;
						for($k = 0;$k<count($_SESSION['ADD_']);$k++){
							$id_session = $_SESSION['ADD_'][$k]['id'];
							$sqll = $db->executeQuery("SELECT * FROM products where ID = '$id_session'");
								
								if(mysqli_num_rows($sqll) > 0){
									while ($row = mysqli_fetch_assoc($sqll)){
										if($row['Shiping'] == 'Giao Hàng Tiết Kiệm'){
											$ship[$j] = 10000;
											$j++;
											}
										if($row['Shiping'] == 'Giao Hàng Nhanh'){
											$ship[$j] = 20000;
											$j++;
											}
										if($row['Shiping'] == 'Viettel Post'){
											$ship[$i] = 15000;
											$j++;
											}
										$ArrayPrice[$i] = $row["Price"]*$_SESSION['ADD_'][$k]['soluong'];
										$i++;
										echo '
					<table class="p-giohang">
						<tr>
                        	<td class="td1"><a href="product.php?id_index='.$row['ID'].'"><img  style="width:80%;" src="'.$row['ImageUrl'].'" /></a></td>
                			<td class="td2"><a href="product.php?id_index='.$row['ID'].'">'.$row['ProductName'].'</a></td>
                    		<td class="td3"><a href="product.php?id_index='.$row['ID'].'">'.$row['Price'].' VNĐ</a></td>
                    		<td class="td4"><a href="#">
							
                            	<select name="select">
                                	<option value="">'.$_SESSION['ADD_'][$k]['soluong'].'</option>
                            	</select>
							
                            </td>
							<td class="td5"><a style="color:black" href="giohang-xuli.php?delete_cart='.$row['ID'].'"><i class="fa fa-times" aria-hidden="true"></i></td></a>
                  		</tr>
				   	</table>
										';
										
										
					
								}
							}
						}
						$tongtien = 0;
						$tienship = 0;
						for($i = 0;$i<count($ArrayPrice);$i++){
							$tongtien = $ArrayPrice[$i] + $tongtien ;
						}
						for($j = 0;$j<count($ship);$j++){
							$tienship = $ship[$j] + $tienship ;
						}
					}
					
                	?>
                    <div class="sum-subcart">TỔNG: <?php if(isset($_SESSION['ADD_'])){echo $tongtien; }?></div>
                    <div class="p-subcart">
                    	<div class="tt"><a href="giohang.php">XEM GIỎ HÀNG</a></div>
                        <div class="tt" style="float:right"><a href="Insert.php?ac=order">THANH TOÁN</a></div>
                    </div>
                    </ul> 
                      
                </li>
            	
        	</ul> 
            </div>
	</div>
</div>
 
 <!-- MENU -->
  <div id="menu">
  <ul>
    <li><a href="index.php">TRANG CHỦ</a></li>
    <li><a href="index.php?ac_menu=nam">NAM</a>

    	<ul class="sub-menu" id="menu1">
        
        	<li><a href="#">Chuck Taylor</a></li>
            	<li><a href="#">Giày Vans</a></li>
            	<li><a href="#">Freestyle</a></li>
            	<li><a href="#">Nike Blazer</a></li>
            	<li><a href="#">Jack Purcell</a></li>
            	<li><a href="#">Superstar</a></li>
            	<li><a href="#">Dr.Martens</a></li>
            	<li><a href="#">Puma Suede</a></li>
              	<li><a href="#">Nike Air Max</a></li>
            	<li><a href="#">Superga</a></li>
                <li><a href="#">Retro Jordan’s</a></li>
                <li><a href="#">PF Flyers</a></li>
                <li><a href="#">Giày Clarks</a></li>
                <li><a href="#">Retro Classic</a></li>
              
            
        </ul>
    </li>
    <li><a href="index.php?ac_menu=nu">NỮ</a>
      <ul class="sub-menu" id="menu1">
        
        		<li><a href="#">Chuck Taylor</a></li>
            	<li><a href="#">Giày Vans</a></li>
            	<li><a href="#">Freestyle</a></li>
            	<li><a href="#">Nike Blazer</a></li>
            	<li><a href="#">Jack Purcell</a></li>
            	<li><a href="#">Superstar</a></li>
            	<li><a href="#">Dr.Martens</a></li>
            	<li><a href="#">Puma Suede</a></li>
              	<li><a href="#">Nike Air Max</a></li>
            	<li><a href="#">Superga</a></li>
                <li><a href="#">Retro Jordan’s</a></li>
                <li><a href="#">PF Flyers</a></li>
                <li><a href="#">Giày Clarks</a></li>
                <li><a href="#">Retro Classic</a></li>
              
            
        </ul>
    </li>
    
    <li><a href="index.php?ac_menu=treem">TRẺ EM</a>
      <ul class="sub-menu" id="menu1">
        
        		<li><a href="#">Chuck Taylor</a></li>
            	<li><a href="#">Giày Vans</a></li>
            	<li><a href="#">Freestyle</a></li>
            	<li><a href="#">Nike Blazer</a></li>
            	<li><a href="#">Jack Purcell</a></li>
            	<li><a href="#">Superstar</a></li>
            	<li><a href="#">Dr.Martens</a></li>
            	<li><a href="#">Puma Suede</a></li>
              	<li><a href="#">Nike Air Max</a></li>
            	<li><a href="#">Superga</a></li>
                <li><a href="#">Retro Jordan’s</a></li>
                <li><a href="#">PF Flyers</a></li>
                <li><a href="#">Giày Clarks</a></li>
                <li><a href="#">Retro Classic</a></li>
                
        </ul>
    </li>
    <li><a href="#">THƯƠNG HIỆU</a>
    <ul class="sub-menu" id="menu4">

        		<li><a href="#">Levis</a></li>
            	<li><a href="#">Persol</a></li>
            	<li><a href="#">Nike</a></li>
            	<li><a href="#">Edwin</a></li>
            	<li><a href="#">New Balance</a></li>
            	<li><a href="#">Jack & Jones</a></li>
            	<li><a href="#">Ray-Ban</a></li>
               	<li><a href="#">Wood Wood</a></li>
                <li><a href="#">Paul Smith</a></li>    
                
        </ul>
    </li>
    <li><a href="#">PHỔ BIẾN</a></li>
    <li><a href="#">PHỤ KIỆN</a></li>
    <li><a href="#">BÁN CHẠY</a></li>
    <li><a href="#">KHÁC</a></li>
  </ul>
</div>

<!-- Menu Responsive -->
 <div id="menu-responsive">
 	<div class="menu-rp"><i class="fa fa-2x fa-bars" aria-hidden="true"></i>
 	<ul class="sub-menu-responsive">
    	 <li><a href="index.php">TRANG CHỦ</a></li>
    	 <li><a href="index.php?ac_menu=nam">NAM</a></li>
         <li><a href="index.php?ac_menu=nu">NỮ</a></li>
         <li><a href="index.php?ac_menu=treem">TRẺ EM</a></li>
         <li><a href="#">THƯƠNG HIỆU</a></li>
         <li><a href="#">PHỔ BIẾN</a></li>
    	 <li><a href="#">PHỤ KIỆN</a></li>
         <li><a href="#">BÁN CHẠY</a></li>
         <li><a href="#">KHÁC</a></li>
	</ul>
    </div>
    <div class="menu-rp1">MENU</div>
    	 
 </div>


</div>
