<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

div.top{
   width : 100%;
   height : 200px;
   background-image: url("../../MyStarbucks/image/ms03.jpg");
}

div.topsub{
color:#fff;
font-size: 15pt;
}

span.kor, a{
color:#ffffff;
font-size: 12px;
}


span.toptitle{
   
   color: #fff;
   font-size: 20pt;
   font-weight: bold;
   top: 200px;
   
}

ul.smap {
list-style: none;
margin: 10px;
padding: 0;
text-align: right;
}

ul.smap li{
display: inline;
margin:3px;
}
</style>

</head>
<body>

<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; 고객의 소리</span>
   <ul class="smap">
   <li><a href="/"><img src="../../MyStarbucks/image/home.png" alt="홈으로"></a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href="">My Starbucks</a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href=""><span class="kor">참여 현황</span></a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href=""><span class="kor">고객의 소리</span></a></li>
	</ul>
</div>

</body>
</html>