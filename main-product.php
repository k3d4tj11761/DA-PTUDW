 <?php
 include 'connect.php';

	$db = new DataAccessHelper;
	$db ->connect();
	$id_get = $_GET['id'];
	$sqll = $db ->executeQuery("SELECT * FROM products where ID = $id_get");
	$row = mysqli_fetch_assoc($sqll);
 ?>
 
 
 
 <!--main-->
    <div class="main">
  			<div class="main-conten">
         		<div class="title-1"><a href="#">CHI TIẾT SẢN PHẨM</a></div>
                   
               	<div class="product-2">
                	<div class="product-3">
                    	<ul>
                        	<li id="p1"><a href="#"><img src="img/1.jpg" /></a></li>
                            <li id="p2"><a href="#"><img src="img/2.jpg" /></a></li>
                            <li id="p3"><a href="#"><img src="img/3.jpg" /></a></li>
                            <li id="p4"><a href="#"><img src="img/4.jpg" /></a></li>
                            <li id="p5"><a href="#"><img src="img/5.jpg" /></a></li>
                        </ul>
                    </div>
                    <div id="p0" class="product-4">
                    	<a href="#"><img src="<?php echo $row["ImageUrl"] ?>" /></a>
                    </div>
                </div>
                <div class="product-5">
                	<p class="tieude">Giày Thể Thao 1</p>
                    <p class="gia">100.000 VNĐ</p>
                    <p class="gioithieu">Trông trẻ trung và năng động hơn với giày thể thao thiết kế bởi Native. Giày có thiết kế đơn giản, màu sắc trơn dễ 					  										phối cùng trang phục.<br />

										- Chất liệu EVA<br />
										- Giày mũi tròn<br />
										- Thiết kế thắt dây<br />
										- Đục lỗ họa tiết tạo cảm giác thông thoáng<br />
										- Mặt lót in tên thương hiệu</p>
                </div>
                <div class="clear"></div>
                <div class="product-6">
                	<div class="p-size">
                    	<select>
                        	<option>size</option>
                            <option>39</option>
                            <option>40</option>
                            <option>41</option>
                            <option>42</option>
                            <option>43</option>
                            <option>44</option>
                        </select> 
                    </div>
                    <div class="p-them">
                    	<div class="them"><a href="#">CHO VÀO GIỎ HÀNG</a></div>
                     </div>
                    <div class="p-muangay">
                    	<div class="muangay"><a href="#">MUA NGAY</a></div>
                     </div>
                </div>
            </div>
                
            <div id= "sidebar">
            	<div class="bxh"><a href="#">BỘ LỌC TÌM KIẾM</a></div>
                <div class="side">
                
                	<div class="side-1">
                    	<ul>
                        	<li>Nợi Bán</li>
                        	<li><input type="checkbox" value="" /><a href="#">Hà Nội</a></li>
                            <li><input type="checkbox" value="" /><a href="#">TP HCM</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Đà Nẳng</a></li>
                            <li><input type="checkbox" value="" /><a href="#">Cần Thơ</a></li>
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
                    
                </div>
            </div>
    </div>
    
    <div class="clear"></div>
    <?php
	$db->close();
	 ?>