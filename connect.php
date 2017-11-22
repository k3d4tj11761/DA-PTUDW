<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

 class DataAccessHelper {
 	private $conn;

 	public function connect(){
 		$servername = "localhost";
 		$username = "root";
 		$password = "";
 		$dbname = "shopgiaythethao";

 		// Create connection
 		$GLOBALS['conn'] = new mysqli($servername, $username, $password, $dbname);
		mysqli_set_charset($GLOBALS['conn'], 'UTF8');

		// Check connection
 		if ($GLOBALS['conn']->connect_error) {
 			die("Connection failed: " . $conn->connect_error);
 		}
 		echo "";
 	}

 	public function executeNonQuery($sql){
 		if ($GLOBALS['conn']->query($sql) === TRUE) {
 			echo "Your query has been executed successfully";
 		} else {
 			echo "Error: " . $sql . "<br>" . $GLOBALS['conn']->error;
 		}
 	}

 	public function executeQuery($sql){
 		$result = $GLOBALS['conn']->query($sql);
 		return $result;
 	}

 	public function close(){
 		mysqli_close($GLOBALS['conn']);
 	}
 }

 ?> 
