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
String id = (String)session.getAttribute("id");
String name = request.getParameter("myname");
String birth = request.getParameter("myyear")+"-"+request.getParameter("mymonth")+"-"+request.getParameter("myday");
String hp = request.getParameter("myhp");
String email = request.getParameter("myemail");
String nickname = request.getParameter("mynickname");
%>
<b><%=id %>//<%=name %>//<%=birth %>//<%=hp %>//<%=email %>//<%=nickname %>//</b>
</body>
</html>