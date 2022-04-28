<%@page import="data.dto.SangpumDto"%>
<%@page import="data.dao.SangpumDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Starbucks Coffee Korea</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- CSS 링크 -->
<link rel="stylesheet" href="../../sangpum/css/themeCSS.css"/>
<link rel="stylesheet" href="assets/css/style.css" />
<style type="text/css"> div.footerinfo{ top: 1000px; } </style>
<!-- js -->
<script src="../../sangpum/js/themebtn.js"></script>

</head>
<% SangpumDao dao=new SangpumDao(); %>
<body>
<div class="sangpum">
	<p class="headname">시즌메뉴</p>
	<br>
	<hr color="#BDBDBD" width="1100px">
	<br>
	<div style="border: 1px solid #BDBDBD;width: 1100px;height: 290px;padding: 30px;">
	  <h1>분류 보기</h1>
	  <br>
	  <br>
	  <hr color="#eaeaea" width="1045px" align="center">
	  <br>
	  <br>
	  <div>
	    <button type="button" class="btn1" onclick="history.go(-1)">카테고리</button>
	    <button type="button" class="btn2">테마</button>
	  </div>
	  <br>
	  <br>
	  <div class="banner">
	    <img alt="" src="../../sangpum/image/theme_banner5.jpg">
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getbeverageList(30, 3))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/mybeverageform.jsp?snum=<%=dto.getSnum()%>','',
	             'left=500px,top=300px,width=300px,height=300px')">
	           </div>
	         </div>
	         <br>
	         <p class="sangpumname"><%=dto.getSname() %></p>
	         </td>
	       <%
	       }
	       %>
	       </tr>
	     </table>
	  </div>
</div>  
</body>
</html>