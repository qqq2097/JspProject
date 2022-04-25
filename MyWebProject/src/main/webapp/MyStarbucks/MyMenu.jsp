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
button.checkbtn:hover {
   background: green;
   color: #fff;
   font-style: inherit;
   font-weight: bold;
   text-decoration: underline;
   
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
            <li><a href="RewordBenefit.jsp" required="login">· 리워드 및 혜택</a></li>
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
   </ul>

</div>


<!-- top div -->
<div class="top">
   <br><br><br><br>
   <span class="toptitle">&nbsp;&nbsp; My 메뉴</span>
   
</div>

<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='MyStarBucksForm.jsp'"></span>
      <span onclick=""> > My Starbucks > My 메뉴</span>
</div>

<div style="margin-left: 100px; margin-top: 100px;">
   <img alt="" src="image/ms11.png">
</div>

<div style="margin-left: 115px; margin-top: 100px; width : 850px; height: 50px;">
   <button type="button"  style="width:266px; height: 50px;" class="btn btn-default checkbtn"> 나만의 음료</button>
   <button type="button" style="width:266px; height: 50px; " class="btn btn-default checkbtn"> 나만의 푸드</button>
   <button type="button" style="width:260px; height: 50px;" class="btn btn-default checkbtn"> 나만의 상품</button>
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
</body>
</html>