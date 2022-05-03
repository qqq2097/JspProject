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
<!-- 폰트 -->
<link
  href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
  rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">
<!-- CSS 링크 -->
<link rel="stylesheet" href="../../sangpum/css/mymenuCSS.css"/>
<title>MY메뉴 추가하기</title>

</head>
<%
String snum=request.getParameter("snum");
String sname=request.getParameter("sname");
SangpumDao dao=new SangpumDao();
SangpumDto dto=dao.getgoodsData(snum);
String loginok=(String)session.getAttribute("loginok");
String id=(String)session.getAttribute("id");
if(loginok!=null){
boolean b=dao.isMygoodsCheck(sname, id);
if(b)
{%>
<script type="text/javascript">
alert("이미 My메뉴에 존재합니다")
window.close()
</script>
<%}

%>
<body>
<form action="mygoodsaction.jsp" method="post">
<div align="center" class="form">
<img alt="" src="<%=dto.getImgsrc()%>">
<p>[ <%=dto.getSname() %> ] 을/를<br> My메뉴에 추가하시겠습니까?</p>
<input type="hidden" name="snum" value="<%=dto.getSnum()%>">
<input type="hidden" name="sname" value="<%=dto.getSname()%>">
<input type="hidden" name="sprice" value="<%=dto.getSprice()%>">
<input type="hidden" name="imgsrc" value="<%=dto.getImgsrc()%>">
<input type="hidden" name="id" value="<%=id%>">
<button type="submit">추가하기</button>
<button type="button" onclick="window.close()">취소</button>
<br>
<button type="button" class="mymenubtn"
onclick=goMymenu()>My메뉴</button>
</div>
</form>
<script type="text/javascript">
function goMymenu() {
	window.opener.location='../../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/MyMenu.jsp' 
		window.close()
}
</script>
<%}
else
	{%>
	<script type="text/javascript">
	alert("로그인 후 이용해주세요.")
	window.close()
	</script>
	<%} %>
</body>
</html>