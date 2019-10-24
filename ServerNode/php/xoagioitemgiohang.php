<?php
    require('connect.php');
    if($t){
        // $conn.open();
        $json = file_get_contents('php://input');
        $obj = json_decode($json,true);
        $IDSP = $obj['IDSP'];
        $IDLogin = $obj['IDLogin'];
        // $sex = $obj['sex'];
        // $email = $obj['email'];
        $query = "UPDATE giohang SET isDelete=1 WHERE IDSP=$IDSP AND IDLogin=$IDLogin";
        
        mysqli_query($conn,$query);

        echo json_encode('xóa thành công');
    }
    else{
        echo json_encode("error");
    }
?>