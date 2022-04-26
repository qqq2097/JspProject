<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

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
width: 80%;
height: auto;
padding: 4%;;
background-size: auto 68%;
}



.btn_suggestion_inquiry{
border-radius: 3px;
height: 28px;
width: 136px;
background: #e2c383;
border: 1px solid #bb9f65;
position: relative;
left: 40px;
bottom: 17px;
}

.btn_suggestion_inquiry a{
display: block;
font-size: 12px;
font-weight: bold;
height: 28px;
line-height: 28px;
text-align: center;
width: 141px;
color: #222;
}

/*네비*/
.ms_nav {
float: right;
position: relative;
right: 60px;
bottom: 235px;
font-weight: blod;
width: 220px;
margin-bottom: 90px;
}

.ms_nav > ul{
border-top: 2px solid #222;
}

nav ul, li {list-style: none;}
li{display: list-item;
text-align: -webkit-match-parent;}

.ms_nav >ul>li {
border-bottom: 1px solid #ddd;
width: 220px;
}

.ms_nav > ul>li>a {
color: #444;
display: block;
font-size: 14px;
padding: 20px 30px 20px 15px;
position: relative;
width: 175px;
}

a{
margin: 0;
text-decoration: none;
vertical-align: baseline;
background: transparent;
cursor: pointer;
color: black;
}

</style>


<script type="text/javascript">
$(function () {
	$(".sub1").hide();
	$(".sub2").hide();
	

	
});

</script>


</head>
<body>

<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; 고객의 소리</span>
   <ul class="smap">
   <li><a href="/"><img src="../../MyStarbucks/image/home.png" alt="홈으로"></a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href="" ><span class="kor">My Starbucks</a></li>
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
	<br>
	<dd>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다.<br>보다 나은 서비스로 보답하겠습니다.
	<br><br><b style="color: #666666; padding: 0px 0px 0px 12xp;">※고객의 소리 운영시간 : 09:00 ~ 18:00 (연중 무휴)</b></dd>
	</dl>
	<p class="btn_suggestion_inquiry"><a href="">고객의 소리 문의 하기</a></p>
	</section>
</div>























<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="">My 리워드<span class="sbox_arrow_down1"></span></a>
			<ul class="sub1">
				<li><a href="" required="login" >· 리워드 및 혜택</a></li>
				<li><a href="" required="login">· 별 히스토리</a></li>
			</ul>
		</li>
		
		<li class="msRnb_btn"><a href="/my/my_menu.do" required="login">My 메뉴</a></li>
		<li><a href="" required="login">My 고객의 소리</a></li>
		
		<li>
			<a href="">개인정보관리<span class="sbox_arrow_down2"></span></a>
			<ul class="sub2">
				<li><a href="" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="" required="login">· 회원 탈퇴</a></li>
				<li><a href="" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
					<!-- //네비 -->
					
					
	
					
</body>
</html>