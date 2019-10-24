<?php
    require('connect.php');
    $json = file_get_contents('php://input');
    $obj = json_decode($json,true);
    $IDLogin = $obj['IDLogin'];
    $email = $obj['email'];
    $name = $obj['name'];
    $data = $obj['data'];
    $query = "UPDATE giohang SET isDelete=1,IsShipping=1 WHERE IDLogin=$IDLogin";
    $dt = mysqli_query($conn,$query);
    function renderHtmlEmail($name,$data) {
        ob_start();
        include ('template.php');
        return ob_get_clean();
    }
    
    // $image='data:image/jpeg;base64,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';
    // $name='Giày nike';
    include('class.smtp.php');
    include "class.phpmailer.php"; 
    $nFrom = "Mozala";    //mail duoc gui tu dau, thuong de ten cong ty ban
    $mFrom = 'helld0123456789@gmail.com';  //dia chi email cua ban 
    $mPass = 'Khongthenoi';    
    $nTo = $name; //Ten nguoi nhan
    $mTo = $email;   //dia chi nhan mail
    $mail             = new PHPMailer();
    // $body             = "<div style='width: 640px; font-family: Arial, Helvetica, sans-serif; font-size: 11px;'>
    //                         <h1>Bạn đã đặt hàng thành công</h1>
    //                         <div align='center'>
    //                             <a href='https://github.com/PHPMailer/PHPMailer/'>
    //                                 <img src='$image' height='300' width='300' alt='Mozala mailer'>
    //                             </a>
    //                             <p>$name</p>
    //                         </div>
    //                     <p>Cảm ơn đã mua sắm trên <strong>Mozala.</strong></div>";   // Noi dung email

    
    // $mail->AddEmbeddedImage("template.php", "meeting", "meeting.ics", "7bit", "text/calendar; charset=utf-8; method=REQUEST");
    $title = 'Mozala';   
    $mail->IsSMTP();             
    $mail->CharSet  = "utf-8";
    $mail->SMTPDebug  = 0;   
    $mail->SMTPAuth   = true;    
    $mail->SMTPSecure = "ssl";   
    $mail->Host       = "smtp.gmail.com";    
    $mail->Port       = 465;         
    $mail->isHTML(true);
    $mail->Username   = $mFrom;  
    $mail->Password   = $mPass;           
    $mail->SetFrom($mFrom, $nFrom);
    $mail->AddReplyTo('helld0123456789@gmail.com', 'Mozala'); 
    $mail->Subject    = $title;
    $mail->Body = renderHtmlEmail($name,$data);
    $mail->AddAddress($mTo, $nTo);
    
    if(!$mail->Send()) {
        echo 'Co loi!';
         
    } else {
         
        echo 'Đã send SMS test';
    }
?>