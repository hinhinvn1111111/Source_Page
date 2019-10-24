<?php
    require('connect.php');
    if($t){
        $json = file_get_contents('php://input');
        $obj = json_decode($json,true);
        $IDLogin = $obj['IDLogin'];
        $query = "SELECT * FROM `giohang`,`login`,`sanpham` WHERE IDLogin=2 and giohang.IDLogin=login.ID and giohang.IDSP=sanpham.IDSP and giohang.isDelete=0";
        $data = mysqli_query($conn,$query);
        $arrComment = array();
        while ($row=mysqli_fetch_assoc($data)) {
            array_push($arrComment, new COMMENT(
                $row['STT'],
                $row['TenSP'],
                $row['GiaSP'],
                $row['DacTinh'],
                $row['MoTaSP'],
                $row['IDDM'],
                $row['Anh'],
                $row['IDSP'],
                $row['IDLogin'],
                $row['SoLuong']
            ));
        }
        echo json_encode($arrComment);        
        mysqli_close($conn);
    }else echo 'false';

    class COMMENT{
        function COMMENT($ID,$TenSP,$GiaSP,$DacTinh,$MoTaSP,$IDDM,$Anh,$IDSP,$IDLogin,$SoLuong){
            $this->Key=$ID;
            $this->TenSP=$TenSP;
            $this->GiaSP=$GiaSP;
            $this->DacTinh=$DacTinh;
            $this->MoTaSP=$MoTaSP;
            $this->IDDM=$IDDM;
            $this->Anh=$Anh;
            $this->IDSP=$IDSP;
            $this->IDLogin=$IDLogin;
            $this->SoLuong=$SoLuong;
        }
    }
?>