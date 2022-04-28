<%@page import="StarBucksDao.memberDao"%>
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
request.setCharacterEncoding("utf-8");
String key = request.getParameter("key");//처음 호출시 null

if(key==null){
%>
	<div style="height: 80px;"></div>
	<div style="margin:10px 30px;">
	<form action="memberemailcheck.jsp" method="post" class="form-inline" style="width : 450px;text-align: center;">
		<p align="center"><img src="memberaddimg1.PNG" ></p>
		<p width ="100%" height="50px;" style="text-align: center;">
		<b style="font-size: 2em;color:gray;">E-MAIL를 입력하세요.</b></p>
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
}else{//hp db 체크
	String email = request.getParameter("email1")+"@"+request.getParameter("email2");
	memberDao dao = new memberDao();
	boolean b = dao.checkEmail(email);
	if(b){
	%>
		<script type="text/javascript">
			alert("이미 가입된 E-MAIL 입니다");
			location.href = "memberemailcheck.jsp";
		</script>
	<%
	}
	else{
	%>
		<h3 class="alert alert-success"><%=email %>은 사용 가능한  EMAIL 입니다.</h3>
		<button type="button" class="btn btn-warning btn-sm" id="btnuse"
		style="margin-left: 200px;" email="<%=email %>" onclick="goBack('<%=email%>')">사용하기</button>
		<button type="button" class="btn btn-danger btn-sm"
		onclick="location.href='memberemailcheck.jsp'">다시하기</button>
	<%
	}
}
%>
<script type="text/javascript">
	function goBack(email){
		
		opener.location.href="memberAdd_2.jsp?email="+email;
		window.close();
		
	}
</script>
</body>
</html>