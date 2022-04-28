<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<!-- 폰트 -->
<link
  href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
  rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">
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



li.mylist{
   border: 1px solid gray;
   width : 300px;
   border-radius: 100px;
   cursor: pointer;
}
button.checkbtn:hover {
   background: green;
   color: #fff;
   font-style: inherit;
   font-weight: bold;
   text-decoration: underline;
   
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
margin-top: 200px;
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
   $(".mymenulist").hide();
   $(".myfoodlist").hide();
   $(".mysangpumlist").hide();
   
   $(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});
   
   
   
   $("#drinkbtn").click(function(){
	      
	   $(".mymenulist").toggle("fast");
	   $(".myfoodlist").hide();
	   $(".mysangpumlist").hide();
	   
	   });
   
   $("#foodbtn").click(function(){
	      
	   $(".mymenulist").hide();
	   $(".myfoodlist").toggle("fast");
	   $(".mysangpumlist").hide();
	   
	   });
   
   $("#sangpumbtn").click(function(){
	      
	   $(".mymenulist").hide();
	   $(".myfoodlist").hide();
	   $(".mysangpumlist").toggle("fast");
	   
	   });
});
</script>


</head>
<body>



<div class="container">
<!-- top div -->
<div class="top">
  	  <br><br><br><br>
   	  <span class="toptitle">&nbsp;&nbsp; My 메뉴</span>

	<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'"></span>
      <span onclick=""> > My Starbucks > My 메뉴</span>
	</div>
</div>

<div class="mid">
	<div style="margin-left: 100px; margin-top: 100px;">
   		<img alt="" src="../../MyStarbucks/image/ms11.png">
	</div>

	<div style="margin-left: 115px; margin-top: 100px; width : 850px; height: 50px;">
   		<button type="button"  style="width:266px; height: 50px; border: 1px solid gray" class="btn btn-default checkbtn" id="drinkbtn"> 나만의 음료</button>
   		<button type="button" style="width:266px; height: 50px; border: 1px solid gray" class="btn btn-default checkbtn" id="foodbtn"> 나만의 푸드</button>
   		<button type="button" style="width:260px; height: 50px; border: 1px solid gray" class="btn btn-default checkbtn" id="sangpumbtn"> 나만의 상품</button>
	</div>




	<div class="mymenulist">
   		<table class="table table-striped" style="width : 800px; margin-left: 120px; margin-top: 50px;">
   		<tr>
     		 <th>
        		 <input type="checkbox" id="chbox">         
     		 </th>
     		 <th>No</th>
    		  <th>음료명</th>
    		  <th>퍼스널 옵션</th>
    		  <th>등록일</th>
  	   </tr>
   
   		<tr>
      		<td></td>
      		<td></td>
      		<td></td>
      		<td></td>
      		<td></td>
   		</tr>
   
  	</table>
   		<input type="button" class="btn btn-default btn-sm" value="전체선택" style="margin-left: 120px; font-weight: bold;">
   		<input type="button" class="btn btn-default btn-sm" value="선택삭제" style="font-weight: bold;">
	</div>

	<div class="myfoodlist">
   		<table class="table table-striped" style="width : 800px; margin-left: 120px; margin-top: 50px;">
   		<tr>
     		 <th>
        		 <input type="checkbox" id="chbox">         
      		</th>
      		<th>No</th>
      		<th>푸드명</th>
     		 <th>워밍 옵션</th>
      		<th>등록일</th>
  		 </tr>
   
   		<tr>
      		<td></td>
      		<td></td>
      		<td></td>
     		 <td></td>
     		 <td></td>
  		 </tr>
   
   		</table>
   		<input type="button" class="btn btn-default btn-sm" value="전체선택" style="margin-left: 120px; font-weight: bold;">
   		<input type="button" class="btn btn-default btn-sm" value="선택삭제" style="font-weight: bold;">
	</div>

	<div class="mysangpumlist">
   		<table class="table table-striped" style="width : 800px; margin-left: 120px; margin-top: 50px;">
  		 <tr>
    		  <th>
     		    <input type="checkbox" id="chbox">         
     		 </th>		
     		 <th>No</th>
     		 <th>상품명</th>
      		<th>그라인드 옵션</th>
      		<th>등록일</th>
  		 </tr>
   
 		  <tr>
   		   <td></td>
   		   <td></td>
  		    <td></td>
  		    <td></td>
  		    <td></td>
  		  </tr>
   
   		</table>
  		 	<input type="button" class="btn btn-default btn-sm" value="전체선택" style="margin-left: 120px; font-weight: bold;">
   			<input type="button" class="btn btn-default btn-sm" value="선택삭제" style="font-weight: bold;">
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
				<li><a href="#" required="login">· 비밀번호 변경</a></li>
			</ul>
		</li>
	</ul>
</nav>

</div>
</body>
</html>