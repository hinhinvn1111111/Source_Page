<?php
    require('connect.php');
    if($t){
        $json = file_get_contents('php://input');
        $obj = json_decode($json,true);
        $IDSP = $obj['IDSP'];
        $IDLogin = $obj['IDLogin'];

        $query = "SELECT * FROM `giohang` WHERE IDSP=$IDSP and IDLogin=$IDLogin and isDelete=0";
        $data = mysqli_query($conn,$query);

        $a = mysqli_num_rows($data);

        if($a >= 1){
            $row=mysqli_fetch_assoc($data);
            $SL = $row['SoLuong'] + 1;
            // echo $SL;
            $query = "UPDATE giohang SET SoLuong= $SL WHERE IDSP=$IDSP and IDLogin=$IDLogin and isDelete=0 ";
            $data = mysqli_query($conn,$query);
            echo json_encode('add thành công');
        }else{
            $query = "INSERT INTO giohang(IDSP,IDLogin) VALUES($IDSP,$IDLogin)";
            $data = mysqli_query($conn,$query);
            echo json_encode('add thành công');
        }

        // $query = "INSERT INTO giohang(IDSP,IDLogin) VALUES($IDSP,$IDLogin)";
        // $data = mysqli_query($conn,$query);
        
        echo json_encode('add thành công');
        // mysqli_close($conn);
        mysqli_close($conn);
    }else echo json_encode('error');

?>