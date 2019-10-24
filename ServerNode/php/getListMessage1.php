<?php
    require('connect.php');
    if($t){
        $json = file_get_contents('php://input');
        $obj = json_decode($json,true);
        $IDLogin = $obj['IDLogin'];
        $query = "SELECT * FROM `message`,login WHERE (message.ID1=login.ID or message.ID2=login.ID) and (message.ID1=$IDLogin or message.ID2=$IDLogin) GROUP BY login.ID";
        $data = mysqli_query($conn,$query);
        $arrComment = array();
        while ($row=mysqli_fetch_assoc($data)) {
            array_push($arrComment, new COMMENT(
                $row['ID'],
                $row['Ten'],
                $row['Email'],
                $row['Image']
            ));
        }
        
        echo json_encode($arrComment);        
        mysqli_close($conn);
    }else echo 'false';

    class COMMENT{
        function COMMENT($ID,$ThuongHieu,$DiaDiem,$Image){
            $this->key=$ID;
            $this->ThuongHieu=$ThuongHieu;
            $this->DiaDiem=$DiaDiem;
            $this->Image=$Image;
        }
    }
?>
