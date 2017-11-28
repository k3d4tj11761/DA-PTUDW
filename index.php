<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bán giày thể thao</title>
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />

<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet" href="css/css.css" />
<style>
a{
	color:#FFF;
}
</style>
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
  

</head>

<body>
<?php
	include 'header.php';
	include 'jquery.php';
	include 'main-index.php';
	include 'footer.php';
?>
</body>
</html>