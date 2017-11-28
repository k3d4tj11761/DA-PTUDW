<link rel="stylesheet" href="css/css.css" />
<?php include 'account.php'; ?>
<!-- header -->
    <div class="header">	
     	<div class="header-left" >
        	<!-- logo -->
          <div class="p-logo">
            <div class="logo">
				<a href="index.php"><img src="img/logo-lk (1).png"/></a>
           	 </div>
           </div>
                
            <!-- Tim Kiem -->
         <div class="p-search"> 
            <div class="search">
            <form action="index.php" method="post">
            <input type="text" name="search" size="40" placeholder="Nhập nội dung cần tìm" />
	    
 	         <button>
           	 <a href="#"><span style="color:#000" class="fa fa-search" aria-hidden="true"></span></a>
            </button>
            </form>
           </div>
		</div>
     </div>
        <!-- Tài khoản -->
     <div class="header-right" >
        	
        	<div class="p-link">
            	<div class="link">
            	<a href="https://www.facebook.com"><span style="color:#000; font-size:20px" class="fa fa-facebook" aria-hidden="true"></span></a>
				<a href="https://www.google.com.vn"><span style="color:#000;margin-left:5px; font-size:20px" class="fa fa-twitter fa" aria-hidden="true"></span></a>
                <a href="https://twitter.com"><span style="color:#000;margin-left:5px; font-size:20px"  class="fa fa-google-plus fa" aria-hidden="true"></span></a>
                <a href="https://www.youtube.com/"><span style="color:#000; margin-left:5px; font-size:20px"  class="fa fa-youtube fa" aria-hidden="true"></span></a>
                </div>
            </div>
            
           
            
            <div  id="p-account">
            <ul>
           		<li class="account"><a href="#"><i  class="fa fa-user fa-2x" aria-hidden="true"></i></a>
                	
                     <?php
						if(isset($_COOKIE['User_Name'])){
							echo '  <ul class="sub-account">
										<div>XIN CHÀO '.$_COOKIE['User_Name'].'!</div>
                    					<li><a href="#">TÀI KHOẢN</a></li>
                        	
                        				<li><a href="account-xuli.php?dx=dangxuat">ĐĂNG XUẤT</a></li>
                    				</ul>';
						}
						else
							echo '
                   					 <ul class="sub-account">
									 	 <div>Xin Chào</div>
                    			  		 <li><a class="login-window" href="#login-box-dn">ĐĂNG NHẬP</a></li>
                        		 
                      					 <li><a class="login-window" href="#login-box-dk">ĐĂNG KÝ</a></li>
                    				 </ul> ';
					?>
                </li>
                
                <li class="bag"><a href="giohang.php"><i  class="fa fa-shopping-bag fa-2x" aria-hidden="true"></i></a></li>
            
        	</ul> 
            </div>
	</div>
</div>
 
 <!-- MENU -->
  <div id="menu">
  <ul>
    <li><a href="index.php">TRANG CHỦ</a></li>
    <li><a href="#">NAM</a>

    	<ul class="sub-menu" id="menu1">
        
        	<li><a href="#">Chuck Taylor</a></li>
            	<li><a href="#">Giày Vans</a></li>
            	<li><a href="#">Freestyle</a></li>
            	<li><a href="#">Nike Blazer</a></li>
            	<li><a href="#">Jack Purcell</a></li>
            	<li><a href="#">Superstar</a></li>
            	<li><a href="#">Dr.Martens</a></li>
            	<li><a href="#">Puma Suede</a></li>
              	<li><a href="#">Nike Air Max</a></li>
            	<li><a href="#">Superga</a></li>
                <li><a href="#">Retro Jordan’s</a></li>
                <li><a href="#">PF Flyers</a></li>
                <li><a href="#">Giày Clarks</a></li>
                <li><a href="#">Retro Classic</a></li>
              
            
        </ul>
    </li>
    <li><a href="#">NỮ</a>
      <ul class="sub-menu" id="menu1">
        
        		<li><a href="#">Chuck Taylor</a></li>
            	<li><a href="#">Giày Vans</a></li>
            	<li><a href="#">Freestyle</a></li>
            	<li><a href="#">Nike Blazer</a></li>
            	<li><a href="#">Jack Purcell</a></li>
            	<li><a href="#">Superstar</a></li>
            	<li><a href="#">Dr.Martens</a></li>
            	<li><a href="#">Puma Suede</a></li>
              	<li><a href="#">Nike Air Max</a></li>
            	<li><a href="#">Superga</a></li>
                <li><a href="#">Retro Jordan’s</a></li>
                <li><a href="#">PF Flyers</a></li>
                <li><a href="#">Giày Clarks</a></li>
                <li><a href="#">Retro Classic</a></li>
              
            
        </ul>
    </li>
    
    <li><a href="#">TRẺ EM</a>
      <ul class="sub-menu" id="menu1">
        
        		<li><a href="#">Chuck Taylor</a></li>
            	<li><a href="#">Giày Vans</a></li>
            	<li><a href="#">Freestyle</a></li>
            	<li><a href="#">Nike Blazer</a></li>
            	<li><a href="#">Jack Purcell</a></li>
            	<li><a href="#">Superstar</a></li>
            	<li><a href="#">Dr.Martens</a></li>
            	<li><a href="#">Puma Suede</a></li>
              	<li><a href="#">Nike Air Max</a></li>
            	<li><a href="#">Superga</a></li>
                <li><a href="#">Retro Jordan’s</a></li>
                <li><a href="#">PF Flyers</a></li>
                <li><a href="#">Giày Clarks</a></li>
                <li><a href="#">Retro Classic</a></li>
                
        </ul>
    </li>
    <li><a href="#">THƯƠNG HIỆU</a>
    <ul class="sub-menu" id="menu4">

        		<li><a href="#">Levis</a></li>
            	<li><a href="#">Persol</a></li>
            	<li><a href="#">Nike</a></li>
            	<li><a href="#">Edwin</a></li>
            	<li><a href="#">New Balance</a></li>
            	<li><a href="#">Jack & Jones</a></li>
            	<li><a href="#">Ray-Ban</a></li>
               	<li><a href="#">Wood Wood</a></li>
                <li><a href="#">Paul Smith</a></li>    
                
        </ul>
    </li>
    <li><a href="#">PHỔ BIẾN</a></li>
    <li><a href="#">PHỤ KIỆN</a></li>
    <li><a href="#">BÁN CHẠY</a></li>
    <li><a href="#">KHÁC</a></li>
  </ul>
</div>

</div>
