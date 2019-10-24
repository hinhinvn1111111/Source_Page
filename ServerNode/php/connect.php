<?php
	$localhost = "localhost";
	$usn = "root";
	$password = "";
	$database = "mozala";
	$conn = mysqli_connect($localhost,$usn,$password,$database);
    mysqli_set_charset($conn,'utf8');
    $t = false;
    if ($conn->connect_error) {
        $t=false;
        // die("Connection failed: " . $conn->connect_error);
    } else{
        $t=true;
        // echo "Connected successfully";
    }
    
    
    // check($conn);
    

    // function check($conn){
    //     if ($conn->connect_error) {
    //         $t='false';
    //         die("Connection failed: " . $conn->connect_error);
            
    //     } 
    //     $t='true';
    //     echo "Connected successfully";
        
    // }
	
	// $json = file_get_contents('php://input');
	// $obj = json_decode($json,true);
	// $Username = $obj['Username'];
	//$IDP = $obj['IDP'];
	//$Content = $obj['content'];
	//$pw = $obj['pw'];
	// $query = "SELECT * FROM `giohang` WHERE IDLogin='1'";
	// $data = mysqli_query($conn,$query);
	
	
	// $arrComment = array();
	// while ($row=mysqli_fetch_assoc($data)) {
	// 	array_push($arrComment, new COMMENT(
	// 		$row['STT'],
	// 		$row['IDSP']
	// 	));
	// }
	
	// echo json_encode($arrComment);
	// // if($arrComment.length >0) echo "true";
	// // else echo "false";
	// class COMMENT{
	// 	function COMMENT($ID,$IDSP){
	// 		$this->ID=$ID;
	// 		$this->IDSP=$IDSP;
	// 	}
	// }
	
	// mysqli_close($conn);
?>