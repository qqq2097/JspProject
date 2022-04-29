<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">


 
function passcheck() {
	var pass1 = $("input[name=pass1]").val();
	var pass2 = $("input[name=pass2]").val();


	 if(pass1!=pass2){
		alert("확인 비밀번호가 맞지 않습니다.");
		document.getElementById("pass1").focus();
		return false;
	}
	if(pass1==""){
		alert("비밀번호를 입력하세요.");
		document.getElementById("pass1").focus();
		return false;
	}
	if(pass2==""){
		alert("비밀번호를 입력하세요.");
		document.getElementById("pass2").focus();
		return false;
	}

return true;
}
//데이터 추가 전 필수 항목 비어있는지 확인

</script>  
<style type="text/css">
.line{border-bottom: 1px solid #C1C1C1;}
.cancelbtn{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 2px;
		background-color: #666666; 
		border: 1px solid #666666; 
		color: white;
}
.enterbtn{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 2px;
		background-color: #222222; 
		border: 1px solid #222222; 
		color: white;
}
	
div.footerinfo{
top: 1500px;
width: 100%;
height: 500px;

}
li{
		list-style: disc;
		margin-bottom: 6px;
		color:#848484;
}
ul{
	padding-left: 30px;
}
</style>
</head>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");
%>
<body>
	<div style="height: 100px;"></div>
	
	 <form action="../../login/changePass.jsp"  class="form-inline" onsubmit="return passcheck()" name="fidprint">
      
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">비밀번호 찾기</p>
      		<br>
      		<table  style="width:40%; border: 1px solid #D8D8D8; border-bottom: none;">
	      		<tr>
		      		<td align="center" style="padding-top:20px;">
		      			<img src="../../member/memberaddimg1.PNG">
	      			</td>
	      		</tr>
	      		<tr>
	      			<td style="padding-top:20px;padding-bottom:20px; text-align:center; color:#2E2E2E; font-size: 3em;">
	      				
	      				<p><b style="color:#088A4B;"><%=id %></b>님의 비밀번호를 변경합니다.</p>
	      				
	      			</td>
	      		</tr>
	      		<tr>
      				<td  style="padding-bottom:40px; text-align:center; color:gray; font-size: 2em;" class="line">
      					<p>새로 사용할 비밀번호를 등록해주세요.</p>
      				</td>
      			</tr>
      			<tr>
	      			<td style="font-size: 2em;padding-left: 20px; padding-top: 20px;padding-bottom: 10px;">
	      				<b>새 비밀번호</b>
	      			</td>
	      		</tr>	
      			<tr>
	      			<td>
	      				<input type="password" id="pass1" name="pass1" style="width:95%;font-size:1.3em; height:50px;margin: 10px 0px 10px 15px; border:1px solid #BDBDBD; border-radius: 3px;" placeholder="  비밀번호를 입력해 주세요.">
	      			</td>
	      		</tr>
	      		<tr>
	      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;padding-bottom: 10px;">
	      				<b>새 비밀번호 확인</b>
	      			</td>
	      		</tr>
	      		<tr>
	      			<td >
	      				<input type="password" id="pass2" name="pass2" style="width:95%;font-size:1.3em; height:50px;margin: 10px 0px 50px 15px; border:1px solid #BDBDBD; border-radius: 3px;" placeholder="  비밀번호를 다시 한번 입력해 주세요.">
	      			</td>
	      		</tr>
	      		</table>
	      		<table style="background-color:#F4F4F2;width:40%; border: 1px solid #D8D8D8;">
	      		<tr >
	      			<td style="; font-size: 1.8em;padding-left: 20px; padding-top: 30px;padding-bottom: 10px; border-top: none;">
	      				<b>안전한 비밀번호 만들기</b>
	      			</td>
	      		</tr>
	      		<tr>
	      			<td style="background-color:#F4F4F2;padding-top: 20px;padding-left: 20px; padding-right: 20px; ">
	      				<ul class = "noticelist"style="font-size: 1.58em; padding-bottom: 30px; list-style-type: circle;" >
	      				  <li style="padding-bottom: 5px;">영문, 숫자 혼합하여 10 ~ 20자리 이내로 입력하세요.</li>
	      				  <li style="padding-bottom: 5px;">아이디와 같은 비밀번호, 생일, 학번, 전화번호 등 개인 정보와 관련된 숫자, 연속된 숫자, 동일하게 반복된 숫자 등 다른 사람이 쉽게 알아낼 수 있는 비밀번호는 유출 위험이 높아 사용하지 않는 것이 좋습니다.</li>
	      				  <li style="padding-bottom: 5px;">이전에 사용하셨던 비밀번호를 재사용할 경우 도용의 우려가 있으니, 가급적 새로운 비밀번호를 사용해 주세요.</li>
	      				</ul>
	      			</td>
      		</tr>
	      	</table>
	      	<div style="height: 30px;"></div>
	     	<button class="cancelbtn" type="button" onclick="gologin()" style="width:19%; height:70px; margin-right: 20px;"><a style="font-size: 2.6em; ">취소</a></button>
      		<button class="enterbtn" type="submit" style="width:19%; height:70px;"><a style="font-size: 2.6em; ">확인</a></button>
      	
      	</div>
    
      </form>
<script type="text/javascript">
	
	function gologin(){
		location.href='index.jsp?main=../../login/loginform.jsp';
	}
</script>
</body>
</html>