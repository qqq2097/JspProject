<%@page import="StarBucksDto.RewordDto"%>
<%@page import="java.util.Vector"%>
<%@page import="StarBucksDao.RewordDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
div.top{
   width : 100%;
   height : 200px;
   background-image: url("../../MyStarbucks/image/ms03.jpg");
}

div.topsub{
   position : absolute;
   width : 300px;
   height : 100px;
   
   top : 170px;
   left : 1000px;
   color: #fff;
   
   font-size: 15pt;
}
span.toptitle{
   
   color: #fff;
   font-size: 20pt;
   font-weight: bold;
   top: 200px;
   
}

div.container{

   position : fixed;
   width:100%;
}
div.menuul{
   position : absolute;
   left : 1000px;
   top : 300px;
   font-size: 17pt;
}

li.mylist{
   border: 1px solid gray;
   width : 300px;
   border-radius: 100px;
   cursor: pointer;
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
bottom: 410px;
font-weight: blod;
width: 220px;
margin-bottom: 90px;
margin-top: -300px;
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


<body>
<%
	RewordDao dao=new RewordDao();
	List<RewordDto> list=dao.getAllRewords();
 	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
        

<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; 별 히스토리</span>
   
</div>
<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'"></span>
      <span onclick=""> > My Starbucks > 별 히스토리</span>
</div>

<div class=" first">
<table class="table table-striped" style="width : 400px; height: 100px; margin-left: 250px; margin-top: 100px;" >
   <tr>
      <td align="center">사용 가능한 별</td>
      
      <td align="center">총 누적 별</td>
   </tr>
   
   <tr>
      <td align="center">1</td>
      <td align="center">1</td>
   </tr>
</table>
</div>

<div class="second" style="width : 700px; height: 50px; margin-left: 100px; margin-top: 100px; background: #DCDCDC; text-align: center;">

   <br>
   기간별&nbsp;&nbsp;| 
   <input type="radio" id="onemonth" name="radioone" checked="checked">1개월
   <input type="radio" id="oneyear" name="radioone">1년
   &nbsp;&nbsp;&nbsp;&nbsp;
   일자별 &nbsp;&nbsp;
   <input type="date">~
   <input type="date">
   <input type="button" style="width : 50px; background: #C0C0C0; color:#fff;" value="검색" >
   <br>
   
   
</div>
   
<div class="third" style="width: 800px; height: 600px; margin-left: 50px; border: 1px solid black;">
   <table class="table table-bordered">
   	<tr>
      <th align="center"> No</th>
      <th align="center"> 카드번호</th>
      <th align="center"> 적립별</th>
      <th align="center"> 매장명</th>
      <th align="center"> 적립일</th>     
   </tr>
   
   
    <%
   for(int i=0;i<list.size();i++)
   {
	   RewordDto dto=list.get(i);
	   %>
	   <tr>
	   	<td><%=i+1 %></td>
	   	<td><%=dto.getCardnum() %></td>
	   	<td><%=dto.getStarcnt() %></td>
	   	<td><%=dto.getStoreaddr() %></td>
	   	<td><%=sdf.format(dto.getBuyday()) %></td>
	   </tr>
   <%}
   %> 
   
   
  
   </table>
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
				<li><a href="#" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="#" required="login">· 회원 탈퇴</a></li>
				<li><a href="#" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>

</body>
</html>