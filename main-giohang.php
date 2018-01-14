	<?php
	 /* include 'connect.php';
		$db = new DataAccessHelper;
		$db->connect(); */
	if(isset($_SESSION['error_order'])){
	echo "<script> alert('Xin Vui Lòng Đăng Nhập'); </script>";
	unset($_SESSION['error_order']);
	}
	?>
    <!--main-->
    <div class="main">
  			<div id="main-conten1">
         			<div class="title-1"><a href="#">GIỎ HÀNG</a></div>
 					<table class="p-giohang">
                    	<tr>
                        	<td class="td1">Mục</td>
                			<td class="td2">Tên Sản Phẩm</td>
                    		<td class="td3">Đơn Giá</td>
                    		<td class="td4">Số Lượng</td>
                           	<td class="td6">Size</td>
                            <td class="td5">Xóa</td>
                   	 	</tr>	                  
                	<!-- <div class="p-title">
               	 		<ul>
                        	<li>Mục</li>
                			<li>Tên Sản Phẩm</li>
                    		<li>Đơn Giá</li>
                    		<li>Số Lượng</li>
                            <li style="width:30px"></li>
                   	 	</ul>
              	 	</div>
                    -->
               		
                    <?php
						
						if(isset($_SESSION['ADD_'])){
						/* $i = 0;
						$ArrayPrice[$i] = 0;
						*/
						
						for($k = 0;$k<count($_SESSION['ADD_']);$k++){
							
							$id_session = $_SESSION['ADD_'][$k]['id'];
							$sqll = $db->executeQuery("SELECT * FROM products where ID = '$id_session'");
								
								if(mysqli_num_rows($sqll) > 0){
									while ($row = mysqli_fetch_assoc($sqll)){
										$ArrayPrice[$i] = $row["Price"];
										$i++;
										echo '
					<tr>	
                        	<td class="td1"><a href="product.php?id_cart='.$row['ID'].'"><img src="'.$row['ImageUrl'].'" /></a></td>
                			<td class="td2">'.$row['ProductName'].'</td>
                    		<td class="td3">'.$row['Price'].' VNĐ</td>
                    		<td class="td4">
							
                            	<select name="select">
                                	<option value="">'.$_SESSION['ADD_'][$k]['soluong'].'</option>
                            	</select>

							
                            </td>
							<td class="td6">'.$_SESSION['ADD_'][$k]['size'].'</td>
							<td class="td5"><a style="color:black" href="giohang-xuli.php?delete_cart='.$row['ID'].'"><i class="fa fa-times" aria-hidden="true"></i></td></a>
                   </tr>
										';
										
										
					
								}
							}
						}
					/* $tongtien = 0;
					for($i = 0;$i<count($ArrayPrice);$i++){
					$tongtien = $ArrayPrice[$i] + $tongtien ;
					} */
				}
					
                	?>
                    </table>
             </div>
                
                
            <div id= "sidebar1">
            	<div class="t1" style="color:#FFF; text-align:center; padding-top:10px;">
                	THANH TOÁN SẢN PHẨM	
                </div>
            	<div class="p-tong">
                	<p>TỔNG CỘNG</p>
                    <p><?php if(isset($_SESSION['ADD_'])){ echo $tongtien; } ?> VNĐ</p>
                </div>
                <div class="p-tong">
                	<p>PHÍ VẬN CHUYỂN</p>
                    <p><?php if(isset($_SESSION['ADD_'])){ echo $tienship;  } ?> VNĐ</p>
                </div>
                <div class="p-tong">
                	<p>GRAND TOTAL</p>
                    <p><?php if(isset($_SESSION['ADD_'])){ echo $tongtien + $tienship; }?> VNĐ</p>
                </div>
                <div class="clear"></div>
                <div class="p-tong1">
                	<div class="tt"><a href="Insert.php?ac=order">THANH TOÁN</a></div>
                </div>
                <div class="p-tong1">	
                	<div class="ctsp"><a href="index.php">CHỌN THÊM SẢN PHẨM</a></div>
                </div>
           </div>
    </div>
    
    <div class="clear"></div>
    <?php
	 $db->close();
 //print_r($_SESSION);
	?>
  

