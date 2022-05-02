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
<!-- 폰트 -->
<link
  href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
  rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">

<!-- CSS 링크 -->
<link rel="stylesheet" href="../../sangpum/css/esspressoCSS.css"/>
<link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/style.css" />
<style type="text/css"> div.footerinfo{ top: 1000px; } </style>
<!-- js -->
<script src="../../sangpum/js/coffeeFilter.js"></script>
</head>
<% SangpumDao dao=new SangpumDao(); %>
<body>
<div class="sangpum">
	<p class="headname">스타벅스 피지오</p>
	<br>
	<hr color="#BDBDBD" width="1100px">
	<br>
	<div style="border: 1px solid #BDBDBD;width: 1100px;height: 180px;padding: 30px;">
	  <h1>분류 보기</h1>
	  <br>
	  <br>
	  <hr color="#eaeaea" width="1045px" align="center">
	  <br>
	  <br>
	  <div>
	    <button type="button" class="btn1">스타벅스 피지오</button>
	    <button type="button" class="btn2" onclick="location.href='index.jsp?main=../../sangpum/theme.jsp'">테마</button>
	  </div>
	  <br>
	  <br>
	</div>
	<br>
	<!-- 상품list -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">피지오</p>
	         <img src="../../sangpum/image/logo_decaf.png" class="decafimg">
	         <p class="decaf">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</p>
	         </td>
	       </tr>
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getbeverageList(27, 3))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/mybeverageform.jsp?snum=<%=dto.getSnum()%>&sname=<%=dto.getSname() %>','',
	             'left=500px,top=300px,width=420px,height=450px')">
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