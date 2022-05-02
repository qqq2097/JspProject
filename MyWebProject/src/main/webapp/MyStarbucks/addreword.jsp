<%@page import="StarBucksDao.RewordDao"%>
<%@page import="StarBucksDto.RewordDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String cardnum=request.getParameter("cardnum");
	String storeaddr=request.getParameter("storeaddr");
	String starcnt=request.getParameter("snum");
	String id=request.getParameter("id");
	RewordDto dto=new RewordDto();
	
	dto.setCardnum(cardnum);
	dto.setStoreaddr(storeaddr);
	dto.setStarcnt(1);
	dto.setId(id);
	
	
	RewordDao dao=new RewordDao();
	dao.insertReword(dto);
	
	response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/StarHistory.jsp");
%>
</body>
</html>