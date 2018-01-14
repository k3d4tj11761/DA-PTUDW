<?php
if(isset($_SESSION['User_Name'])){
$get_username = $_SESSION['User_Name'];
$export = $db ->executeQuery("SELECT * FROM account where UserName = '$get_username' "); 
$row = (mysqli_fetch_assoc($export));
}
?>

            
             <div class="conten-account">
            	<div class="tttk">THÔNG TIN CÁ NHÂN</div>
                <div class="tttk1">
                	<p>Tên:<span><?php echo $row['UserName']; ?></span></p>
                	<p>Email:<span style="padding-left:183px"> <?php echo $row['Email']; ?></span></p>
					<p>Số Điện Thoại:<span  style="padding-left:126px"> <?php echo $row['SDT']; ?></span></p>
					<p>Địa Chỉ: <span style="padding-left:170px"><?php echo $row['DiaChi']; ?></span></p>
							
                </div>
                
            </div>
