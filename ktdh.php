            
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
<title>Kiểm Tra Đơn Hàng</title>
<style>
.link a{
	color:blue;
	text-decoration:none;	
	}
.link{
	margin-bottom:20px;
	}
.tttk1 ul li{
	width:10%;
	list-style-type:none;
	display:inline-block;
	vertical-align: middle;
	text-align:center;
	margin-right:20px;
	}

.tttk1 ul li i{
	color:#00F;
	}
.tttk1 ul li img{
	width:80%;
	}

</style>
</head>

<body>
<div class="conten-account">
    <div class="tttk">THÔNG TIN ĐƠN HÀNG</div>
    <div class="tttk1">
    <div>
	<ul>
    	
        <li style="width:20%">Tên Sản Phẩm</li>
        
        <li>Giá</li>
        <li>Hình ảnh</li>
        <li>Số lượng</li>
        <li>Size</li>
        <li style="width:10%">Ngày Đặt Hàng</li>
    </ul>
 
			<?php
			if(isset($_SESSION['User_Name'])){
            $get = $_SESSION['User_Name'];
            $sqll = $db ->executeQuery("SELECT * FROM order_product where '$get' = UserName ");
            if(mysqli_num_rows($sqll) > 0){
                // output data of each row
                while($row = mysqli_fetch_assoc($sqll)){
                    echo "<hr size='1px' color='#CCCCCC' />
                          <ul> 
                            
                                <li style='width:20%'>".$row["ProductName"]."</li>
                                
                                <li>".$row["Price"]."</li>
                                <li><img src='".$row["Image_Url"]."'/></li>
                                <li>".$row["soluong"]."</li>
                				<li>".$row["size"]."</li>                
                                <li style='width:10%'>".$row["CreatedDate"]."</li>
                              
                           </ul>"
                          ;
                }
            }
			}
            $db ->close(); 
            ?>
            </div>
                	
							
       </div>
                
   </div>




</body>

</html>