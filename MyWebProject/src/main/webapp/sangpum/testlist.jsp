<%@page import="data.dto.SangpumDto"%>
<%@page import="java.util.List"%>
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
</head>
<%

//*********************DB 잘 넘기고 잘 받아오는지 확인하는 test list 페이지입니다.
SangpumDao dao=new SangpumDao();
List<SangpumDto> list=dao.mybeverageList();
List<SangpumDto> list1=dao.myfoodList();
List<SangpumDto> list2=dao.mygoodsList();
%>
<body>
<table style="width: 1100px">
<caption>테스트페이지입니다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ</caption>
  <tr>
    <th width="50">No.</th>
    <th width="70">상품명</th>
    <th width="180">가격</th>
    <th width="80">이미지</th>
  </tr>
<%
for(int i=0;i<list.size();i++){
	SangpumDto dto=list.get(i);
	%>
	<tr>
	<td><%=i+1 %></td>
	<td><%=dto.getSname() %></td>
	<td><%=dto.getSprice() %>원</td>
	<td>
	  <img alt="" src="MyWebProject/<%=dto.getImgsrc()%>">
	</td>
	</tr>
<%
}
%>
<%
for(int i=0;i<list1.size();i++){
	SangpumDto dto=list1.get(i);
	%>
	<tr>
	<td><%=i+1 %></td>
	<td><%=dto.getSname() %></td>
	<td><%=dto.getSprice() %>원</td>
	<td>
	  <img alt="" src="MyWebProject/<%=dto.getImgsrc()%>">
	</td>
	</tr>
<%
}
%>
<%
for(int i=0;i<list2.size();i++){
	SangpumDto dto=list2.get(i);
	%>
	<tr>
	<td><%=i+1 %></td>
	<td><%=dto.getSname() %></td>
	<td><%=dto.getSprice() %>원</td>
	<td>
	  <img alt="" src="MyWebProject/<%=dto.getImgsrc()%>">
	</td>
	</tr>
<%
}
%>
</table>
</body>
</html>