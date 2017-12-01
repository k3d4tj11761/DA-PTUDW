	<?php
	 /* include 'connect.php';
		$db = new DataAccessHelper;
		$db->connect(); */
	?>
    <!--main-->
    <div class="main">
  			<div id="main-conten1">
         			<div class="title-1"><a href="#">GIỎ HÀNG</a></div>
                   
                	<div class="p-title">
               	 		<ul>
                        	<li>Mục</li>
                			<li>Tên Sản Phẩm</li>
                    		<li>Đơn Giá</li>
                    		<li>Số Lượng</li>
                            <li style="width:30px"></li>
                   	 	</ul>
              	 	</div>
                    
               		
                    <?php
						$i = 0;
						$ArrayPrice[$i] = 0;
						foreach($_SESSION as $name => $value){
							$sqll = $db->executeQuery("SELECT * FROM products where ID = $value ");
								if(mysqli_num_rows($sqll) > 0){
									while ($row = mysqli_fetch_assoc($sqll)){
										$ArrayPrice[$i] = $row["Price"];
										$i++;
										echo' 
					
                    <div class="p-giohang">
                		<ul>
                        	<a href="product.php?id='.$row['ID'].'"><li><img src="'.$row['ImageUrl'].'"</li></a>
                			<li class="g1">'.$row['ProductName'].'</li>
                    		<li class="g2">'.$row['Price'].' VNĐ</li>
                    		<li class="g2">
                            	<select>
                                	<option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                            	</select>
                            </li>
							<a style="color:black" href="giohang-xuli.php?delete_cart='.$row['ID'].'"><li class="g1" style="width:30px"><i class="fa fa-times" aria-hidden="true"></i></li></a>
                    	</ul>
               		</div>';
								}
							}
						}
					$tongtien = 0;
					for($i = 0;$i<count($ArrayPrice);$i++){
					$tongtien = $ArrayPrice[$i] + $tongtien ;
					}
					
					
                	?>
             </div>
                
                
            <div id= "sidebar1">
            	<div class="t1">	
                </div>
            	<div class="p-tong">
                	<p>TỔNG CỘNG</p>
                    <p><?php echo $tongtien; ?></p>
                </div>
                <div class="p-tong">
                	<p>PHÍ VẬN CHUYỂN</p>
                    <p>MIỄN PHÍ</p>
                </div>
                <div class="p-tong">
                	<p>GRAND TOTAL</p>
                    <p><?php echo $tongtien; ?></p>
                </div>
                <div class="clear"></div>
                <div class="p-tong1">
                	<div class="tt"><a href="#">THANH TOÁN</a></div>
                </div>
                <div class="p-tong1">	
                	<div class="ctsp"><a href="index.php">CHỌN THÊM SẢN PHẨM</a></div>
                </div>
           </div>
    </div>
    
    <div class="clear"></div>
    <?php
	 $db->close();
	?>