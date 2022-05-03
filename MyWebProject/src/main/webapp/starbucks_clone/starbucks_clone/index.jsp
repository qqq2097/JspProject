<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Starbucks Coffee Korea</title>
<meta name="description" content="국내 최고의 커피 전문점! 항상 최고의 음료를 선사합니다. 스타벅스만의 프리퀀시를 받아보세요.">
<meta name="keywords" content="스타벅스, 커피, 텀블러, 곰돌이, 머그컵, 아이스아메리카노, 돌체라떼, 그란데, 밴티, 톨, 프리퀀시, 리워드, 리저브드, 사이렌오더, 레디백, 기프티콘, 기프티 카드, 자바칩 프라푸치노">

<!-- <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"> -->
<link rel="icon" href="starbucks_favicon.ico">

<!-- 폰트 -->
<link
  href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
  rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">

<!-- CSS 링크 -->
<link rel="stylesheet" href="assets/css/normalize.css" />
<link rel="stylesheet" href="assets/css/reset.css" />
<link rel="stylesheet" href="assets/css/style.css" />

<style type="text/css">
div.layout {
	position: absolute;
}
div.menu {
	
	width: 100%;
	height: 183px;
}
div.main {
	width: 100%;
	top: 120px;
}
div.footerinfo {
	width: 100%;
	height: 500px;


	top: 3350px;

}
</style>
</head>
<%
//프로젝트 절대경로
String root=request.getContextPath();
String mainPage="layout/main.jsp";

if(request.getParameter("main")!=null){
	mainPage=request.getParameter("main");
}
%>
<body>
<div class="layout menu">
  <jsp:include page="layout/menu.jsp"/>
</div>
<div class="layout footerinfo">
  <jsp:include page="layout/footerinfo.jsp"/>
</div>
<div class="layout main">
  <jsp:include page="<%=mainPage %>"/>
</div>

</body>
</html>