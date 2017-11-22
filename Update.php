<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ChoDienTu.vn</title>

  <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
    <!-- Google Fonts -->
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto" >

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
      body {
        font-family: 'Roboto';
      }

      #left-sidebar, #main-content {
        height: 500px;
        border: 1px solid red;
        margin-bottom: 50px;
      }

      #footer {        
        text-align: center;
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-inverse">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#navbar-collapse"
            aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse">
          <!-- <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Sản Phẩm</a></li>
			<li><a href="#">About Us</a></li>            
          </ul> -->
        
            <!-- <li><a href="#">Đăng Ký</a></li> -->
         
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>

    <!-- Place your code at here! -->
    <div id="main">		
      <div class="container">
		<h2>UPDATE</h2>
		<br/>
        <?php
		include 'connect.php';
		$db = new DataAccessHelper;
		$db ->connect();
		$id_get = $_GET['id']; 
        $sql = $db ->executeQuery("SELECT * FROM products WHERE ID = $id_get");
		$row = mysqli_fetch_assoc($sql);
		?>
       	<form action="XuLy.php?id=<?php echo $row['ID'] ?>" method="post">
		<div class="form-group">
			<label for="txtProductName">Tên sản phẩm</label>
			<input type="text" class="form-control" name="Product_Name" id="txtProductName" value="<?php echo $row["ProductName"] ?>">
		</div>
		<div class="form-group">
			<label for="txtPrice">Giá bán</label>
			<input type="text" class="form-control" name="Price" id="txtPrice" value="<?php echo $row["Price"] ?>" >
		</div>
		<div class="form-group">
			<label for="txtCategory">Loại</label>
			<input type="text" class="form-control" name="Category" id="txtCategory" value="<?php echo $row["Category"] ?>">
		</div>
		<div class="form-group">
			<label for="txtImageLink">Link hình ảnh</label>
			<input type="text" class="form-control" name="Image_Link" id="txtImageLink" value="<?php echo $row["ImageUrl"] ?>">	  <div class="form-group">
			<label for="txtGender">Gender</label>
			<input type="text" class="form-control" name="Gender" id="txtGender" value="<?php echo $row["Gender"] ?>">
		</div>
        <div class="form-group">
			<label for="txtPlace">Place</label>
			<input type="text" class="form-control" name="Place" id="txtPlace" value="<?php echo $row["Place"] ?>">
		</div>
        <div class="form-group">
			<label for="txtShiping">Shiping</label>
			<input type="text" class="form-control" name="Shiping" id="txtShiping" value="<?php echo $row["Shiping"] ?>">
		</div>
        <div class="form-group">
			<label for="txtDiscount">Discount</label>
			<input type="text" class="form-control" name="Discount" id="txtDiscount" value="<?php echo $row["Discount"] ?>">
		</div>
        <div class="form-group">
			<label for="txStatuss">Statuss</label>
			<input type="text" class="form-control" name="Statuss" id="txtStatuss" value="<?php echo $row["Statuss"] ?>">
		</div>
		</div>
		<div class="input-group-btn">
			<button class="btn btn-danger" name="update" type="submit">UPDATE</button>
		</div>
        </form>
		<br/>        
      </div>
    </div>
  
    <!-- Footer -->
 

    <!-- DO NOT REMOVE THE 2 LINES -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>