<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
<title>Đơn Hàng</title>
<style>
.link a{
	color:blue;
	text-decoration:none;	
	}
.link{
	margin-bottom:20px;
	}
ul li{
	width:11%;
	list-style-type:none;
	display:inline-block;
	vertical-align: middle;
	margin-right:20px;
	text-align:center;
	}

ul li i{
	padding-right:10px;
	}
ul li img{
	width:40%;
	}

</style>
</head>

<body>

<div><h2>Quản Lí Đơn Hàng</h2></div>

<div>
	<hr size="1px" color="#CCCCCC" />
	<ul>
    	<li>Action</li>
        <li style="width:3%">ID</li>
        <li style="width:13%">Tên Sản Phẩm</li>
        
        <li>Giá</li>
        <li>Hình Ảnh</li>
        <li>Số lượng</li>
        <li>Người đặt hàng</li>
        <li>Ngày Tạo</li>
    </ul>
 
<?php
include 'connect.php';

$db = new DataAccessHelper;
$db ->connect();
$sqll = $db ->executeQuery("SELECT * FROM order_product");
if(mysqli_num_rows($sqll) > 0){
	// output data of each row
	while($row = mysqli_fetch_assoc($sqll)){
		echo "<hr size='1px' color='#CCCCCC' />
			  <ul>
					<li>" . "<a href='Xuly-donhang.php?id=$row[ID]'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
							  
					</li>
					<li style='width:3%'>".$row["ID"]."</li>
					<li style='width:13%'>".$row["ProductName"]."</li>
					
					<li>".$row["Price"]."</li>
					<li><img src='".$row["Image_Url"]."'/></li>
					<li>".$row["soluong"]."</li>
					<li>".$row["UserName"]."</li>
					<li>".$row["CreatedDate"]."</li>
					
			   </ul>"
			  ;
  	}
}
$db ->close(); 
?>
 <hr size='1px' color='#CCCCCC' />
</div>
</body>

</html>
