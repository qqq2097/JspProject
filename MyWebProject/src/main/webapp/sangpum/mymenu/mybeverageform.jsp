<%@page import="data.dto.SangpumDto"%>
<%@page import="data.dao.SangpumDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&family=Hi+Melody&family=Nanum+Pen+Script&family=Yeon+Sung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
form {
	width: 300px;
}
p {
	margin-top:10px;
	text-align: center;
}
button {
	width: 80px;
	height: 35px;
	font-size: 10pt;
	font-family: 'Noto Sans', sans-serif;
	border: none;
	border-radius: 5px;
}
button:hover, mymenubtn:hover {
	background-color: #036635;
	color: white;
}
img {
	margin-top:30px;
	width: 130px;
	height: 130px;
}
.mymenubtn {
	margin-top:10px;
	width: 160px;
	height: 35px;
	font-size: 10pt;
	font-family: 'Noto Sans', sans-serif;
	border: none;
	border-radius: 5px;
}
</style>
</head>
<%
String snum=request.getParameter("snum");
String sname=request.getParameter("sname");
SangpumDao dao=new SangpumDao();
SangpumDto dto=dao.getbeverageData(snum);

boolean b=dao.isMybeverageCheck(sname);
if(b)
{%>
<script type="text/javascript">
alert("이미 My메뉴에 존재합니다")
window.close()
</script>
<%}

%>
<body>
<form action="mybeverageaction.jsp" method="post">
<div align="center">
<img alt="" src="<%=dto.getImgsrc()%>">
<p>[ <%=dto.getSname() %> ] 을/를<br> My메뉴에 추가하시겠습니까?</p>
<input type="hidden" name="snum" value="<%=dto.getSnum()%>">
<input type="hidden" name="sname" value="<%=dto.getSname()%>">
<input type="hidden" name="sprice" value="<%=dto.getSprice()%>">
<input type="hidden" name="imgsrc" value="<%=dto.getImgsrc()%>">
<button type="submit">추가하기</button>
<button type="button" onclick="window.close()">취소</button>
<br>
<button type="button" class="mymenubtn"
onclick=goMymenu()>My메뉴</button>
</div>
</form>
<script type="text/javascript">
function goMymenu() {
	window.opener.location='../testlist.jsp' //my menu로 이동시키면 됩니당
		window.close()
}
</script>
</body>
</html>