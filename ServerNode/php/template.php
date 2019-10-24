<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<style>
		.header{
			font-family: Avenir,Helvetica,sans-serif;
		    box-sizing: border-box;
		    padding: 25px 0;
		    text-align: center;height: 50px;
		    background-color: #f5f8fa;	
		}
		a{
			font-family: Avenir,Helvetica,sans-serif;
		    box-sizing: border-box;
		    color: #bbbfc3;
		    font-size: 19px;
		    font-weight: bold;
		    text-decoration: none;
		}
		p{
			font-family: Avenir,Helvetica,sans-serif;
		    box-sizing: border-box;
		    line-height: 1.5em;
		    margin-top: 0;
		    color: #aeaeae;
		    font-size: 12px;
		    text-align: center;
            
		}
		.text{
			font-family: Avenir,Helvetica,sans-serif;
			color: #74787e;
			box-sizing: border-box;
			font-size: 16px;
			line-height: 1.5rem;
		}
        .text1{
			font-family: Avenir,Helvetica,sans-serif;
			color: #74787e;
			box-sizing: border-box;
			font-size: 16px;
			line-height: 1.5rem;
            margin-top: 20px;
            text-align: right;
		}
		.boder {  
		  border: 1px solid #ddd;
		  text-align: center;
		}

		table {
		  border-collapse: collapse;
		  width: 100%;
		}

		th, td {
		  padding: 15px;
		}
	</style>

</head>
<body>
	<table style="font-family: Avenir,Helvetica, sans-serif;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    width: 100%;">
		<tbody>
			<!-- <tr>
				<td class="header"><a style="color: #bbbfc3;" href="#">Mozala</a></td>
			</tr> -->
			<tr>
				<td style="padding: 25px 25px 0 25px;">

					<div class="text">Xin chào bạn, <?php echo $name ?> <span style="
    font-size: 18px;"> !</span></div>
					<div class="text">Bạn đã đặt hàng thành công.</div>
					<div class="text">Thông tin đơn hàng bạn:</div>
					
				</td>
			</tr>
			<tr>
				<td style="padding:0 25px 25px 25px;">
					<table class="boder" style="color: #74787e;">
					    <thead>
					      <tr>
                            <th class="boder">STT</th>
                            <th class="boder">Ảnh</th>
					        <th class="boder">Tên sản phẩm</th>
					        <th class="boder">Đơn giá</th>
					        <th class="boder">Số lượng</th>
					        <th class="boder">Thành tiền</th>
					      </tr>
					    </thead>
					    <tbody>
					    	<?php $tong=0; for($i=0;$i<count($data);$i++){ ?>

                            <tr style="text-align: center;">
                                <td class="boder"><?php echo $i+1 ?></td>
							    <td class="boder"><?php echo "<img src=".$data[$i]['Anh']." height='100' width='100' alt='Mozala mailer'>" ?></td>					    
                                <td class="boder"><?php echo $data[$i]['TenSP']?></td>	
                                <td class="boder"><?php echo $data[$i]['GiaSP']?></td>		
                                <td class="boder"><?php echo $data[$i]['SoLuong']?></td>	
                                <td class="boder"><?php echo ((int)$data[$i]['GiaSP'] * (int)$data[$i]['SoLuong'])?></td>
                                <?php $tong += ((int)$data[$i]['GiaSP'] * (int)$data[$i]['SoLuong'])?>			    
						    </tr>
                            <?php } ?>
					    </tbody>
					 </table>

					<div class="text1">Tổng tiền: <span style="color: #2f3133;
    font-size: 19px;"><?php echo $tong ?> VNĐ</span></div>
				</td>
			</tr>
			<!-- <tr style="background-color: #f5f8fa;">
				<td class="header"><p>© 2019 Mozala. All rights reserved.</p></td>
			</tr> -->
		</tbody>
	</table>
	
</body>
</html>