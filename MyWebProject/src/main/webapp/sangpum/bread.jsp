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
<style type="text/css"> div.footerinfo{ top: 2900px; }  table.maintb{ margin-bottom: 50px; }</style>
<!-- js -->
<script src="../../sangpum/js/coffeeFilter.js"></script>

</head>
<% SangpumDao dao=new SangpumDao(); %>
<body>
<div class="sangpum">
	<p class="headname">브레드</p>
	<br>
	<hr color="#BDBDBD" width="1100px">
	<br>
	<div style="border: 1px solid #BDBDBD;width: 1100px;height: 230px;padding: 30px;">
	  <h1>분류 보기</h1>
	  <br>
	  <br>
	  <hr color="#eaeaea" width="1045px" align="center">
	  <br>
	  <br>
	  <div>
	    <button type="button" class="btn1">카테고리</button>
	    <button type="button" class="btn2" onclick="location.href='index.jsp?main=../../sangpum/theme2.jsp'">테마</button>
	  </div>
	  <br>
	  <br>
	  <div class="filter">
	    <form action="#" method="post">
	    <ul>
	      <li><input type="checkbox" name="all" class="cbx1" id="cbox" checked="checked">&nbsp;전체 상품보기</li>
	      <li><input type="checkbox" name="chk2" class="cbx2" id="cbox">&nbsp;베이글</li>
	      <li><input type="checkbox" name="chk3" class="cbx3" id="cbox">&nbsp;스콘</li>
	      <li><input type="checkbox" name="chk4" class="cbx4" id="cbox">&nbsp;파이</li>
	    </ul>
	    </form>
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	<!-- 베이글 -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">베이글</p>
	         </td>
	       </tr>
	        <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getfoodList(0, 3))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/myfoodform.jsp?snum=<%=dto.getSnum()%>&sname=<%=dto.getSname() %>','',
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
	  <!-- 스콘 -->
	  <div class="mediumtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">스콘</p>
	         </td>
	       </tr>
	        <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getfoodList(3, 3))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/myfoodform.jsp?snum=<%=dto.getSnum()%>&sname=<%=dto.getSname() %>','',
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
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getfoodList(6, 2))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/myfoodform.jsp?snum=<%=dto.getSnum()%>&sname=<%=dto.getSname() %>','',
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
	  <!-- 파이 -->
	  <div class="darktb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">파이</p>
	         </td>
	       </tr>
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getfoodList(8, 3))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/myfoodform.jsp?snum=<%=dto.getSnum()%>&sname=<%=dto.getSname() %>','',
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
	       <tr style="float: left;">
	       <%
	       for(SangpumDto dto:dao.getfoodList(11, 1))
	       {
	       %>
	         <td>
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="" src="<%=dto.getImgsrc()%>" width="360" height="335"
	             onclick="window.open('../../sangpum/mymenu/myfoodform.jsp?snum=<%=dto.getSnum()%>&sname=<%=dto.getSname() %>','',
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