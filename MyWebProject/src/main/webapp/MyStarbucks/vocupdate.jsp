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
top: 1500px;
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
	bottom: -99px;
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
padding: 20px 25px 25px 25px;
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

.voc_file_btn{
float: left;
height: 28px;
margin-left: 10px;
overflow: hidden;
position: relative;
width: 62px;
left: 600px;
bottom: 28px;
}

.voc_file_input_btn{
background: #777;
border: none;
border-radius: 3px;
color: #fff;
cursor: pointer;
height: 28px;
width: 62px;
}

.voc_file_input_hidden{
left: 0;
opacity: 0;
position: absolute;
top:0;}



</style>

<script type="text/javascript">
$(function () {
	$(".sub1").hide();
	$(".sub2").hide();
	
	$(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});

	
});

function updatemybtn(){ 
	if (confirm("고객의 소리를 수정하시겠습니까?") == true){  
		alert("수정이 완료되었습니다.");//확인
	    document.form.submit();
	}else{   //취소
		return false;
	}
}

function delfunc(num, currentPage) {
	if(confirm("고객의 소리를 삭제하시겠습니까?")) {
		window.location.href="../../MyStarbucks/vocdel.jsp?num="+num+"&currentPage="+currentPage;
	}else {
		window.location.href="#";
	}

}

</script>

</head>
<body>
<%
String num = request.getParameter("num");
String currentPage=request.getParameter("currentPage");
VoclistDao dao = new VoclistDao();



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


<form action="../../MyStarbucks/vocupdateaction.jsp" method="post" enctype="multipart/form-data">
<div class="ms_cont">
<!-- hidden -->
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="currentPage" value="<%=currentPage%>">

<section class="my_suggestion_view_top" style="height: auto;">

<input class="voc_ttl_input1" id="DS_VOC_TITLE" 
name="DS_VOC_TITLE" type="text" value="<%=dto.getSubject() %>" 
style="border:1px solid #ddd;
 border-radius:3px; font-size:14px;
float:left; height:26px; padding:0; width:100%;
position: relative; top: -14px;">




</section>


<section class="my_suggestion_content" style="height: auto;">
<textarea class="textArea" id="DS_VOC_CN" name="DS_VOC_CN"
style="background:#fff; border:1px solid #ddd; border-radius:3px; height:173px; width:97.5%; resize:none;"
><%=dto.getContent() %>
</textarea>
</section>

<section class="my_suggestion_view_file">
<dl id="dl_y" class="reg-page">
<dt> 첨부파일 &nbsp;&nbsp;
<input class="voc_file_input" name="fileName2" id="fileName2" type="text" readonly="readonly" value="<%=dto.getPhoto()%>"
style="width: 70%; height: 30px; border: 1px solid #ddd;
border-radius: 3px;"
> <dt>
</dl>
<div class="voc_file_btn">
<input class="voc_file_input_btn" type="button" value="찾아보기">
<input class="voc_file_input_hidden" onchange="document.getElementById('fileName2').value=this.value;" type="file"
name="file_nm2" id="file_nm1">
</div>

</section>

<div>
<button type="submit" class="btn btn-default" onclick="updatemybtn(); return false;">수정</button>
<button type="button" class="btn btn-default delbtn" onclick="delfunc(<%=dto.getNum() %>, <%=currentPage%>); return false;" >삭제</button>
<button type="button" class="btn btn-default"
onclick="history.back();">취소</button>
<button type="button" class="btn btn-default"
onclick="location.href='index.jsp?main=../../MyStarbucks/voclist.jsp'">목록</button>
</div>

</div>

</form>






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
				<li><a href="index.jsp?main=../../MyStarbucks/updateInfocheck.jsp" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>
					<!-- //네비 -->

</body>
</html>