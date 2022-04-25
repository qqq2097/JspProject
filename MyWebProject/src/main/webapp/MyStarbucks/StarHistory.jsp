<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- 폰트 -->
<link
  href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
  rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">
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
	position : absolute;
	right: 395px;
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
</style>
<script type="text/javascript">
$(function(){
   
   $(".sub1").hide();
   $(".sub2").hide();
   
   $(".mytitle1").click(function(){
      
      $(this).next().toggle("fast");
      $(".sub2").hide();
      
      
      
   });
   
   $(".mytitle2").click(function(){
      
      $(this).next().toggle("fast");
      $(".sub1").hide();
      $(".sub2").hide();
   });
   
   
   $(".mytitle3").click(function(){
      
      $(this).next().toggle("fast");
      $(".sub1").hide();
   
   });
});
</script>

</head>
<body>
<!--  메뉴창  -->
<div class="container">
        <div class="menuul">   
   <ul>
      <li class="mylist">
         <div class="mytitle1" align="center">My 리워드
            
         </div>
         
         <ul class="sub1">   
            <li onclick="location.href='index.jsp?main=../../MyStarbucks/RewordBenefit.jsp'">· 리워드 및 혜택</li>
            <li onclick="location.href='index.jsp?main=../../MyStarbucks/StarHistory.jsp'">· 별 히스토리</li>
            
         </ul>
      </li>
      
      <li class="mylist">   
         <div class="mytitle2" align="center" style="left : 50px;" onclick="location.href='index.jsp?main=../../MyStarbucks/MyMenu.jsp'">My 메뉴</div>
         
      </li>
      
      <li class="mylist">
         <div class="mytitle3" align="center">개인정보 관리
            
         </div>
         <ul class="sub2">
            <li><a href="" required="login">· 개인정보확인 및 수정</a></li>
            <li><a href="" required="login">· 회원 탈퇴</a></li>
            <li><a href="" required="login">· 비밀번호 변경</a></li>
         </ul>
      </li>
      
      <li class="mylist">
      	<div class="mytitle2" align="center" style="left : 50px;" onclick="location.href='index.jsp?main=../../MyStarbucks/voclist.jsp'">고객의 소리</div>
      </li>
   </ul>
</div>
</div>

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
   <table class="table table-border">
      <th align="center">No</th>
      <th align="center">카드번호</th>
      <th align="center">적립별</th>
      <th align="center">매장명</th>
      <th align="center">적립일</th>
      
   
   </table>
</div>

</body>
</html>