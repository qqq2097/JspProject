<%@page import="java.awt.Window"%>
<%@page import="data.dao.SangpumDao"%>
<%@page import="data.dto.SangpumDto"%>
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
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String snum=request.getParameter("snum");
String sname=request.getParameter("sname");
String sprice=request.getParameter("sprice");
String imgsrc=request.getParameter("imgsrc");

SangpumDto dto=new SangpumDto();
dto.setSnum(snum);
dto.setSname(sname);
dto.setSprice(sprice);
dto.setImgsrc(imgsrc);

SangpumDao dao=new SangpumDao();
dao.insertMybeverage(dto);
%>
<script type="text/javascript">
alert("My메뉴에 추가되었습니다.")
window.close()
</script>
</body>
</html>