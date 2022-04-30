<%@page import="StarBucksDao.memberDao"%>
<%@page import="StarBucksDto.memberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");
memberDto dto = new memberDto();
memberDao dao = new memberDao();
String npass = request.getParameter("pass1");
dao.changePass(id, npass);

response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../login/loginform.jsp");

%>
</body>
</html>