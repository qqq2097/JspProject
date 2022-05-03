<%@page import="StarBucksDto.RewordDto"%>
<%@page import="StarBucksDao.RewordDao"%>
<%@page import="java.util.Vector"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

div.footerinfo {
	width: 100%;
	height: 500px;
	top: 1500px;
}

div.top{
   width : 100%;
   height : 200px;
   background-image: url("../../MyStarbucks/image/ms03.jpg");
}

div.topsub{
   position: absolute;
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

.dbtable th
{
	border-top: 2px solid black;
	border-bottom: 2px solid black;
	height: 30px;
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
position: absolute;
bottom: -300px;
font-weight: blod;
width: 220px;
margin-bottom: 90px;
margin-top: -300px;
right:  500px;
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

div.second
{
	position: absolute;
	width: 500px;
	top : 450px;
	left: 200px;
}
div.dbtb
{
	position: absolute;
	top: 530px;
}
table.firsttb 
{
	border: 1px solid black;
	
}

table.firsttb th
{	
	border-top : 1px solid black;
	border-left : 1px solid black;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
}
table.firsttb td
{	
	border-top : 1px solid black;
	border-left : 1px solid black;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
}
</style>

<%
	String id = (String)session.getAttribute("id");
	//System.out.println(id);
	RewordDao dao=new RewordDao();
	List<RewordDto> list=dao.getAllRewords(id);
	//System.out.println(list);
	List<RewordDto> list2=dao.RadioOne(id);
	//System.out.println(list2);
	List<RewordDto> list3=dao.RadioTwo(id);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	int starcnt=dao.getTotalCountStar(id);
	//System.out.println(starcnt);
	String d1="";
	String d2="";
%>
<script type="text/javascript">
$(function(){
   
   $(".sub1").hide();
   $(".sub2").hide();
   $("#tb2").hide();
   $("#tb3").hide();
   $("#tb4").hide();
   
   $(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});
   
   
   
    $("#search").click(function(){
	   var d1=$("#date1").val();
	   var d2=$("#date2").val();
	   //alert(d1);
	   
	  
	   
	   $("#tb1").hide();
	   $("#tb3").hide();
	   $("#tb2").hide();
	   $("#tb4").show();
   }); 
   
   $("#onemonth").click(function(){
	   
	   //alert(1);
	   $("#tb1").hide();
	   $("#tb3").hide();
	   $("#tb2").show();
	   $("#tb4").hide();
   });
   
	$("#oneyear").click(function(){
	   
	   //alert(1);
	   $("#tb1").hide();
	   $("#tb2").hide();
	   $("#tb3").show();
	   $("#tb4").hide();
   });
   
});
</script>

</head>


<body>

        
<div class="container">
<!-- top div -->
	<div class="top">
   		<br><br><br><br>
   		<span class="toptitle">&nbsp;&nbsp; 별 히스토리</span>
   

		<div class="topsub">
      		<span class="glyphicon glyphicon-home" onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'"></span>
      		<span onclick=""> > My Starbucks > 별 히스토리</span>
		</div>
	</div>


	<div class="mid">
		<div class="first">
		<table class="table table-boreded firsttb" style="width : 400px; height: 100px; margin-left: 250px; margin-top: 100px;" >
   			<tr>
      			<th align="center">누적 별</th>
      			<th align="center">다음 등급까지 남은 별</th>
   			</tr>
   
   			<tr>
      			<td align="center"><%=starcnt %></td>
      			<td align="center">
      			<%
      				if(starcnt<5)
      				{	
      					int n=5-starcnt;
      					%>
      					<%=n %>개 남았습니다!
      					
      				<%}
      				else if(starcnt<30)
      				{
      					int n=30-starcnt;
      					%>
      					<%=n %>개 남았습니다!
      				<%}
      			%>
      			</td>
   	 		</tr>
	 	</table>
		</div>

		<div class="second" style=" background: #fafafa; text-align: center;">

   			<br>
   			기간별&nbsp;&nbsp;| 
   			<input type="radio" id="onemonth" name="radioone">1개월
   			<input type="radio" id="oneyear" name="radioone">1년
   			&nbsp;&nbsp;&nbsp;&nbsp;
   			일자별 &nbsp;&nbsp;
   			
   			<input type="date" name="date1" id="date1" required="required">~
   			<input type="date" name="date2" id="date2" required="required">
   			<input type="button" style="width : 50px; background: #C0C0C0; color:#fff;" value="검색" id="search">
   			<br><br>
   
   
		</div>
   		<div class="dbtb">
		<div class="third" style="width: 800px; height: 600px; margin-left: 50px; border: 1px solid black;" id="tb1">
   		<table class="table table-bordered dbtable" style="width : 800px; ">
   		<caption>전체</caption>
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
	   					<td align="center"><%=i+1 %></td>
	   					<td align="center"><%=dto.getCardnum() %></td>
	   					<td align="center"><%=dto.getStarcnt() %></td>
	   					<td align="center"><%=dto.getStoreaddr() %></td>
	   					<td align="center"><%=sdf.format(dto.getBuyday()) %></td>
	  				 </tr>
   					<%}
   				%> 
   
   
  
   		</table>
		</div>
		
		<div class="third" style="width: 800px; height: 600px; margin-left: 50px; border: 1px solid black;" id="tb2">
   		<table class="table table-bordered dbtable" style="width : 800px;" >
   		<caption>1개월</caption>
   			<tr>
      			<th align="center"> No</th>
      			<th align="center"> 카드번호</th>
      			<th align="center"> 적립별</th>
     			<th align="center"> 매장명</th>
      			<th align="center"> 적립일</th>     
   			</tr>
   
   
   			 <%
   				
   				for(int i=0;i<list2.size();i++)
   				{
	   				RewordDto dto=list2.get(i);
	  			 %>
	   				<tr>
	   					<td align="center"><%=i+1 %></td>
	   					<td align="center"><%=dto.getCardnum() %></td>
	   					<td align="center"><%=dto.getStarcnt() %></td>
	   					<td align="center"><%=dto.getStoreaddr() %></td>
	   					<td align="center"><%=sdf.format(dto.getBuyday()) %></td>
	  				 </tr>
   					<%}
   						%> 
   
   
  
   		</table>
		</div>
		
		<div class="third" style="width: 800px; height: 600px; margin-left: 50px; border: 1px solid black;" id="tb3">
   		<table class="table table-bordered dbtable" style="width : 800px;">
   		<caption>1년</caption>
   			<tr>
      			<th align="center"> No</th>
      			<th align="center"> 카드번호</th>
      			<th align="center"> 적립별</th>
     			<th align="center"> 매장명</th>
      			<th align="center"> 적립일</th>     
   			</tr>
   
   
   			 <%
   				
   				for(int i=0;i<list3.size();i++)
   				{
	   				RewordDto dto=list3.get(i);
	  			 %>
	   				<tr>
	   					<td align="center"><%=i+1 %></td>
	   					<td align="center"><%=dto.getCardnum() %></td>
	   					<td align="center"><%=dto.getStarcnt() %></td>
	   					<td align="center"><%=dto.getStoreaddr() %></td>
	   					<td align="center"><%=sdf.format(dto.getBuyday()) %></td>
	  				 </tr>
   					<%}
   						%> 
   
   
  
   		</table>
		</div>
		
		<div class="third" style="width: 800px; height: 600px; margin-left: 50px; border: 1px solid black;" id="tb4">
   		<table class="table table-bordered dbtable" style="width : 800px;">
   		<caption>검색한 기간</caption>
   			<tr>
      			<th align="center"> No</th>
      			<th align="center"> 카드번호</th>
      			<th align="center"> 적립별</th>
     			<th align="center"> 매장명</th>
      			<th align="center"> 적립일</th>     
   			</tr>
   
   
   			 <%-- <%
   				
   				for(int i=0;i<list4.size();i++)
   				{
	   				RewordDto dto=list4.get(i);
	  			 %>
	   				<tr>
	   					<td align="center"><%=i+1 %></td>
	   					<td align="center"><%=dto.getCardnum() %></td>
	   					<td align="center"><%=dto.getStarcnt() %></td>
	   					<td align="center"><%=dto.getStoreaddr() %></td>
	   					<td align="center"><%=sdf.format(dto.getBuyday()) %></td>
	  				 </tr>
   					<%}
   						%>  --%>
   
   
  
   		</table>
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
				<li><a href="#" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="#" required="login">· 회원 탈퇴</a></li>
				<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">· 비밀번호 변경</a></li>
				
			</ul>
		</li>
	</ul>
</nav>

</div>
</body>
</html>