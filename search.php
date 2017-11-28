<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
include 'connect.php';

$db = new DataAccessHelper;
$db ->connect();
$search = $_POST['search'];
$export = $db ->executeQuery("SELECT * FROM products where ( Place like '%$search%' ) or (Price = '$search') or (Gender = '$search') order by ID DESC");

	
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
                           					 	<a href='product.php'><img src='".$row["ImageUrl"]."' /></a>
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
    
    <div class="clear"></div>
    <?php
	$db ->close();
	 ?>