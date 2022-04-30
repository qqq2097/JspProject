<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.VoclistDto"%>
<%@page import="data.dao.VoclistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>

<style type="text/css">
div.top {
	width: 100%;
	height: 200px;
	background-image: url("../../MyStarbucks/image/ms03.jpg");
}

div.footerinfo{
top: 1000px;
width: 100%;
height: 500px;

}

div.footerinfo a{
color: white; }

div.topsub {
	color: #fff;
	font-size: 15pt;
}

span.kor, a {
	color: #ffffff;
	font-size: 12px;
}

span.toptitle {
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





/*네비*/
.ms_nav {
	float: right;
	position: relative;
	right: 100px;
	bottom: -96.5px;
	font-weight: blod;
	width: 220px;
	margin-bottom: 90px;
}

.ms_nav>ul {
	border-top: 2px solid #222;
}

nav ul, li {
	list-style: none;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.ms_nav>ul>li {
	border-bottom: 1px solid #ddd;
	width: 220px;
}

.ms_nav>ul>li>a {
	color: #444;
	display: block;
	font-size: 14px;
	padding: 20px 30px 20px 15px;
	position: relative;
	width: 175px;
}

a {
	margin: 0;
	text-decoration: none;
	vertical-align: baseline;
	background: transparent;
	cursor: pointer;
	color: black;
}

.ms_nav>ul>li>ul>li>a {
	color: #444;
	display: block;
	font-size: 12px;
	padding: 6px 0 6px 15px;
	width: 205px;
}

.ms_cont {
float: left;
margin-left: 195px;
margin-top: 100px;
width: 830px;
margin-bottom: 90px;
}

section.my_suggestion_view_top{
border-top: 1px solid #222;
border-bottom: 1px solid #222;
padding: 30px;
}

section.my_suggestion_view_top dl{
float: left;
}

section.my_suggestion_view_top dl dd.text{
float: left;
font-size: 14px;
color: #222;
line-height: 2px;
font-weight: bold;}

section.my_suggestion_view_file{
padding: 18px 20px 25px 20px;
border-bottom: 1px solid #dbdbdb;
}

article.view_file_info dl{
width: 75%;
float: left;
height: 20px;
box-sizing: border-box;
}

article.view_file_info dl dt{
float: left;
font-size: 12px;
color: #666;
width: unset;
}

article.view_file_info dl dt span{
color: #d6d6d6;
display: inline-block;
margin: 0px 10px;
}

article.view_file_info dl dd{
float: left;
width: 80px;
margin-bottom: 5px;
font-size: 12px;
color: #666;
}

article.view_file_info ul{
float: right;
height: 20px;}

article.view_file_info ul li{
float: left;
padding-left: 10px;}

p.date1{
heigth: 20px;
font-size: 12px;
line-height: 23px;
color: #666;
}

.my_suggestion_content{
padding: 30px 20px 30px 20px;
font-size: 12px;
color: #666;
line-height: 1.6;
border-bottom: 1px solid #dbdbdb;
margin-bottom: 20px;
}

.btn {
border: 1px solid #bb9f65;
background: #e2c383;
border-radius: 3px;
width: 80px;
height: 35px;
margin-top: 20px;
margin-right: 10px;
float: right;
font-size: 11px;
}

.adminbtn{
float: right;
background: #006633;
border-radius: 3px;
color: #fff;
text-align: center;
padding: 5px 15px 5px 15px;
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
</script>

</head>
<body>
<%
String num = request.getParameter("num");
String currentPage=request.getParameter("currentPage");
VoclistDao dao = new VoclistDao();

String loginok =(String) session.getAttribute("loginok");
String id=(String)session.getAttribute("id");



//데이터 가져오기
VoclistDto dto = dao.getData(num);

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<body>
<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; 고객의 소리</span>
   <ul class="smap">
   <li><a href="index.jsp"><img src="../../MyStarbucks/image/home.png" alt="홈으로"></a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href="index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp" ><span class="kor">My Starbucks</a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href=""><span class="kor">참여 현황</span></a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="하위메뉴"></li>
   <li><a href=""><span class="kor">고객의 소리</span></a></li>
	</ul>
</div>

<div class="ms_cont">
<section class="my_suggestion_view_top" style="height: auto;">
<dl>
<dd class="text"><%=dto.getSubject() %></dd>
</dl>
</section>

<section class="my_suggestion_view_file">
<article class="view_file_info">
<dl id="dl_y" class="reg-page">
<dt> 첨부파일 <span>|</span> <dt>
<dd class="first"><%=dto.getPhoto() %><dd>
</dl>


<ul>
<li style="margin-top: -7px;">
<p class="date1"> 등 &nbsp;&nbsp;&nbsp; 록 &nbsp;&nbsp;&nbsp; 일: <%=sdf.format(dto.getWriteday()) %> </p>
</li>
</ul>
</article>
</section>

<section class="my_suggestion_content" style="height: auto;">
<dl>
<dd class="text"><%=dto.getContent() %></dd>
</dl>
</section>



<br><br>
<%
if(loginok!=null && id.equals("admin")){
%>
<form action="../../MyStarbucks/answeraction.jsp" method="post">
<input type="hidden" name="num" value="<%=dto.getNum()%>">
<input type="hidden" name="currentPage" value="<%=currentPage%>">
	<textarea style="width: 825px; height: 270px; font-size: 12pt;" placeholder="문의 답변을 작성해 주세요" name="adanswer" id="adanswer"></textarea>
	<br><br>
	<button type="submit" class="adminbtn">답변 등록하기</button>
	</form>
	
<%}else{%>
	<div>
	<button type="button" class="btn btn-default"
	onclick="location.href='index.jsp?main=../../MyStarbucks/vocupdate.jsp?num=<%=dto.getNum()%>&currentPage=<%=currentPage%>'">수정</button>
	<button type="button" class="btn btn-default"
	onclick="location.href='index.jsp?main=../../MyStarbucks/voclist.jsp?currentPage=<%=currentPage %>'">목록</button>
	</div>

	</div>
	
	<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a>My 리워드<span class="sbox_arrow_down1"></span></a>
			<ul class="sub1">
				<li><a href="#" required="login" >· 리워드 및 혜택</a></li>
				<li><a href="#" required="login">· 별 히스토리</a></li>
			</ul>
		</li>
		
		<li class="msRnb_btn"><a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp" required="login">My 메뉴</a></li>
		<li><a href="index.jsp?main=../../MyStarbucks/voclist.jsp" required="login">My 고객의 소리</a></li>
		
		<li>
			<a>개인정보관리<span class="sbox_arrow_down2"></span></a>
			<ul class="sub2">
				<li><a href="#" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="#" required="login">· 회원 탈퇴</a></li>
				<li><a href="#" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
<%}


%>









					<!-- //네비 -->

</body>
</html>