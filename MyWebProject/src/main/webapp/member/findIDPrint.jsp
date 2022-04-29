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
.ebtn{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 2px;
		background-color: #0B610B; 
		border: 1px solid #0B610B; 
		color: white;
	}
	
div.footerinfo{
top: 1200px;
width: 100%;
height: 500px;

}
</style>
<script type="text/javascript">
$(function(){
	function setChildValuie(id) {
		document.getElementById(id).value=id;
	}
});
</script>
</head>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");
session.setAttribute("saveid", "save");
%>
<body>
	<div style="height: 100px;"></div>
	
	 <form action="index.jsp?main=../../member/loginform.jsp" method="post" class="form-inline" onsubmit="return check(this)" name="fidprint">
      
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">아이디 찾기</p>
      		<br>
      		<table class="table table-bordered" style="width:40%; border: 1px solid #C1C1C1;">
	      		<tr>
		      		<td align="center" style="padding-top:20px;">
		      			<img src="../../member/memberaddimg1.PNG">
	      			</td>
	      		</tr>
	      		<tr>
	      			<td style="padding-top:20px;padding-bottom:20px; text-align:center; color:#6E6E6E; font-size: 2.5em;">
	      				<a>고객님의 아이디는</a>
	      				<a style="color:#088A4B;"><%=id %></a>
	      				<a>입니다.</a>
	      			</td>
	      		</tr>
	      
	      	
	      		<tr style="height:30px;">
	      			
	      		</tr>	
	      		
	      	</table>
	      	<div style="height: 30px;"></div>
	     	<button class="ebtn"onclick=" href" style="width:35%; height:60px;"><b style="font-size: 2.2em; font-weight: lighter;"> 로그인 </b></button>
      	</div>
    
      </form>
</body>
</html>