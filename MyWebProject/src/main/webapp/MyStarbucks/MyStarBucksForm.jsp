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
	border-radius: 50%;
}
div.footerinfo {
	width: 100%;
	height: 500px;
	top: 1500px;
}


div.left{
   position : absolute;
   left : 0px;
   top : 0px;
   background : #F5F5F5;
   width : 300px;
   height : 200px;
   border-radius: 20px;
}

div.right{
   position : absolute;
   left : 400px;
   top : 0px;
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
div.footerinfo a{
color: white;}

span.kor, a{
color:#ffffff;
font-size: 12px;
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
   top : 50px;
   left : 130px;
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
div.mid{
	position : absolute;
	left : 100px;
	background : #F5F5F5;
	width: 800px;
	height: 300px;
	top: 300px;
}


/*??????*/
.ms_nav {
float: right;
position: absolute;
right: 100px;
top : 300px;
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
		//???????????? grade ????????????
		mdao.updateGradeGreen(mdto, id);
	}
	else if(starcnt>=30)
	{
		//???????????? gold ????????????
		mdao.updateGradeGold(mdto, id);
	}
		
%>
<body>


<!-- top div -->
<div class="container">


<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; My Starbucks</span>
   <ul class="smap">
   <li><a href="index.jsp"><img src="../../MyStarbucks/image/home.png" alt="?????????"></a></li>
   <li><img class="arrow" src="../../MyStarbucks/image/arrow.png" alt="????????????"></li>
   <li><a href="index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp" ><span class="kor">My Starbucks</a></li>

	</ul>
</div>


<div class="mid">
<!-- right div -->
	<div class="right">
   		   <span style="font-size: 10pt; margin-left: 50px; "><b style="color: green;"><%=name %></b>&nbsp;??????<br>&nbsp;&nbsp;&nbsp;
   		   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?????? <b style="color: green;"><%=grade %></b>&nbsp;????????????.</span>
   		<br><br>
   		<button type="button" class="btn btn-default btnre" id="btn" style=" width : 150px; height: 30px;  " onclick="location.href='index.jsp?main=../../MyStarbucks/RewordBenefit.jsp'">????????? ??? ??????</button>
  		 <button type="button" class="btn btn-default btnst" id="btn" style=" width : 150px; height: 30px; " onclick="location.href='index.jsp?main=../../MyStarbucks/StarHistory.jsp'">??? ????????????</button>
   		
   		<button type="button" class="btn btn-default btnsu" id="btn" style=" width : 150px; height: 30px; ">???????????? ??????</button>
   		<button type="button" class="btn btn-default btnbun" id="btn" style="width : 150px; height: 30px; ">???????????? ??????</button>
	</div>      



<!-- left div -->

	<div class="left">
   		<span style="font-weight : blod; font-size: 15pt;">&nbsp;&nbsp;My Star</span>
   		<br>
  		 <img alt="" src="../../MyStarbucks/image/ms07.png" style="width : 300px; height : 150px;">   
	</div>

	<!-- if ?????? ????????? ???????????? 1 ?????????????????? 2 ?????? ???????????? 3 ??? ????????? ?????? ????????? -->
	<div class="leftsu">
	<span style="margin-left: 0px; margin-top: 10px;"><b><%=starcnt %></b></span>
   	<br><br><br>
   	<div class="rank">
   	<span style="font-size: 9pt;">
   	<%if(starcnt<5)
   	  {%>
   			<p><%=5-starcnt %>?????? ????????? ??? ?????????<br>
   			<b style="color: green;">Green Level</b>?????? ????????? ?????????!</p>
   			
   	  <%}
   	  else if(starcnt>=5 && starcnt<30)
   	  {%>
   		  <p><%=30-starcnt %>?????? ????????? ??? ?????????<br>
   		  <b style=" color: gold;">Gold Level</b>?????? ????????? ?????????!</p>
   	  <%}
   		
   %>
   	</span>
   	</div>
	</div>
</div>



<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="#">My ?????????<span class="sbox_arrow_down1"></span></a>
			<ul class="sub1">
				<li><a href="index.jsp?main=../../MyStarbucks/RewordBenefit.jsp" required="login" >?? ????????? ??? ??????</a></li>
				<li><a href="index.jsp?main=../../MyStarbucks/StarHistory.jsp" required="login">?? ??? ????????????</a></li>
			</ul>
		</li>
		
		<li class="msRnb_btn"><a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp" required="login">My ??????</a></li>
		<li><a href="index.jsp?main=../../MyStarbucks/voclist.jsp" required="login">My ????????? ??????</a></li>
		
		<li>
			<a href="#">??????????????????<span class="sbox_arrow_down2"></span></a>
			<ul class="sub2">
				<li><a href="index.jsp?main=../../MyStarbucks/updateInfocheck.jsp" required="login">?? ?????????????????? ??? ??????</a></li>
				<li><a href="#" required="login">?? ?????? ??????</a></li>
				<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">?? ???????????? ??????</a></li>
				<input type="hidden">
			</ul>
		</li>
	</ul>
</nav>

</div>
</body>
</html>