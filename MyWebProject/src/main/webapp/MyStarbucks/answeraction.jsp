<%@page import="data.dao.AnswerDao"%>
<%@page import="data.dto.AnswerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

AnswerDto dto=new AnswerDto();
dto.setNum(request.getParameter("num"));
dto.setAnswer(request.getParameter("adanswer"));

String currentPage=request.getParameter("currentPage");
String num =request.getParameter("num");

AnswerDao dao=new AnswerDao();
dao.insertAnswer(dto);

//목록 보던페이지로 이동
response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/vocView.jsp?num="+num+"&currentPage="+currentPage);
%>
</body>
</html>