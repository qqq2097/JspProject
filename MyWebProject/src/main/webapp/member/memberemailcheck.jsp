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
		<p width ="100%" height="50px;" style="text-align: center;border: 1px solid red;"><b style="font-size: 2em;color:gray;">E-MAIL를 입력하세요.</b></p>
		<br>
		<input type="text" name="email1" placeholder="이메일" size="8" required="required">
		<b>@</b>
		<select size = "1" name ="email2">
			<option value="naver.com">naver.com</option>
			<option value ="gmail.com">gmail.com</option>
			<option value ="daum.net">daum.net</option>
			<option value="nate.com">nate.com</option>
		</select>
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