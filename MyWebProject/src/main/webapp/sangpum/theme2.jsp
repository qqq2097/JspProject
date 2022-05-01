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
<link rel="stylesheet" href="../../sangpum/css/themeCSS.css"/>
<link rel="stylesheet" href="assets/css/style.css" />
<style type="text/css"> div.footerinfo{ top: 700px; } </style>
<!-- js -->
<script src="../../sangpum/js/themebtn.js"></script>


</head>
<body>
<div class="sangpum">
	<p class="headname">시즌메뉴</p>
	<br>
	<hr color="#BDBDBD" width="1100px">
	<br>
	<div style="border: 1px solid #BDBDBD;width: 1100px;height: 400px;padding: 30px;">
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
	    <%
	           int n=0;
	           
	           for(int row=1;row<=2;row++)
	           {
	        	   %>
	        	   
	        	   <%
	           		for(int col=1;col<=3;col++)
	           		{
		           		n++;
	           		 %>
	           		
	             		<img src="../../sangpum/image/theme_banner<%=n %>.jpg">
	           		  
	         		
	           		
	 	           <%}
	           		%>
	     	       
	           <%}
	           %>
	  </div>
	</div>
</div>  
</body>
</html>