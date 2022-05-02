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
	<form action="upInfoHpCheck.jsp" method="post" class="form-inline" style="width : 450px;text-align: center;">
		<p align="center"><img src="../member/memberaddimg1.PNG"></p>
		<p width ="100%" height="50px;" style="text-align: center;"><b style="font-size: 2em;color:gray;">전화번호를 입력하세요.</b></p>
		<br>
		<select size="1" name="hp1" style="margin-top:3px; height:25px;font-size: 1.3em;">
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
		<button type="submit" class="btn btn-success btn-sm" style="margin-left: 10px;">확인하기</button>
	</form>
</div>
<%
}else{
	String hp = request.getParameter("hp1")+"-"+request.getParameter("hp2")+"-"+request.getParameter("hp3");
	memberDao dao = new memberDao();
	String id = (String)session.getAttribute("id");
	boolean b = dao.checkHpfromID(id,hp);
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
		<h3 class="alert alert-danger">핸드폰 번호가 맞지 않습니다.</h3>
		<button type="button" class="btn btn-danger btn-sm"
		style="margin-left: 200px;"onclick="location.href='upInfoHpCheck.jsp'">다시하기</button>
	
	<%
	}
}
%>

</body>
</html>