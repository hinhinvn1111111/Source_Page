<?php
    require('connect.php');
    if($t){
        $json = file_get_contents('php://input');
        $obj = json_decode($json,true);
        $IDSP = $obj['IDSP'];
        $IDLogin = $obj['IDLogin'];
        $SoLuong = $obj['SoLuong'];

        $query = "UPDATE `giohang` SET SoLuong=$SoLuong WHERE IDSP=$IDSP and IDLogin=$IDLogin and isDelete=0";
        $data = mysqli_query($conn,$query);

        echo json_encode("Thành công");            
        mysqli_close($conn);
    }else echo json_encode('error');

?>