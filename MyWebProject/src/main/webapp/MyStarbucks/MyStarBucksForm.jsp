<%-- <%@page import="StarBucksDao.memberDao"%> --%>
<%@page import="StarBucksDao.RewordDao"%>
<%@page import="data.dao.SangpumDao"%>
<%@page import="StarBucksDao.memberDao"%>
<%@page import="StarBucksDto.memberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

#btn{
border-radius: 50%;
}
div.footerinfo {
	width: 100%;
	height: 500px;
	top: 1500px;
}


div.left{
   position : absolute;
   left : 100px;
   top : 300px;
   background : #F5F5F5;
   width : 300px;
   height : 200px;
   border-radius: 20px;
}

div.right{
   position : absolute;
   left : 450px;
   top : 300px;
   background : #F5F5F5;
   width : 300px;
   height : 200px;
   border-radius: 20px;
}
button.btnre{
   background-color: #deb887;
   font-weight: bold;
   color: black;
}

button.btnsu{
   background-color: black;
   font-weight: bold;
   color: #fff;
}

button.btnbun{
   background-color: #a9a9a9;
   font-weight: bold;
   color: #fff;
}

div.top{
 
   width : 100%;
   height : 200px;
   background-image: url("../../MyStarbucks/image/ms03.jpg");
}
span.toptitle{
   
   color: #fff;
   
   font-size: 30pt;
   font-weight: bold;
   top: 200px;
   
}

div.topsub{
   position : absolute;
   width : 300px;
   height : 100px;
   
   top : 170px;
   left : 800px;
   color: #fff;
   
   font-size: 15pt;
}
div.leftsu{
   position : absolute;
   width : 100px;
   height: 100px;
   top : 360px;
   left : 230px;
   font-size: 40pt;
   font-weight: bold;

}
ul.sub1{
	font-size: 0.6em;
	text-align: center;
}

ul.sub2{
	font-size: 0.6em;
	text-align: center;
}


/*네비*/
.ms_nav {
float: right;
position: relative;
right: 300px;
bottom: 410px;
font-weight: blod;
width: 220px;
margin-bottom: 90px;
margin-top: 500px;
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


.ms_nav > ul > li > ul > li > a  {
color: #444;
display: block;
font-size: 12px;
padding: 6px 0 6px 15px;
width: 205px;
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
$(function(){
   
   $(".sub1").hide();
   $(".sub2").hide();
   
   
   
   $(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});
   
   
  
   
});
</script>
</head>

<%
	String id = (String)session.getAttribute("id");
	//System.out.println(id);
	memberDao mdao=new memberDao();
	String grade = mdao.getGrade(id);
	String name = mdao.getName(id);
	memberDto mdto=new memberDto();
	//System.out.println(grade);
	RewordDao rdao=new RewordDao();
	int starcnt = rdao.getTotalCountStar(id);
	
	if(starcnt>=5 && starcnt<30)
	{
		//업데이트 grade 그린등급
		mdao.updateGradeGreen(mdto, id);
	}
	else if(starcnt>=30)
	{
		//업데이트 gold 골드등급
		mdao.updateGradeGold(mdto, id);
	}
		
%>
<body>


<!-- top div -->
<div class="container">


<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; My Starbucks</span>

	<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'"></span>
      <span onclick=""> > My Starbucks</span>
	</div>
</div>



<!-- right div -->
	<div class="right">
   		   <span style="font-size: 10pt; "><b style="color: green;"><%=name %></b>&nbsp;님은<br>현재 <b style="color: green;"><%=grade %></b>&nbsp;이십니다.</span>
   		<br><br>
   		<button type="button" class="btn btn-default btnre" id="btn" style=" width : 100px; height: 50px;  margin-left: 50px;  margin-top: 50px;" onclick="location.href='index.jsp?main=../../MyStarbucks/RewordBenefit.jsp'">리워드 및 혜택</button>
  		 <button type="button" class="btn btn-default btnre" id="btn" style=" width : 100px; height: 50px; margin-top: 50px;" onclick="location.href='index.jsp?main=../../MyStarbucks/StarHistory.jsp'">별 히스토리</button>
   		<br>
   		<button type="button" class="btn btn-default btnsu" id="btn" style=" width : 100px; height: 50px; margin-left: 50px; margin-top: 10px;">개인정보 수정</button>
   		<button type="button" class="btn btn-default btnbun" id="btn" style="width : 100px; height: 50px; margin-top: 10px;">비밀번호 변경</button>
	</div>      
</div>


<!-- left div -->
<div class="mid">
	<div class="left">
   		<span style="font-weight : blod; font-size: 15pt;">&nbsp;&nbsp;My Star</span>
   		<br>
  		 <img alt="" src="../../MyStarbucks/image/ms07.png" style="width : 300px; height : 150px;">   
	</div>

	<!-- if 회원 등급이 웰컴이면 1 그린등급이면 2 골드 등급이면 3 이 나오게 출력 해야함 -->
	<div class="leftsu">
	<span style="margin-left: -15px; margin-top: 10px;"><b><%=starcnt %></b></span>
   		
	</div>




<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="#">My 리워드<span class="sbox_arrow_down1"></span></a>
			<ul class="sub1">
				<li><a href="index.jsp?main=../../MyStarbucks/RewordBenefit.jsp" required="login" >· 리워드 및 혜택</a></li>
				<li><a href="index.jsp?main=../../MyStarbucks/StarHistory.jsp" required="login">· 별 히스토리</a></li>
			</ul>
		</li>
		
		<li class="msRnb_btn"><a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp" required="login">My 메뉴</a></li>
		<li><a href="index.jsp?main=../../MyStarbucks/voclist.jsp" required="login">My 고객의 소리</a></li>
		
		<li>
			<a href="#">개인정보관리<span class="sbox_arrow_down2"></span></a>
			<ul class="sub2">
				<li><a href="index.jsp?main=../../MyStarbucks/updateInfocheck.jsp" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">· 비밀번호 변경</a></li>
				<input type="hidden">
			</ul>
		</li>
	</ul>
</nav>

</div>
</body>
</html>