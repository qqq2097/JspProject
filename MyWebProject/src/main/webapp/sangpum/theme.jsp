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
<!-- js -->
<script src="../../sangpum/js/themebtn.js"></script>


</head>
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
	    <img alt="" src="../../sangpum/image/theme_banner.jpg">
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr>
	       <%
	       for(int row=1;row<=3;row++)
	       {%>
	        	 <td align="left">
	        	 <br>
	         	 <br>
	         	 <div class="img">
	          		<div class="roastimg">
	             		<img src="../../sangpum/image/theme<%=row %>.jpg" width="360" height="335">
	           		</div>
	         	  </div>
	        	  <br>
	        	  <!-- db로 저장된 이름 받아오기 -->
	         	  <p class=sangpumname>시즌 메뉴</p>
	         	  </td>
	       <%}
	       %>
	     </tr>
	     </table>
	  </div>
</div>  
</body>
</html>