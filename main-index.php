<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/css.css" />
<?php
/* include 'connect.php';
$db = new DataAccessHelper;
$db->connect(); */


//output database + Phan Trang
if(isset($_GET['page'])){
$start = $_GET['page'];
}
else{
 $start = '';
}
if($start == 1 || $start == ''){
	$start = 0;	
	}
else{
	$start = ($start*24)-24;
}
$export = $db ->executeQuery("SELECT * FROM products Limit $start,24");

//output text search
if(isset($_POST['search'])){
$search = $_POST['search'];
$export = $db ->executeQuery("SELECT * FROM products where ( Place like '%$search%' ) or (Price = '$search') or (Gender  like '%$search%') or (ProductName like '%$search%') or (Category like '%$search%') or (Shiping like '%$search%') or (Discount like '%$search%') or (Statuss like '%$search%') ");
}
//MENU search
if(isset($_GET['ac_menu'])){
				$get_ac_menu = $_GET['ac_menu']; 
				if($get_ac_menu == 'nam'){
				$export = $db ->executeQuery("SELECT * FROM products where Gender = 'Nam'");
				}
				if($get_ac_menu == 'nu'){
				$export = $db ->executeQuery("SELECT * FROM products where Gender = 'Nữ'");
				}
				if($get_ac_menu == 'treem'){
				$export = $db ->executeQuery("SELECT * FROM products where Gender = 'Trẻ Em'");
				}
			}

//if (isset($_POST['Place'])) {	
//	     foreach($_POST['Place'] as $key => $value) {
         	//Xử lý các phần tử được chọn
		//print_r ($_POST['Place']);
		//print_r ($_POST['Shiping']);
		//	echo $value;
		//	echo 1;
		
		// Sidebar-Search
			
			
		 /*	if(isset($_POST['Place'][0])){
				$tam = $_POST['Place'][0];
				$export = $db ->executeQuery("SELECT * FROM products where Place = '$tam'");
			}
			if(isset($_POST['Place'][1])){
				$tam = $_POST['Place'][0];
				$tam1 = $_POST['Place'][1];
				$export = $db ->executeQuery("SELECT * FROM products where Place = '$tam' or Place = '$tam1'");
			}
			if(isset($_POST['Place'][2])){
				$tam = $_POST['Place'][0];
				$tam1 = $_POST['Place'][1];
				$tam2 = $_POST['Place'][2];
				$export = $db ->executeQuery("SELECT * FROM products where Place = '$tam' or Place = '$tam1' or Place = '$tam2' ");
			}
			
			if(
			   (isset($_POST['Place'][0]) || isset($_POST['Place'][1]) || isset($_POST['Place'][2]) ||
			    isset($_POST['Place'][3])) &&
			   (isset($_POST['Shiping'][0]) || isset($_POST['Shiping'][1]) || isset($_POST['Shiping'][2])) &&
			   (isset($_POST['Discount'][0]) || isset($_POST['Discount'][1]) || isset($_POST['Discount'][2]))
			   ){	
				$Place = array();
				$Shiping = array();
				$Discount = array();
				for($i=0;$i<4;$i++){
					if(isset($_POST['Place'][$i])){
					$Place[$i] = $_POST['Place'][$i];
					}
					else{
						$Place[$i] = '';
						echo "1";
					}
				}
				for($i=0;$i<3;$i++){
					if(isset($_POST['Shiping'][$i])){
					$Shiping[$i] = $_POST['Shiping'][$i];
					}
					else{
						$Shiping[$i] = '';
						echo "1";
					}
				}
				for($i=0;$i<3;$i++){
					if(isset($_POST['Discount'][$i])){
					$Discount[$i] = $_POST['Discount'][$i];
					}
					else{
						$Discount[$i] = '';
						echo "1";
					}
				}
				/*
				if(isset($_POST['Place'][2])){
				$tam2 = $_POST['Place'][2];
				}
				else{
					$tam2 = '';
					echo "1";
					}
				if(isset($_POST['Place'][3])){
				$tam3 = $_POST['Place'][3];
				}
				else{
					$tam3 = '';
					echo "1";
					}
				
				$export = $db ->executeQuery("SELECT * FROM products where 
				( Place = '$Place[0]' or Place = '$Place[1]' or Place = '$Place[2]' or Place = '$Place[3]' ) and 
				( Shiping = '$Shiping[0]' or Shiping = '$Shiping[1]' or Shiping = '$Shiping[2]') and 
				( Discount = '$Discount[0]' or Discount = '$Discount[1]' or Discount = '$Discount[2]')	 ");
		
			   }
			    */
   //     }
 //}
