<%@page import="java.util.function.DoubleToLongFunction"%>
<%@page import="data.dto.SangpumDto"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet" href="../../sangpum/css/coffeeCSS.css"/>
<link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/style.css" />
<style type="text/css"> div.footerinfo{ top: 2300px; } </style>
<!-- js -->
<script src="../../sangpum/js/coffeeFilter.js"></script>
</head>
<%
SangpumDao dao=new SangpumDao();
%>
<body>
<div class="sangpum">
	<p class="headname">커피</p>
	<br>
	<hr color="#BDBDBD" width="1100px" align="left">
	<br>
	<div style="border: 1px solid #BDBDBD;width: 1100px;height: 230px;padding: 30px;">
	  <h1>분류 보기</h1>
	  <br>
	  <br>
	  <hr color="#eaeaea" width="1045px" align="center">
	  <br>
	  <br>
	  <div>
	    <button type="button" class="btn1" value="원두">스타벅스 원두</button>
	    <button type="button" class="btn2" value="비아" onclick="location.href='index.jsp?main=../../sangpum/coffee2.jsp'">스타벅스 비아</button>
	  </div>
	  <br>
	  <br>
	  <div class="filter">
	    <form action="#" method="post">
	    <ul>
	      <li><input type="checkbox" name="all" class="cbx1" id="cbox" checked="checked">&nbsp;전체 상품보기</li>
	      <li><input type="checkbox" name="chk2" class="cbx2" id="cbox">&nbsp;블론드 로스트</li>
	      <li><input type="checkbox" name="chk3" class="cbx3" id="cbox">&nbsp;미디엄 로스트</li>
	      <li><input type="checkbox" name="chk4" class="cbx4" id="cbox">&nbsp;다크 로스트</li>
	    </ul>
	    </form>
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	<!-- 블론드 로스트 -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         
	         <img alt="blond" src="../../sangpum/image/icon_blond.png" style="float: left;">
	         <p class="roastname">블론드 로스트</p>
	         </td>
	       </tr>
	       <tr>
	         <td align="left">
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	           <%
				for(SangpumDto dto:dao.getList(0,1)){
	           %>
	             <img alt="블론드이미지" src="<%=dto.getImgsrc() %>" width="360" height="335">
	           </div>
	         </div>
	         <br>
	         <!-- db로 저장된 이름 받아오기 -->
	         <p class=sangpumname><%=dto.getSname() %></p>
	         </td>
	       </tr>
	       <%
	       }
	       %>
	     </table>
	  </div>
	  <!-- 미디엄 로스트 -->
	  <div class="mediumtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         
	         <img alt="blond" src="../../sangpum/image/icon_medium.png" style="float: left;">
	         <p class="roastname">미디엄 로스트</p>
	         </td>
	       </tr>
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getList(1,3))
	       {
	       %>
	         <td>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335">
	           </div>
	         </div>
	         <p class="sangpumname"><%=dto.getSname() %></p>
	         </td>
	       <%
	       }
	       %>
	       </tr>
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getList(4,3))
	       {
	       %>
	         <td>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335">
	           </div>
	         </div>
	         <p class="sangpumname"><%=dto.getSname() %></p>
	         </td>
	       <%
	       }
	       %>
	       </tr>
	       
	     </table>
	  </div>
	  <!-- 다크 로스트 -->
	  <div class="darktb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         
	         <img alt="blond" src="../../sangpum/image/icon_dark.png" style="float: left;">
	         <p class="roastname">다크 로스트</p>
	         </td>
	       </tr>
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getList(7,3))
	       {
	       %>
	         <td>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335">
	           </div>
	         </div>
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