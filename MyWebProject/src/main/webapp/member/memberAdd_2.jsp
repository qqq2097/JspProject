<%@page import="StarBucksDao.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Starbucks Coffee Korea</title>
  <meta name="author" content="geumyong, video, jinsol, nara">
  <meta name="description" content="국내 최고의 커피 전문점! 항상 최고의 음료를 선사합니다. 스타벅스만의 프리퀀시를 받아보세요.">
  <meta name="keywords" content="스타벅스, 커피, 텀블러, 곰돌이, 머그컵, 아이스아메리카노, 돌체라떼, 그란데, 밴티, 톨, 프리퀀시, 리워드, 리저브드, 사이렌오더, 레디백, 기프티콘, 기프티 카드, 자바칩 프라푸치노">

  <!-- http://ogp.me/ -->
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="Starbucks Coffee Korea">
  <meta property="og:title" content="스타벅스를 즐겨보세요!">
  <meta property="og:description" content="스타벅스는 항상 최고의 음료를 선사합니다.">
  <meta property="og:image" content="../starbucks_clone/starbucks_clone/assets/img/logo.png">
  <meta property="og:url" content="gmyong.dothome.co.kr/starbucks">

  <meta property="twitter:card" content="summary">
  <meta property="twitter:site" content="Starbucks Coffee Korea">
  <meta property="twitter:title" content="스타벅스를 즐겨보세요!">
  <meta property="twitter:description" content="스타벅스는 항상 최고의 음료를 선사합니다.">
  <meta property="twitter:image" content="../starbucks_clone/starbucks_clone/assets/img/logo.png">
  <meta property="twitter:url" content="gmyong.dothome.co.kr/starbucks">

  <!-- <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"> -->
  <link rel="icon" href="../starbucks_clone/starbucks_clone/starbucks_favicon.ico">
  <link rel="apple-touch-icon" href="starbucks_favicon.ico">

  <!-- 폰트 -->
  <link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
    rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
  
  <!-- CSS 링크 -->
  <link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/normalize.css" />
  <link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/reset.css" />
  <link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/style.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
	
	.line{border-bottom: 1px solid #C1C1C1;}
	.linesq{
		border:1px solid #C1C1C1;
	}
	.custom-select{
		widht:100px;
		height: 30px;
	}
	button{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 2px;
		background-color: #0B610B; 
		border: 1px solid #0B610B; 
		color: white;
	}
input[class="mem_agreeMent"]{/*원래 체크박스는 보이지 않게  */
     display: none;  
}

.cb{/*기본 체크박스 디자인 */
	display: inline-block;
	position:relative;
    width: 2.2em; 
    height: 2.2em;
    border: 2px solid #eee;
    background-color: #eee;
    border-radius: 50%;
    margin: 0 5px -6px 0;
    font-size: 1.4em;
}
input[type="checkbox"] + label:before { /* 체크 마크 */
    position: relative;
    align-content:center;
    left: 0px;
    content: '✔';
     /* 체크 마크 ASCii 문자 */
    font-size: 2em;
    line-height: 0.8;
    color: #fff;
    transition: all;
    display: inline-block;
    
}
input[class="mem_agreeMent"]:checked +label {/*클릭하면 배경 색상 변경  */
    border: 2px solid #006236;
    background-color: #006236;
}
div.footerinfo {
	width: 100%;
	height: 500px;
	top: 2500px;
}

</style>

<script type="text/javascript">


$(function() {
	setDateBox();//파일 시작 전에 연도,월,일 표시 함수 실행.
	var myemail = $("#email").val();//email 값 읽어오기
	var myhp = $("#hpnum").val();//hp값 읽어오기
	if(myhp==""){
		console.log(myemail);
		$("#hpnum").attr("readonly",false);//받아온 email 값은 수정 불가능하지만 값 전달은 가능하게 readonly로 유지하고,hp값은 입력 가능하게 readonly해제
		$("#email").css("background-color","#D8D8D8");//readonly인 email 박스 색상 변경
	}
	else if(myemail == ""){
		console.log(myhp);
		$("#email").attr("readonly",false);//받아온 hp 값은 수정 불가능하지만 값 전달은 가능하게 readonly로 유지하고,email값은 입력 가능하게 readonly해제
		$("#hpnum").css("background-color","#D8D8D8");//readonly인 hp 박스 색상 변경
	}
	
	
});


  // select box 연도 , 월 표시
  function setDateBox() {
    var dt = new Date();
    var year = "";
    var com_year = dt.getFullYear();

    // 발행 뿌려주기
    $("#year").append("<option value=''>년도</option>");

    // 올해 기준으로 -50년부터 +1년을 보여준다.
    for (var y = (com_year - 50); y <= (com_year + 1); y++) {
      $("#year").append("<option value='" + y + "'>" + y + " 년" + "</option>");
    }

    // 월 뿌려주기(1월부터 12월)
    var month;
    $("#month").append("<option value=''>월</option>");
    for (var i = 1; i <= 12; i++) {
      $("#month").append("<option value='" + i + "'>" + i + " 월" + "</option>");
    }
    // 일 뿌려주기(1일부터 31일)
    var day;
    $("#day").append("<option value=''>일</option>");
    for (var i = 1; i <= 31; i++) {
      $("#day").append("<option value='" + i + "'>" + i + " 일" + "</option>");
    }

  } 
  
 
function check() {
	var myid= $("input[name=id]").val();
	var pass1 = $("input[name=pass1]").val();
	var pass2 = $("input[name=pass2]").val();
	var name = $("input[name=name]").val();
	var hp =$("input[name=hpnum]").val();
	var mybirthday =$("select[name=myyear]").val()+"-"+$("select[name=mymonth]").val()+"-"+$("select[name=myday]").val();
	var email =  $("input[name=email]").val();
	var nickname =  $("input[name=nickname]").val();
	
	var reghp =  /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;//숫자와- 입력하는 정규식 
	var regemail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
	
	console.log(mybirthday);
	
	if(myid==""){
		alert("아이디를 입력하세요");
		document.getElementById("myid").focus();
		return false;
	}
	 if(pass1!=pass2){
		alert("확인 비밀번호가 맞지 않습니다.");
		document.getElementById("pass1").focus();
		return false;
	}
	if(pass1==""){
		alert("비밀번호를 입력하세요.");
		document.getElementById("pass1").focus();
		return false;
	}
	if(pass2==""){
		alert("비밀번호를 입력하세요.");
		document.getElementById("pass2").focus();
		return false;
	}
	if(name==""){
		alert("이름을 입력하세요");
		document.getElementById("myname").focus();
		return false;
	}
	
	  if(mybirthday=="--"){
		alert("생일을 입력하세요");
		document.getElementById("year").focus();
		return false;
	}  
	if(hp==""){
		alert("핸드폰 번호를 입력하세요");
		document.getElementById("hpnum").focus();
		return false;
	}
	 if(!reghp.test(hp)){
		alert("핸드폰 번호는 ###-####-####의 형식으로 입력해주세요.");
		document.getElementById("hpnum").focus();
		return false;
	} 
	if(email==""){
		alert("EMAIL를 입력하세요");
		document.getElementById("email").focus();
		return false;
	}
	if(!regemail.test(email)){
		alert("EMAIL은 ---@--- 형식으로 입력해주세요.");
		document.getElementById("email").focus();
		return false;
	}  
return true;
}
//데이터 추가 전 필수 항목 비어있는지 확인

</script>  

</head>
<%
request.setCharacterEncoding("utf-8");
String email = request.getParameter("email");//팝업창에서 보내준 email값
String hp = request.getParameter("hp");//팝업창에서 보내준 hp 값
if(email==null){
	email="";
}//hp값을 받아온 경우 email값은 null이기 때문에 공백처리_
if(hp==null){
	hp="";
	
}//email값을 받아온 경우 hp값은 null이기 때문에 공백처리

%>
<body>
	<div style="height: 130px;"></div>
      <form action="../../member/memaddAction.jsp"  method="post" class="form-inline" onsubmit="return check()" name="mfrm2">
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">회원가입</p>
      		<br>
      		<table  style="width:50%; border: 1px solid #C1C1C1;">
      		<tr style="border-bottom: none;">
	      		<td  align="center" style="padding-top:20px; ">
	      			<img src="../../member/memberaddimg1.PNG">
      			</td>
      		</tr>
      		<tr class="line">
      			<td  style="padding-top:20px;padding-bottom:20px; text-align:center; color:gray; font-size: 2.5em;"><p>회원정보를 입력해 주세요.</p></td>
      		</tr>
      		<tr>
      			<td class="line">
      				<input type="text" id="myid" name="id" style="width:95%;height:50px;font-size:2em; margin: 20px 20px 20px 20px;" placeholder="  아이디">
      			</td>
      		</tr>
      		<tr>
      			<td class="line">
      				<input type="password" id="pass1" name="pass1" style="width:95%;height:50px;font-size:2em; margin: 20px 20px 20px 20px;" placeholder="  비밀번호">
      			</td>
      		</tr>
      		<tr>
      			<td>
      				<input type="password" id="pass2" name ="pass2"style="width:95%;height:50px;font-size:2em; margin: 20px 20px 20px 20px;" placeholder="  비밀번호 확인">
      			</td>
      		</tr>
      		
      	</table>
     	<br><br><br>
     	<table class="table table-bordered" style="width:50%; border: 1px solid #C1C1C1;">
     	<tr >
      		<td colspan="2" style="width:100%; font-size: 2em;padding-left: 20px; padding-top: 20px;text-align: left; " class="line">
      			<b>이름</b><b style="color:#006236;">(필수)</b>
      			<br>
      			 <input type="text" id="myname" name="name" style="width:50%;height:50px; margin: 20px 20px 20px 20px;" placeholder="  이름">  			
      		</td>
 		</tr>
 		
 		<tr>
      		<td colspan="2"  style="width:100%; font-size: 2em;padding-left: 20px; padding-top: 20px; padding-bottom:20px; text-align: left;" class="line">
      			<b>생년월일</b><b style="color:#006236;">(필수)</b>
      			<br><br>
      			<div style="padding-left: 20px;">
      			<select name="myyear" id="year" title="년도" class="custom-select" size = "1" ></select>
				&nbsp;&nbsp;
				<select name="mymonth" id="month" title="월" class="custom-select" size = "1"></select>
				&nbsp;&nbsp;
				<select name="myday" id="day" title="일" class="custom-select" size = "1"></select>
      			</div>
      		</td>
 		</tr>
 		<tr>
      		<td colspan="2" style="width:100%; font-size: 2em;padding-left: 20px; padding-top: 20px; padding-bottom:20px; text-align: left;" class="line">
      			<b>핸드폰</b><b style="color:#006236;">(필수)</b>
      			<br><br>
      			 <b><input style="width:70%; height:50px;" readonly="readonly" value="<%=hp %>" id="hpnum" name="hpnum"></b>  			
      		</td>
 		</tr>
 		<tr>
      		<td colspan="2" style="width:100%; font-size: 2em;padding-left: 20px; padding-top: 20px;  padding-bottom:20px; text-align: left; " class="line">
      			<b>메일</b><b style="color:#006236;">(필수)</b>
      			<br><br>
      			 <input style="width:70%; height:50px;" name="email" readonly="readonly" id="email" value="<%=email %>" type="text" style="width:95%;height:50px; margin: 20px 20px 20px 5px;"  placeholder=" E-mail을 입력하세요.">
      		</td>
 		</tr>
     	</table>
     	
     	<table style=" margin-top:50px; width:50%; border: 1px solid #C1C1C1;">
      		<tr>
	      		<td colspan="2" align="center" width="100%" style="padding-top:20px;">
	      			<img src="../../member/starimg.PNG">
      			</td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 20px;  ">
      				<b>닉네임(선택)</b>
      			</td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 50px; padding-top: 20px;  ">
      				<b>선택적 개인정보 수집동의 및 이용약관</b>
      			</td>
      			<td align="right" style="padding-right:50px; padding-bottom:10px;">
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox"  name="agreeMent" id="mem_agreeMent1" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent1"  class="cb"></label>
				</div>
    			</td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center" style="padding-top: 20px;">
      				<textarea style="background-color:#F7F7F7; border:1px solid #C1C1C1;padding-bottom:150px; resize:none; width:90%; height:200px; font-size: 2em;" readonly="readonly">
      					<!-- 선택적 이용약관 입력 -->
      				</textarea>
      			</td>
      		</tr>
      		<tr style="height: 30px;">
      		</tr>
      		<tr>
      			<td	colspan="2">
      				<input  id="nickname" type="text" style="width:90%;height:50px;font-size:2em; margin: 20px 20px 20px 50px; background-color: #F7F7F7;"  placeholder=" 닉네임 입력을 위해 약관에 동의해주세요.">
      			</td>
      		</tr>
     	</table>
     	
     	<table style="width:50%;">
     		<tr style="height: 80px;"></tr>
	      		<tr>
	      			<td align="center" style="font-size: 2em;">
	      				<p>* 선택항목은 입력하지 않거나 동의하지 않아도 회원가입이 가능합니다.</p>
	      			</td>
	      		</tr>
	      		<tr align="center">
	      			<td>
	      				<button type ="submit"  style="width: 80%;margin-top:20px;height:70px; font-size: 3em;">가입하기</button>
	      			</td>
	      		</tr>
	      	</table>
     	
     	<!-- -->
      	</div>
      
      
      	<div style="height: 130px;">
      	</div>
      </form>


</body>

</html>