// search sidebar
		if(isset($_POST['Place'][0]) || isset($_POST['Place'][1]) || isset($_POST['Place'][2]) || isset($_POST['Place'][3])){
			$Place = array();
				for($i=0;$i<4;$i++){
					if(isset($_POST['Place'][$i])){
					$Place[$i] = $_POST['Place'][$i];
					
					}
					else{
						$Place[$i] = '';
						
					}
				}
			$export = $db ->executeQuery("SELECT * FROM products where 
				Place = '$Place[0]' or Place = '$Place[1]' or Place = '$Place[2]' or Place = '$Place[3]'" );
		}
		
		if(isset($_POST['Shiping'][0]) || isset($_POST['Shiping'][1]) || isset($_POST['Shiping'][2])){
			$Shiping = array();
				for($i=0;$i<3;$i++){
					if(isset($_POST['Shiping'][$i])){
					$Shiping[$i] = $_POST['Shiping'][$i];
					}
					else{
						$Shiping[$i] = '';
						
					}
				}
			$export = $db ->executeQuery("SELECT * FROM products where 
				Shiping = '$Shiping[0]' or Shiping = '$Shiping[1]' or Shiping = '$Shiping[2]' " );
		}
		
		if(isset($_POST['Discount'][0]) || isset($_POST['Discount'][1]) || isset($_POST['Discount'][2])){
			$Discount = array();
				for($i=0;$i<3;$i++){
					if(isset($_POST['Discount'][$i])){
					$Discount[$i] = $_POST['Discount'][$i];
					}
					else{
						$Discount[$i] = '';
					
					}
				}
			$export = $db ->executeQuery("SELECT * FROM products where 
				Discount = '$Discount[0]' or Discount = '$Discount[1]' or Discount = '$Discount[2]' " );
		}
		
		if(isset($_POST['Statuss'][0]) || isset($_POST['Statuss'][1]) ){
			$Statuss = array();
				for($i=0;$i<2;$i++){
					if(isset($_POST['Statuss'][$i])){
					$Statuss[$i] = $_POST['Statuss'][$i];
					}
					else{
						$Statuss[$i] = '';
					}
				}
			$export = $db ->executeQuery("SELECT * FROM products where 
				Statuss = '$Statuss[0]' or Statuss = '$Statuss[1]' " );
		}
		
		if( isset($_POST["Price_1"]) && isset($_POST["Price_2"]))  {
			if($_POST["Price_1"] != "" && $_POST["Price_2"] != "" ){
			$Price_1 = $_POST["Price_1"];
			$Price_2 = $_POST["Price_2"];
			
			$export = $db ->executeQuery("SELECT * FROM products where 
				Price BETWEEN $Price_1 AND $Price_2 " );
			}
		}
	
?>



   <!--main-->
    <div class="main">
  			<div class="main-conten">
            	<div class="title-1"><a href="#">MỚI NHẤT</a></div>
            	<div id="" class="product-1">
      					<?php
							if(mysqli_num_rows($export) > 0){
							// output data of each row
								while($row = mysqli_fetch_assoc($export)){
									echo "<div class='col-md-4 p-box'>
                        					 <div class='box'>
                           					 	<a href='product.php?id_index=".$row["ID"]."'>
													<img class='img1' src='".$row["ImageUrl"]."' />
													<img class='img2' src='".$row["ImageUrl_1"]."' />
												</a>
                           					    
												<div>
												<a class='a1' href='product.php?id_index=".$row["ID"]."'>".$row["Price"]." VNĐ </a>
                                				<a class='a1' href='product.php?id_index=".$row["ID"]."'>".$row["ProductName"]."</a>
                                  			   
                           				 		</div>
                            				 </div>
                       					  </div>     " ;
				
										}
							}
							else {
								echo "0 results";
							}
	
						?>
                 </div>
                 
                 <!-- Responsive -->
                
                 
                 
                 
                  <div class="clear"></div>
                  
                  <!-- Phan Trang -->
                 
                <ul class="p-page">Trang: 
				<?php
					$export = $db ->executeQuery("SELECT * FROM products");
					$page =  ceil(mysqli_num_rows($export)/24);
					
					//select page
					//	--------
					if(isset($_GET['page'])){
						$select = $_GET['page'];
					}
					else
						$select = '';
					// --------
						
					for($i = 1; $i <= $page;$i++ ){	
						if($i == $select)
							echo "<li class='page selected'><a href='index.php?page=$i'>".$i."</a></li>";
						else
							echo "<li class='page'><a href='index.php?page=$i'>".$i."</a></li>";
					}
					
				 ?>              
               	</ul>
            </div>
                
            <div id= "sidebar">
            	<div class="bxh"><a href="#">BỘ LỌC TÌM KIẾM</a></div>
                <div class="side">
                	<form action="index.php" method="post">
                	<div class="side-1">
                    	<ul>
                        	<li>Nợi Bán</li>
                        	<li><input type="checkbox" value="Hà Nội" name="Place[]"/><a href="#">Hà Nội</a></li>
                            <li><input type="checkbox" value="TP HCM" name="Place[]" /><a href="#">TP HCM</a></li>
                            <li><input type="checkbox" value="Đà Nẵng" name="Place[]" /><a href="#">Đà Nẵng</a></li>
                            <li><input type="checkbox" value="Cần Thơ" name="Place[]" /><a href="#">Cần Thơ</a></li>
                        </ul>
                     </div>
                     
                    <div class="side-1">
                    	<ul>
                        	<li>Đơn Vị Vận Chuyển</li>
                        	<li><input type="checkbox" value="Giao Hàng Tiết Kiệm" name="Shiping[]" /><a href="#">Giao Hàng Tiết Kiệm</a></li>
                            <li><input type="checkbox" value="Giao Hàng Nhanh" name="Shiping[]" /><a href="#">Giao Hàng Nhanh</a></li>
                            <li><input type="checkbox" value="Viettel Post" name="Shiping[]" /><a href="#">Viettel Post</a></li>         
                        </ul>
					</div>
                    
                    <div class="side-1">
                    	<ul>
                        	<li>Dịch Vụ Khuyến Mãi</li>
                        	<li><input type="checkbox" value="Miễn Phí Vận Chuyển" name ="Discount[]" /><a href="#">Miễn Phí Vận Chuyển</a></li>
                            <li><input type="checkbox" value="Đang Giảm Giá" name ="Discount[]" /><a href="#">Đang Giảm Giá</a></li>
                            <li><input type="checkbox" value="Bán Buôn/Sỉ" name ="Discount[]" /><a href="#">Bán Buôn/Sỉ</a></li>         
                        </ul>
					</div>
                      
                    <div class="side-1">
                    	<ul>
                        	<li>Tình Trạng</li>
                        	<li><input type="checkbox" value="Mới" name = "Statuss[]" /><a href="#">Sản Phẩm Mới</a></li>
                            <li><input type="checkbox" value="Đã Dùng" name = "Statuss[]" /><a href="#">Sản Phẩm Đã Dùng</a></li>
                        </ul>
					</div>
                    
                    <div class="side-1">
                    	<ul>
                        	<li>Khoảng Giá</li>
                        	<li><input name="Price_1" type="text" style="color:#000" placeholder="Từ" /> - </li>
                            <li><input name="Price_2" type="text" style="color:#000" placeholder="Đến" /></li>
                        </ul>
                    </div>
                    <div class="side-1">
                    		<button style="height:40px; margin-top:30px; width:120px; margin-left:50px;" >ÁP DỤNG</button>
                    </div>
                    </form>
                </div>
            </div>
    </div>
    
    <div class="clear"></div>
    
    <?php
	$db ->close();
	 ?>
  