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
idcheck
<%
String key = request.getParameter("key");//처음 호출시 null
if(key==null){
%>
	<div style="margin:10px 30px;">
	<form action="memberphonecheck.jsp.jsp" method="post" class="form-inline">
		<b>전화번호를 입력해 주세요</b><br>
		<input type="text" name="mid" class="form-control input-sm" style="width:130px;"
		required="required"placeholder="아이디입력">
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