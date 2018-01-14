 
 <?php
	/* include 'connect.php';
	$db = new DataAccessHelper;
	$db->connect(); */
	if(isset($_GET['id_cart'])){
	$id_get_index = $_GET['id_cart'];
	}
	if(isset($_GET['id_index'])){
	$id_get_index = $_GET['id_index'];
	}
	if(isset($_GET['id_cart']) || isset($_GET['id_index']) )
	$sqll = $db ->executeQuery("SELECT * FROM products where ID = $id_get_index");
	$row = mysqli_fetch_assoc($sqll);
 ?>
 
 
 <!--main-->
    <div class="main">
  			<div class="main-conten">
         		<div class="title-1"><a href="#">CHI TIẾT SẢN PHẨM</a></div>
                   
               	<div class="product-2">
                	<div class="product-3">
                    	<ul>
                        	<li id="p1"><a href="#"><img src="<?php echo $row["ImageUrl"] ?>" /></a></li>
                            <li id="p2"><a href="#"><img src="<?php echo $row["ImageUrl_1"] ?>" /></a></li>
                            <li id="p3"><a href="#"><img src="<?php echo $row["ImageUrl_2"] ?>" /></a></li>
                            <li id="p4"><a href="#"><img src="<?php echo $row["ImageUrl_3"] ?>" /></a></li>
                            <li id="p5"><a href="#"><img src="<?php echo $row["ImageUrl_4"] ?>" /></a></li>
                        </ul>
                    </div>
                    <div id="p0" class="product-4">
                    	<a href="#"><img src="<?php echo $row["ImageUrl"] ?>" /></a>
                    </div>
                </div>
                <div class="product-5">
                	<p class="tieude"><?php echo $row["ProductName"] ?></p>
                    <p class="gia"><?php echo $row["Price"] ?> VNĐ</p>
                    <p class="gioithieu"><?php echo $row["Introduce"] ?></p>
                </div>
                <div class="clear"></div>
                <div class="product-6">
                	<div class="p-size">
                    <span style="padding-left:10px">Size</span>
                    <form method="post" action="giohang.php?id_product=<?php echo $row['ID'] ?>">
                    	<select name="size" >
                            <option value="38">38</option>
                            <option value="39">39</option>
                            <option selected="selected" value="40">40</option>
                            <option value="41">41</option>
                            <option value="42">42</option>
                            <option value="43">43</option>
                        </select> 
                    
                    </div>
                    <div class="p-them">
                    	<button class="them"><a>CHO VÀO GIỎ HÀNG</a></button>   
                     </div>
                    <div class="p-muangay">
                    	<button class="muangay"><a href="#">MUA NGAY</a></button>
                     </div>
                     </form>
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
	 <script>
  $(document).ready(function() {
    $('a.login-window').click(function() {
        //lấy giá trị thuộc tính href - chính là phần tử "#login-box"
        var loginBox = $(this).attr('href');
 
        //cho hiện hộp đăng nhập trong 300ms
        $(loginBox).fadeIn(300);
 
        // thêm phần tử id="over" vào sau body
        $('body').append('<div id="over">');
        $('#over').fadeIn(300);
 
        return false;
 });
 
 // khi click đóng hộp thoại
 $(document).on('click', "a.trolai, #over", function() {
       $('#over, .login').fadeOut(300 , function() {
           $('#over').remove();
       });
      return false;
 });
});
  </script>
<script>


$(document).ready(function(){
    $("#p1").hover(function(){
       document.getElementById("p0").innerHTML = '<a href="#"><img src="<?php echo $row["ImageUrl"] ?>" />';  
    },
    function(){
        
    }); 
});

$(document).ready(function(){
    $("#p2").hover(function(){
       document.getElementById("p0").innerHTML = '<a href="#"><img src="<?php echo $row["ImageUrl_1"] ?>" />';  
    },
    function(){
        
    }); 
});

$(document).ready(function(){
    $("#p3").hover(function(){
       document.getElementById("p0").innerHTML = '<a href="#"><img src="<?php echo $row["ImageUrl_2"] ?>" />';  
    },
    function(){
        
    }); 
});

$(document).ready(function(){
    $("#p4").hover(function(){
       document.getElementById("p0").innerHTML = '<a href="#"><img src="<?php echo $row["ImageUrl_3"] ?>" />';  
    },
    function(){
        
    }); 
});

$(document).ready(function(){
    $("#p5").hover(function(){
       document.getElementById("p0").innerHTML = '<a href="#"><img src="<?php echo $row["ImageUrl_4"] ?>" />';  
    },
    function(){
        
    }); 
});

</script>

