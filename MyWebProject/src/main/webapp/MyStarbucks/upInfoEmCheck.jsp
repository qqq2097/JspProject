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
<body>
<%
String key = request.getParameter("key");//처음 호출시 null
if(key==null){
%>
	<div style="height: 80px;"></div>
	<div style="margin:10px 30px;">
	<form action="upInfoEmCheck.jsp" method="post" class="form-inline" style="width : 450px;text-align: center;">
		<p align="center"><img src="../member/memberaddimg1.PNG"></p>
		<p width ="100%" height="50px;" style="text-align: center;"><b style="font-size: 2em;color:gray;">E-MAIL를 입력하세요.</b></p>
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
		<button type="submit" class="btn btn-success btn-sm" style="margin-left: 10px;">아이디 찾기</button>
	</form>
</div>
<%
}else{
	String email = request.getParameter("email1")+"@"+request.getParameter("email2");
	memberDao dao = new memberDao();
	String id = (String)session.getAttribute("id");
	boolean b = dao.checkEmfromID(id,email);
	//지금 아이디와 핸드폰 번호가 맞는지 확인해야함.

	if(b){
	
	%>
	<script type="text/javascript">
		opener.location.href="../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/updateForm.jsp";
		
		window.close();
	</script>
	<%
	}
	else{
		%>
		<h3 class="alert alert-danger">이메일이 맞지 않습니다.</h3>
		<button type="button" class="btn btn-danger btn-sm"
		style="margin-left: 200px;"onclick="location.href='upInfoEmCheck.jsp'">다시하기</button>
	
	<%
	}
}
%>

</body>
</html>