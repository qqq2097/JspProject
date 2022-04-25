<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
div.container{
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

div.left{
   position : absolute;
   left : 100px;
   top : 300px;
   background : #F5F5F5;
   width : 300px;
   height : 200px;
}

div.right{
   position : absolute;
   left : 450px;
   top : 300px;
   background : #F5F5F5;
   width : 300px;
   height : 200px;
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
   left : 1000px;
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
      	<div class="mytitle2" align="center" style="left : 50px;" onclick="">고객의 소리</div>
      </li>
   </ul>

</div>

<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; My Starbucks</span>
   
</div>

<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'"></span>
      <span onclick=""> > My Starbucks</span>
</div>

<!-- left div -->
<div class="left">
   <span style="font-weight : blod; font-size: 15pt;">&nbsp;&nbsp;My 리워드</span>
   <br>
   <img alt="" src="../../MyStarbucks/image/ms07.png" style="width : 300px; height : 150px;">   
</div>

<div class="leftsu">
   <span>3</span>
</div>

<!-- right div -->
<div class="right">
   <span>님은<br>현재  이십니다.</span>
   <br><br>
   <button type="button" class="btn btn-default btnre" style="width : 130px; margin-left: 20px; margin-top: 20px;" onclick="location.href='index.jsp?main=../../MyStarbucks/RewordBenefit.jsp'">리워드 및 혜택</button>
   <button type="button" class="btn btn-default btnre" style="width : 130px; margin-top: 20px;" onclick="location.href='index.jsp?main=../../MyStarbucks/StarHistory.jsp'">별 히스토리</button>
   <br>
   <button type="button" class="btn btn-default btnsu" style="width : 130px; margin-left: 20px; margin-top: 10px;">개인정보 수정</button>
   <button type="button" class="btn btn-default btnbun" style="width : 130px; margin-top: 10px;">비밀번호 변경</button>
</div>      


</body>
</html>