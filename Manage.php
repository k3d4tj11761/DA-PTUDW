<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
<title>Untitled Document</title>
<style>
.link a{
	color:blue;
	text-decoration:none;	
	}
.link{
	margin-bottom:20px;
	}
ul li{
	width:7%;
	list-style-type:none;
	display:inline-block;
	vertical-align: middle;
	margin-right:20px;
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

<div><h2>Quản Lí Sản Phẩm</h2></div>
<div class="link"><a href="Insert.html">Tạo mới đơn hàng</a></div>

<div>
	<hr size="1px" color="#CCCCCC" />
	<ul>
    	<li>Action</li>
        <li style="width:3%">ID</li>
        <li style="width:13%">ProductName</li>
        <li>Category</li>
        <li>Price</li>
        <li>ImageUrl</li>
        <li>Gender</li>
        <li>Place</li>
        <li>Shiping</li>
        <li>Discount</li>
        <li>Statuss</li>
    </ul>
 
<?php
include 'connect.php';

$db = new DataAccessHelper;
$db ->connect();
$sqll = $db ->executeQuery("SELECT * FROM products order by ID DESC");
if(mysqli_num_rows($sqll) > 0){
	// output data of each row
	while($row = mysqli_fetch_assoc($sqll)){
		echo "<hr size='1px' color='#CCCCCC' />
			  <ul>
					<li>" . "<a href='Xuly.php?id=$row[ID]'><i class='fa fa-trash-o' aria-hidden='true'></i></a>
							 <a href='Update.php?id=$row[ID]'><i class='fa fa-pencil' aria-hidden='true'></i></a>" . "
					</li>
					<li style='width:3%'>".$row["ID"]."</li>
					<li style='width:13%'>".$row["ProductName"]."</li>
					<li>".$row["Category"]."</li>
					<li>".$row["Price"]."</li>
					<li><img src='".$row["ImageUrl"]."'/></li>
					<li>".$row["Gender"]."</li>
					<li>".$row["Place"]."</li>
					<li>".$row["Shiping"]."</li>
					<li>".$row["Discount"]."</li>
					<li>".$row["Statuss"]."</li>
			   </ul>"
			  ;
  	}
}
else {
	echo "0 results";
}
$db ->close(); 
?>
 <hr size='1px' color='#CCCCCC' />
</div>
</body>

</html>
