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
div.onetitle{
   font-size: 20pt;
   font-weight: bold;   
}
div.one{
   /* border-top: 1px solid gray; */
   /* border-bottom: 1px solid gray; */
}

div.two{
   /* border-top: 1px solid gray; */
   /* border-bottom: 1px solid gray; */
}
div.twotitle{
   font-size: 20pt;
   font-weight: bold;   
}

div.threetitle{
   font-size: 20pt;
   font-weight: bold;   
}

div.threeone{
   width : 300px;
   height: 500px;
   /* border: 1px solid black; */
   margin-left: 30px;
}
div.top{
   width : 100%;
   height : 200px;
   background-image: url("image/ms03.jpg");
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
span.formbtn1,span.formbtn2,span.formbtn3{
   border-radius: 100%;
   background: green;
   color: #fff;
   margin-left: 50px;
}

</style>
</head>

<script type="text/javascript">
$(function(){
   
   $(".subone").hide();
   $(".subtwo").hide();
   $(".subthree").hide();
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
   
   
   $(".formbtn1").click(function(){
      
      $(".onetitle").next().toggle("fast");
      
   });
   
   $(".formbtn2").click(function(){
      
      $(".twotitle").next().toggle("fast");
      
   });
   
   $(".formbtn3").click(function(){
      
      $(".threetitle").next().toggle("fast");
      
   });
});
</script>

<body>

<!--  메뉴창  -->
<div class="container">
            
   <ul>
      <li class="mylist">
         <div class="mytitle1" align="center">My 리워드
            
         </div>
         
         <ul class="sub1">   
            <li onclick="RewordBenefit.jsp"><a href="" required="login">· 리워드 및 혜택</a></li>
            <li><a href="StarHistory.jsp" required="login">· 별 히스토리</a></li>
            
         </ul>
      </li>
      
      <li class="mylist">   
         <div class="mytitle2" align="center" style="left : 50px;" onclick="location.href='MyMenu.jsp'">My 메뉴</div>
         
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


<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp;리워드 및 혜택</span>
   
</div>

<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='MyStarBucksForm.jsp'"></span>
      <span style="font-size: 13pt;" onclick=""> > My Starbucks > 리워드 및 혜택</span>
</div>


<div class="one">
   <div class="onetitle" style="margin-left: 100px; margin-top: 100px;  width: 600px; background: #F5F5F5;">스타벅스 리워드 (Starbucks Rewards)란?
   <span class="glyphicon glyphicon-menu-down formbtn1"></span></div>
      
      <ul class="subone"><br><b style="font-size: 15pt; color: green; margin-left: 50px;">스타벅스만의 특별한 혜택,스타벅스 리워드를 이용해보세요!</b>
          <li style="margin-left: 70px;">스타벅스 리워드는 스타벅스를 사랑해주시는 고객님을 위해 별을 적립하여 혜택으로 돌려드리는 특별한 리워드 프로그램입니다.</li>
          <li style="margin-left: 70px;">스타벅스를 즐기는 최고의 방법, 스타벅스 카드를 등록하고 스타벅스 리워드 혜택을 누려보세요.   </li>
       </ul>
</div>

<div class="two">
   <div class="twotitle" style="margin-left: 100px;  width: 600px;">스타벅스 별이란?
   <span class="glyphicon glyphicon-menu-down formbtn2"></span></div>
   <ul class="subtwo"><b style="font-size: 15pt; color: green; margin-left: 50px;">계정에 등록하신 스타벅스 카드로 결제를 하셨나요?</b>
          <li style="margin-left: 70px;">등록된 카드로 결제 시마다 계정으로 별★을 적립해드립니다.</li>
          <li style="margin-left: 70px;">적립된 별★은 스타벅스 리워드 (Starbucks Rewards) 프로그램을 통해 다양한 혜택으로 돌려드립니다.</li>
          <br>
          <li style="margin-left: 70px; color: gray; font-size: 9pt;">- 별 ★ 의 유효기간은 1년이며, 유효기간이 지나면 별★이 사라집니다.</li>
         <br>
   
   <b style="font-size: 15pt; color: green;margin-left: 50px;">별★을 모아 등급별 특별한 혜택을 누리세요!</b>
   <br>       
             <img alt="" src="image/ms04.png" style="margin-left: 50px;">
             <img alt="" src="image/ms05.png">
             <img alt="" src="image/ms06.png">
             <div class="welcome">
                <span  style="margin-left: 90px; font-weight: bold; font-size: 15pt; color: black;"> Welcome Level </span>
                <span  style="margin-left: 190px; font-weight: bold; font-size: 15pt; color: green;"> Green Level </span>
                <span  style="margin-left: 210px; font-weight: bold; font-size: 15pt; color: #b8860b;"> Gold Level </span>
                <br>
                <span style="margin-left: 60px; font-weight: bold; font-size: 12pt;">스타벅스 카드를 최초 등록 시</span>
                <span style="margin-left: 130px; font-weight: bold; font-size: 12pt;">별★을 5개 모았을 경우</span>
                <span style="margin-left: 150px; font-weight: bold; font-size: 12pt;">별★을 30개 모았을 경우</span>
             
          <br>
          <br>
          <br>
          <li style="margin-left: 30px; color: gray; font-size: 9pt;">- 각 레벨 진입은 해당 등급조건을 충족한 익일부터 적용됩니다.</li>
          <li style="margin-left: 30px; color: gray; font-size: 9pt;">- Welcome level이 된 후 별을 모은 시점부터 1년 안에 30개의 별을 모으시면 Gold level로 승급되며,<br>
           &nbsp;&nbsp; 승급한 날짜로부터 1년간 별 30개를 추가 적립하시면Gold Level이 1년 연장됩니다.</li>
   </ul>
    
</div>

<div class="three">
   <div class="threetitle" style="margin-left: 100px;  width: 600px; background: #F5F5F5;">회원 등급별 혜택
   <span class="glyphicon glyphicon-menu-down formbtn3"></span></div>
   <ul class="subthree">
      <img alt="" src="image/ms08.png">
      <img alt="" src="image/ms09.png">
      <img alt="" src="image/ms10.png">
      <br>
      <span  style="margin-left: 100px; font-weight: bold; font-size: 15pt; color: black;"> Welcome Level </span>
       <span  style="margin-left: 230px; font-weight: bold; font-size: 15pt; color: green;"> Green Level </span>
       <span  style="margin-left: 250px; font-weight: bold; font-size: 15pt; color: #b8860b;"> Gold Level </span>
       <br>
       <span style="margin-left: 65px; font-weight: bold; font-size: 12pt;">스타벅스 카드를 최초 등록 시</span>
       <span style="margin-left: 175px; font-weight: bold; font-size: 12pt;">별★을 5개 모았을 경우</span>
       <span style="margin-left: 190px; font-weight: bold; font-size: 12pt;">별★을 30개 모았을 경우</span>
                
      
      <table style="width: 1050px; height: 500px; border: 1px solid black;  margin-left: 20px; text-align: left;">
         <tr>
            <td>
               
                  - 스타벅스 카드로 음료 구매 시, Free Extra 1개 제공<br>
                  - 회원 가입 후 첫 구매 시, 익일 웰컴 첫 구매 무료 음료 쿠폰 제공<br>
                  - 기능 설정 후 스타벅스 카드로 결제 시, 현금영수증 자동 발행<br>
                  - 분실 신고 시점의 카드 잔액 보호<br>
                  - 자동 충전 5만원 이상 설정 후, 자동 충전 발생 시마다 익일 BOGO e-쿠폰 제공(충전 금액 합산은 적용되지 않습니다.)
               
            </td>
            
            <td>
               
               - 스타벅스 카드로 음료 구매 시, Free Extra 1개 제공<br>
               - 회원 가입 후 첫 구매 시, 익일 웰컴 첫 구매 무료 음료 쿠폰 제공<br>
               - 기능 설정 후 스타벅스 카드로 결제 시, 현금영수증 자동 발행<br>
               - 분실 신고 시점의 카드 잔액 보호<br>
               - 자동 충전 5만원 이상 설정 후, 자동 충전 발생 시마다 익일 BOGO e-쿠폰 제공(충전 금액 합산은 적용되지 않습니다.)
            </td>
            
            
            <td>
               
               - 스타벅스 카드로 음료 구매 시, Free Extra 1개 제공<br>
               - 회원 가입 후 첫 구매 시, 익일 웰컴 첫 구매 무료 음료 쿠폰 제공<br>
               - 기능 설정 후 스타벅스 카드로 결제 시, 현금영수증 자동 발행<br>
               - 분실 신고 시점의 카드 잔액 보호<br>
               - 자동 충전 5만원 이상 설정 후, 자동 충전 발생 시마다 익일 BOGO e-쿠폰 제공(충전 금액 합산은 적용되지 않습니다.)
            </td>
            
         </tr>
         
         
      </table>
   </ul>
</div>
</body>
</html>