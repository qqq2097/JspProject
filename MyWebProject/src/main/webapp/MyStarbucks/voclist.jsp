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
   margin: 30px;
}

ul.smap {
list-style: none;
margin: 30px;
padding: 10;
text-align: right;
}

ul.smap li{
display: inline;
margin:3px;
}

.mysuggestion{background-color: #F4F4F2}
.suggestion {padding: 30px;}

.suggtext{
width: 92%;
height: auto;
padding: 4%;
background-image: none;
background-size: auto 68%;
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

<div class="suggtext">
<section class="mysuggestion">
	<dl class="suggestion">
	<h2>귀한 말씀 들려 주십시오. 작은 소리도 듣겠습니다.</h2>
	<dd>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다.<br>보다 나은 서비스로 보답하겠습니다.
	<br><br><br><b style="color: #666666; padding: 0px 0px 0px 12xp;">※고객의 소리 운영시간 : 09:00 ~ 18:00 (연중 무휴)</b></dd>
	</dl>
	<p class="btn_suggestion_inquiry"><a href="">고객의 소리 문의 하기</a></p>
	</section>
</div>

</body>
</html>