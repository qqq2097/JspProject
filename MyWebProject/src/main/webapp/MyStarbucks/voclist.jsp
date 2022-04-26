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

ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
	display: flex;
	border: 0.2px solid #d3d3d3;


}

ul.tabs li{
  display: inline-block;
	background: white;
	color: black;
	text-align: center;
	padding: 10px 15px;
	cursor: pointer;
	
}

ul.tabs li.current{
	background: #006633;
	color: white;
}

.tab-content{
  display: none;
	background: white;
	padding: 12px;
}

.tab-content.current{
	display: inherit;
}

li.tab-link.current, li.tab-link {
display: block;
width: 208px;
height: 40px;
line-height: 17px;
color: #fff;
border: 0;
}




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
right: 100px;
bottom: 410px;
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


.ms_nav > ul > li > ul > li > a {
color:#444;
display: block;
font-size: 12px;
padding: 6px 0 6px 15px;
width: 205px;

}

a{
margin: 0;
text-decoration: none;
vertical-align: baseline;
background: transparent;
cursor: pointer;
color: black;
}

.tabcontainer{
position: relative;
left: 60px;
width: 600px;
height: 174px;
}

table.suggestion_use_info_tbl{
border-top: 1px solid #333;
position: relative;
font-size: 9px;
text-align: center;
width: 1100px;
right: 10px;
}

table.suggestion_use_info_tbl thead tr th{
border-bottom: 1px solid #333;
color: #222;
height: 40px;
vertical-align: middle;
}

</style>


<script type="text/javascript">
$(function () {
	$(".sub1").hide();
	$(".sub2").hide();
	
	$(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});

	
});

//탭 이벤트
$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

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


<div class="tabcontainer">
<!-- 탭 메뉴 상단 시작 -->
	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1">전체</li>
		<li class="tab-link" data-tab="tab-2">접수 완료</li>
		<li class="tab-link" data-tab="tab-3">답변 완료</li>
	</ul>
	<br>
<!-- 탭 메뉴 상단 끝 -->
<!-- 탭 메뉴 내용 시작 -->
	<div id="tab-1" class="tab-content current" >
    		<!-- 전체 -->
										<!-- (고객의 소리) 목록 -->
										<table class="suggestion_use_info_tbl"  summary="고객의 소리 구분, 분야, 제목, 첨부파일, 작성일, 답변여부에 대한 테이블">
											<colgroup>
												<col width="50">
												
												<col width="350">
												<col width="113">
												<col width="113">
												<col width="204">
											</colgroup>
											<thead>
												<tr>
													<th class="en" scope="col">No</th>
													
													<th scope="col">제목</th>
													<th scope="col">작성일</th>
													<th scope="col">답변예정일</th>
													<th scope="col">답변여부</th>
												</tr>
											</thead>
											
											<tbody id="all">	
											
											</tbody>
										</table>
    
    
    
    </table>
    
	</div>
	<div id="tab-2" class="tab-content">
  		<!-- 전체 -->
										<!-- (고객의 소리) 목록 -->
										<table class="suggestion_use_info_tbl" summary="고객의 소리 구분, 분야, 제목, 첨부파일, 작성일, 답변여부에 대한 테이블">
							
											<colgroup>
												<col width="50">
												
												<col width="350">
												<col width="113">
												<col width="113">
												<col width="204">
											</colgroup>
											<thead>
												<tr>
													<th class="en" scope="col">No</th>
													
													<th scope="col">제목</th>
													<th scope="col">작성일</th>
													<th scope="col">답변예정일</th>
													<th scope="col">답변여부</th>
												</tr>
											</thead>
											
											<tbody id="all">	
											
											</tbody>
										</table>

	</div>
	<div id="tab-3" class="tab-content">
  		<!-- 전체 -->
										<!-- (고객의 소리) 목록 -->
										<table class="suggestion_use_info_tbl" summary="고객의 소리 구분, 분야, 제목, 첨부파일, 작성일, 답변여부에 대한 테이블">
										
											<colgroup>
												<col width="50">
												
												<col width="350">
												<col width="113">
												<col width="113">
												<col width="204">
											</colgroup>
											<thead>
												<tr>
													<th class="en" scope="col">No</th>
													
													<th scope="col">제목</th>
													<th scope="col">작성일</th>
													<th scope="col">답변예정일</th>
													<th scope="col">답변여부</th>
												</tr>
											</thead>
											
											<tbody id="all">	
											
											</tbody>
										</table>


<!-- 탭 메뉴 내용 끝 -->
</div>
</div>




<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="#">My 리워드<span class="sbox_arrow_down1"></span></a>
			<ul class="sub1">
				<li><a href="#" required="login" >· 리워드 및 혜택</a></li>
				<li><a href="#" required="login">· 별 히스토리</a></li>
			</ul>
		</li>
		
		<li class="msRnb_btn"><a href="/my/my_menu.do" required="login">My 메뉴</a></li>
		<li><a href="" required="login">My 고객의 소리</a></li>
		
		<li>
			<a href="#">개인정보관리<span class="sbox_arrow_down2"></span></a>
			<ul class="sub2">
				<li><a href="#" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="#" required="login">· 회원 탈퇴</a></li>
				<li><a href="#" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
					<!-- //네비 -->
					
					
	
					
</body>
</html>