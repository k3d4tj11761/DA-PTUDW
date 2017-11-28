<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/css.css" />
<?php
include 'connect.php';

$db = new DataAccessHelper;
$db ->connect();
//output database
$export = $db ->executeQuery("SELECT * FROM products order by ID DESC");

//output search
if(isset($_POST['search'])){
$search = $_POST['search'];
$export = $db ->executeQuery("SELECT * FROM products where ( Place like '%$search%' ) or (Price = '$search') or (Gender = '$search') order by ID DESC");
}

if(isset($_POST['hanoi'])){
$export = $db ->executeQuery("SELECT * FROM products where Place = 'Hà Nội' order by ID DESC");
}
if(isset($_POST['tphcm'])){
$export = $db ->executeQuery("SELECT * FROM products where Place = 'TP HCM' order by ID DESC");
}
if(isset($_POST['danang'])){
$export = $db ->executeQuery("SELECT * FROM products where Place = 'Đà Nẵng' order by ID DESC");
}
if(isset($_POST['cantho'])){
$export = $db ->executeQuery("SELECT * FROM products where Place = 'Cần Thơ' order by ID DESC");
}
if(isset($_POST['tphcm']) && isset ($_POST['hanoi']) ){
$export = $db ->executeQuery("SELECT * FROM products where Place = 'TP HCM' or Place = 'Hà Nội' order by ID DESC");
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
                           					 	<a href='product.php?id=".$row["ID"]."'><img src='".$row["ImageUrl"]."' /></a>
                           					    <div>
                                				<a class='a1' href='product.php'>".$row["ProductName"]."</a>
                                  			    <a class='a1' href='product.php'>".$row["Price"]." VNĐ </a>
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
                  
              
               	
            </div>
                
            <div id= "sidebar">
            	<div class="bxh"><a href="#">BỘ LỌC TÌM KIẾM</a></div>
                <div class="side">
                	<form action="index.php" method="post">
                	<div class="side-1">
                    	<ul>
                        	<li>Nợi Bán</li>
                        	<li><input type="checkbox" value="" name="hanoi"/><a href="#">Hà Nội</a></li>
                            <li><input type="checkbox" value="" name="tphcm" /><a href="#">TP HCM</a></li>
                            <li><input type="checkbox" value="" name="danang" /><a href="#">Đà Nẵng</a></li>
                            <li><input type="checkbox" value="" name="cantho" /><a href="#">Cần Thơ</a></li>
                        </ul>
                     </div>
                     
                    <div class="side-1">
                    	<ul>
                        	<li>Đơn Vị Vận Chuyển</li>
                        	<li><input type="checkbox" value="" /><a href="#">Giao Hàng Tiết Kiệm</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Giao Hàng Nhanh</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Viettel Post</a></li>         
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