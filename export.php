<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
include 'connect.php';

$db = new DataAccessHelper;
$db ->connect();
$export = $db ->executeQuery("SELECT * FROM products");
if(mysqli_num_rows($export) > 0){
	// output data of each row
	while($row = mysqli_fetch_assoc($export)){
		echo $row["ProductName"] . "ImageUrl: <img src='" . $row["ImageUrl"] . " ' ><br>" ;
	}
}
else {
	echo "0 results";
}
	
$db ->close();
echo "export successfully";	 
?>
