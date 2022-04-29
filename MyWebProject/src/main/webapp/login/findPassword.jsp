<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.line{border-bottom: 1px solid #C1C1C1;}
button{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 2px;
		background-color: #666666; 
		border: 1px solid #666666; 
		color: white;
	}
	
div.footerinfo{
top: 1200px;
width: 100%;
height: 500px;

}
</style>
</head>
<body>
	<div style="height: 100px;"></div>
	 <form action="" method="post" class="form-inline" onsubmit="return check(this)" name="mfrm">
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">비밀번호 찾기</p>
      		<br>
      		<table class="table table-bordered" style="width:38%; border: 1px solid #C1C1C1;">
      		<tr>
	      		<td colspan="2" align="center" style="padding-top:20px;">
	      			<img src="../../member/memberaddimg1.PNG">
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" style="padding-top:20px;padding-bottom:20px; text-align:center; color:#6E6E6E; font-size: 2.5em;"><a>비밀번호가 기억나지 않으세요?</a></td>
      		</tr>
      		<tr>
      			<td colspan="2" style="padding-bottom:20px; text-align:center; color:gray; font-size: 1.7em;" class="line"><a>아래 인증 방법을 통해 비밀번호를 재설정 하실 수 있습니다.</a></td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;padding-bottom: 20px;">
      				<b>인증방법 선택</b>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" style="padding-left: 20px; padding-bottom:20px;  color:gray; font-size: 1.3em;"><a>본인 명의의 핸드폰, 이메일을 통한 인증 방법입니다.</a></td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center">
	      			 <table style="border: 1px solid #C1C1C1;" width="90%" height="200px;" >
	      			 	<tr>
			      			<td align="center" style="width: 50%;padding-top: 20px;"><img src="../../member/phoneicon.PNG" style="width:80px; height:120px;"></td>
			      			<td align="center" style="width: 50%;padding-top: 20px;"><img src="../../member/ipinicon.PNG"  style="width:140px; height:100px;"></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="padding-top: 40px;font-size: 2em;"><b>휴대폰 인증</b></td>
			      			<td align="center" style="padding-top: 40px;font-size: 2em;"><b>이메일(E-MAIL) 인증</b></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="font-size: 1.4em;padding-top: 10px;"><a>본인 명의의 핸드폰을 통해 인증합니다.</a></td>
			      			<td align="center" style="font-size: 1.4em;padding-top: 10px;"><a>본인 명의의 이메일을 통해 인증합니다.</a></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="font-size: 1.4em; padding-top: 25px;">
			      				<button class="hbtn"onclick="openHp()" ><b> 인증하기 </b></button>
			      			</td>
			      			<td align="center" style="font-size: 1.4em; padding-top: 25px;">
			      				<button class="ebtn"onclick="openEmail()" ><b> 인증하기 </b></button>
			      			</td>
			      		</tr>
			      		<tr style="height:30px;">
			      		<tr>
	      			 </table>
      			</td>
      		</tr>
      		<tr style="height:30px;">
      			
      		</tr>	
      		
      	</table>
     
      	</div>
      	<div style="height: 150px;">
      		<input type="hidden" name="key">
      	</div>
      </form>
</body>
</html>