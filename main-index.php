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
	$start = ($start*12)-12;
}
$export = $db ->executeQuery("SELECT * FROM products Limit $start,12");

//output search
if(isset($_POST['search'])){
$search = $_POST['search'];
$export = $db ->executeQuery("SELECT * FROM products where ( Place like '%$search%' ) or (Price = '$search') or (Gender  like '%$search%') or (ProductName like '%$search%') or (Category like '%$search%') or (Shiping like '%$search%') or (Discount like '%$search%') or (Statuss like '%$search%') ");
}

//if (isset($_POST['Place'])) {	
//	     foreach($_POST['Place'] as $key => $value) {
         	//Xử lý các phần tử được chọn
		//print_r ($_POST['Place']);
		//print_r ($_POST['Shiping']);
		//	echo $value;
		//	echo 1;
		
		// Sidebar-Search
			if(isset($_POST['Place'][0])){
				$tam = $_POST['Place'][0];
				$export = $db ->executeQuery("SELECT * FROM products where Place = '$tam' Limit");
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
			if(isset($_POST['Place'][3])){
				$export = $db ->executeQuery("SELECT * FROM products");
			}
			
   //     }
 //}

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
                           					 	<a href='product.php?id_index=".$row["ID"]."'><img src='".$row["ImageUrl"]."' /></a>
                           					    <div>
												<a class='a1' href='product.php'>".$row["Price"]." VNĐ </a>
                                				<a class='a1' href='product.php'>".$row["ProductName"]."</a>
                                  			   
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
                 
                  <div class="clear"></div>
                  <!-- Phan Trang -->
                <div>Trang: 
				<?php
					$export = $db ->executeQuery("SELECT * FROM products");
					$page =  ceil(mysqli_num_rows($export)/12);
					for($i = 1; $i <= $page;$i++ ){
						echo "<a class='page' href='index.php?page=$i'>".$i."</a>";
					}
				 ?>              
               	</div>
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
                        	<li><input type="checkbox" value="" /><a href="#">Miễn Phí Vận Chuyển</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Đang Giảm Giá</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Bán Buôn/Sỉ</a></li>         
                        </ul>
					</div>
                      
                    <div class="side-1">
                    	<ul>
                        	<li>Tình Trạng</li>
                        	<li><input type="checkbox" value="" /><a href="#">Sản Phẩm Mới</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Sản Phẩm Đã Dùng</a></li>
                        </ul>
					</div>
                    
                    <div class="side-1">
                    	<ul>
                        	<li>Khoảng Giá</li>
                        	<li><input type="text" style="color:#000" placeholder="Từ" /> - </li>
                            <li><input type="text" style="color:#000" placeholder="Đến" /></li>
                        </ul>
                    </div>
                    <div class="side-1">
                    		<button style="height:40px; margin-top:30px; width:120px; margin-left:50px;" name="timkiem">ÁP DỤNG</button>
                    </div>
                    </form>
                </div>
            </div>
    </div>
    
    <div class="clear"></div>
    
    <?php
	$db ->close();
	 ?>