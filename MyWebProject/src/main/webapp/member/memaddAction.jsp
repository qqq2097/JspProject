<%@page import="StarBucksDao.memberDao"%>
<%@page import="StarBucksDto.memberDto"%>
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
memberDto dto = new memberDto();
memberDao dao = new memberDao();
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pass = request.getParameter("pass1");
String name = request.getParameter("name");
String birthday = request.getParameter("myyear")+"-"+request.getParameter("mymonth")+"-"+request.getParameter("myday");
String hp = request.getParameter("hpnum");
String email = request.getParameter("email");
String nickname = request.getParameter("nickname");
		
dto.setId(id);
dto.setPass(pass);
dto.setName(name);
dto.setBirthday(birthday);
dto.setHp(hp);
dto.setEmail(email);
dto.getEmail();

dao.insertMember(dto);

response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../member/memberAdd_1.jsp");
%>
</body>
</html>