<%@page import="data.dto.SangpumDto"%>
<%@page import="data.dao.SangpumDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String snum=request.getParameter("snum");
	SangpumDao dao=new SangpumDao();
	SangpumDto dto=dao.getMyfoodData(snum);
	String id = (String)session.getAttribute("id");
%>
<body>

<form action="../../MyStarbucks/addreword.jsp" method="post" name="frm">

<table class="table table-bordered" style="width: 300px;">
<caption>구매폼</caption>
	<tr>
		<th>푸드명</th>
		<td>
			<input name="name" id="name" type="text" readonly="readonly" required="required" value="<%=dto.getSname()%>">
		</td>
	</tr>
	
	<tr>
		<th>가격</th>
		<td>
			<input name="price" id="price" type="text" readonly="readonly" required="required" value="<%=dto.getSprice()%>">
		</td>
	</tr>
	
	<tr>
		
		
			<img alt="" src="<%=dto.getImgsrc()%>">
		
	</tr>
	
	<tr>
		<th>카드번호</th>
		<td>
			<input name="cardnum" id="cardnum" type="text" required="required">
		</td>
	</tr>
	
	<tr>
		<th>가맹점</th>
		<td>
			<select name="storeaddr">
				<option>시흥시</option>
				<option>인천 청라</option>
				<option>서울 강남</option>
				<option>서울 마포</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="구매확정" class="btn btn-info btn-xs">
		</td>
	</tr>
	
</table>

<input type="hidden" id="snum" name="snum" value="<%=dto.getSnum()%>">
<input type="hidden" id="id" name="id" value="<%=id %>">
</form>
</body>
</html>