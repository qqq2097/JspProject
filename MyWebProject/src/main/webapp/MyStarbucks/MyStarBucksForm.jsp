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
<<<<<<< HEAD

}
button.btnst
{
	position: relative;
	top: 70px;
	left: 200px;
	background-color: #deb887;
    font-weight: bold;
    color: black;
    border-radius: 5px;
}
button.btnre
{
	position: relative;
	top: 100px;
	left: 30px;
	background-color: #deb887;
    font-weight: bold;
    color: black;
    border-radius: 5px;
}
button.btnsu
{
	position: relative;
	left: 30px;
	top: 100px;
	background-color: black;
    font-weight: bold;
    color: #fff;
    border-radius: 5px;
}
button.btnbun
{
	position: relative;
	left: 200px;
	top: 70px;
	background-color: #a9a9a9;
    font-weight: bold;
    color: #fff;
    border-radius: 5px;
}
div.rank{
	position: relative;
	top: 0px;
	left: -40px;
=======
border-radius: 50%;
>>>>>>> branch 'master' of https://github.com/qqq2097/JspProject.git
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
   width : 200px;
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
right: 100px;
bottom: 300px;
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
      <span style="margin-left: 100px;"> > My Starbucks</span>
	</div>
</div>


<div class="mid">
<!-- right div -->
	<div class="right">
   		   <span style="font-size: 10pt; margin-left: 50px; "><b style="color: green;"><%=name %></b>&nbsp;님은<br>&nbsp;&nbsp;&nbsp;
   		   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;현재 <b style="color: green;"><%=grade %></b>&nbsp;이십니다.</span>
   		<br><br>
   		<button type="button" class="btn btn-default btnre" id="btn" style=" width : 150px; height: 30px;  " onclick="location.href='index.jsp?main=../../MyStarbucks/RewordBenefit.jsp'">리워드 및 혜택</button>
  		 <button type="button" class="btn btn-default btnst" id="btn" style=" width : 150px; height: 30px; " onclick="location.href='index.jsp?main=../../MyStarbucks/StarHistory.jsp'">별 히스토리</button>
   		
   		<button type="button" class="btn btn-default btnsu" id="btn" style=" width : 150px; height: 30px; ">개인정보 수정</button>
   		<button type="button" class="btn btn-default btnbun" id="btn" style="width : 150px; height: 30px; ">비밀번호 변경</button>
	</div>      



<!-- left div -->

	<div class="left">
   		<span style="font-weight : blod; font-size: 15pt;">&nbsp;&nbsp;My Star</span>
   		<br>
  		 <img alt="" src="../../MyStarbucks/image/ms07.png" style="width : 300px; height : 150px;">   
	</div>

	<!-- if 회원 등급이 웰컴이면 1 그린등급이면 2 골드 등급이면 3 이 나오게 출력 해야함 -->
	<div class="leftsu">
	<span style="margin-left: 0px; margin-top: 10px;"><b><%=starcnt %></b></span>
   	<br><br>
   	<div class="rank">
   	<span style="font-size: 9pt;">
   	<%if(starcnt<5)
   	  {%>
   			<p><%=5-starcnt %>개의 별★이 더 모이면<br>
   			<b style="color: green;">Green Level</b>만의 특별한 혜택이!</p>
   			
   	  <%}
   	  else if(starcnt>=5 && starcnt<30)
   	  {%>
   		  <p><%=30-starcnt %>개의 별★이 더 모이면<br>
   		  <b style=" color: gold;">Gold Level</b>만의 특별한 혜택이!</p>
   	  <%}
   		
   %>
   	</span>
   	</div>
	</div>
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
				<li><a href="#" required="login">· 회원 탈퇴</a></li>
				<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">· 비밀번호 변경</a></li>
				<input type="hidden">
			</ul>
		</li>
	</ul>
</nav>

</div>
</body>
</html>