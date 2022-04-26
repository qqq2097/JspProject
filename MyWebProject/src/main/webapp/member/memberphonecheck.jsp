<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
String key = request.getParameter("key");//처음 호출시 null
if(key==null){
%>
	<div style="margin:10px 30px;">
	<form action="memberphonecheck.jsp.jsp" method="post" class="form-inline" style="width : 450px;text-align: center;">
		<p align="center"><img src="memberaddimg1.PNG" style="border:1px solid red;"></p>
		<p width ="100%" height="50px;" style="text-align: center;border: 1px solid red;"><b style="font-size: 2em;color:gray;">전화번호를 입력하세요.</b></p>
		<br>
		<select size="1" name="hp1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="019">019</option>
			<option value="02">02</option>
		</select>
		<b>-</b>
		<input type="text" name="hp2" size="4" onkeyup="goFocus(this)" required="required">
		<b>-</b>
		<input type="text" name="hp3" size="4" required="required">
		<!--key값 넘기기..hidden  -->
		<input type="hidden" name="key">
		<button type="submit" class="btn btn-success btn-sm" style="margin-left: 10px;">중복체크</button>
	</form>
</div>
<%
}else{
	%>
	
	<%
}
%>
</body>
</html>