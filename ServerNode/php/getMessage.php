<?php
    require('connect.php');
    if($t){
        $json = file_get_contents('php://input');
        $obj = json_decode($json,true);
        $ID1 = $obj['ID1'];
        $ID2 = $obj['ID2'];
        $query = "SELECT * FROM `message` WHERE (ID1=$ID1 and ID2=$ID2) or(ID1=$ID2 and ID2=$ID1) GROUP BY STT DESC";
        $data = mysqli_query($conn,$query);
        $arrComment = array();
        while ($row=mysqli_fetch_assoc($data)) {
            array_push($arrComment, new COMMENT(
                $row['STT'],
                $row['ID1'],
                $row['ID2'],
                $row['Content'],
                $row['createdAt'],
            ));
        }
        
        echo json_encode($arrComment);        
        mysqli_close($conn);
    }else echo 'false';

    class COMMENT{
        function COMMENT($STT,$ID1,$ID2,$Content,$createdAt){
            $this->key=$STT;
            $this->ID1=$ID1;
            $this->ID2=$ID2;
            $this->text=$Content;
            $this->createdAt=$createdAt;
        }
    }
?>