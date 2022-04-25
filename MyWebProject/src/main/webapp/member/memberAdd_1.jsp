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
	
<style type="text/css">
	button{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 2px;
	}
	.line{border-bottom: 1px solid #C1C1C1;}
	.linesq{border:1px solid #C1C1C1;}
	.mem_agreeMent + label{
    position: relative;
}
.mem_agreeMent_cb input[type="checkbox"].mem_agreeMent{
    display: none;
}
.mem_agreeMent_cb input[type="checkbox"].mem_agreeMent + label:after { /* 체크 마크 */
    position: absolute;
    align-content:center;
    left: 0px;
    content: '✔'; /* 체크 마크 ASCii 문자 */
    font-size: 1.5em;
    line-height: 0.8;
    color: #fff;
    transition: all;
    display: inline-block;
}
.mem_agreeMent_cb input[type="checkbox"].mem_agreeMent + label:before { /* 체크박스 배경 */
    display: inline-block;
    content:' ';
    width: 2.2em; 
    height: 2.2em;
    border: 2px solid #eee;
    background-color: #eee;
    border-radius: 50%;
    margin: 0 5px -6px 0;
}


[type="checkbox"]:checked.mem_agreeMent + label:after { /* 체크 상태 - 불투명에 크기 1 */

    background-color: #006236;
    display: inline-block;   
    width: 1.5em; 
    height: 1.5em;
    font-size: 1em;
    border: 2px solid #0B610B;
    border-radius: 50%;
    
}
</style>

</head>
<body>
 
 	     
      <form action="" method="post" class="form-inline" onsubmit="return check(this)" name="mfrm">
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">회원가입</p>
      		<br>
      		<table class="table table-bordered" style="width:70%; border: 1px solid #C1C1C1;">
      		<tr>
	      		<td colspan="2" align="center" style="padding-top:20px;">
	      			<img src="memberaddimg1.PNG">
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" style="padding-top:20px;padding-bottom:20px; text-align:center; color:gray; font-size: 2.5em;" class="line"><a>회원가입 약관 동의 및 본인인증단계입니다.</a></td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 20px;">
      				<b>홈페이지 이용약관 동의</b><b style="color:#006236;">(필수)</b></td>
      			<td align="right" style="padding-top: 40px;">
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="mem_agreeMent" id="mem_agreeMent" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent"></label>
				</div>
    			</td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center" style="padding-top: 20px;">
      				<textarea style="background-color:#F7F7F7; border:1px solid #C1C1C1; resize:none; width:90%; height:150px; font-size: 2em;" readonly="readonly">
      					<!-- 이용약관입력 -->
      				</textarea>
      			</td>
      		</tr>
      		
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;">
      				<b>개인정보 수집 및 이용동의</b><b style="color:#006236;">(필수)</b>
      			</td>
      			<td align="right" style="padding-top: 40px;">
<!--체크박스 이름 바꾸기 -->      			
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="mem_agreeMent" id="mem_agreeMent" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent"></label>
				</div>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center" style="padding-top: 20px;">
      				<textarea style="background-color:#F7F7F7; border:1px solid #C1C1C1; resize:none; width:90%; height:150px; font-size: 2em;" readonly="readonly">
      					<!-- 개인정보 수집 및 이용동의 -->
      				</textarea>
      			</td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;">
      				<b>E-mail 및 SMS 광고성 정보 수신동의</b><b style="color:#006236;">(선택)</b>
      			</td>
      			<td align="right" style="padding-top: 40px;">
<!--체크박스 이름 바꾸기 -->   
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="mem_agreeMent" id="mem_agreeMent" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent"></label>
				</div>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2"style="padding-top: 20px;padding-left: 20px; ">
      				<p style="font-size: 1.8em;">다양한 프로모션 소식 및 신규 매장 정보를 보내드립니다.</p>
      			</td>
      		</tr>	
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;">
      				<b>회원가입 유의사항</b><b style="color:#006236;">(선택)</b>
      			</td>
      			<td align="right" style="padding-top: 40px;">
<!--체크박스 이름 바꾸기 -->   
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="mem_agreeMent" id="mem_agreeMent" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent"></label>
				</div>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2"style="padding-top: 20px;padding-left: 20px; ">
      				<ul style="font-size: 2em; padding-bottom: 5px; list-style-type: circle;" >
      				  <li style="padding-bottom: 5px;">●반드시 회원님 명의로 된 휴대폰, 아이핀을 이용해주세요.</li>
      				  <li style="padding-bottom: 5px;">●타인의 개인정보를 도용하여 가입할 경우 향후 적발 시 서비스 이용제한 및 법적 제재를 받으실 수 있습니다.</li>
      				  <li style="padding-bottom: 5px;">●스타벅스 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.</li>
      				</ul>
      			</td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;padding-bottom: 50px;">
      				<b>인증방법 선택</b>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center">
	      			 <table style="border: 1px solid #C1C1C1;" width="80%" height="200px;" >
	      			 	<tr>
			      			<td align="center" style="width: 50%;padding-top: 20px;"><img src="phoneicon.PNG"></td>
			      			<td align="center" style="width: 50%;padding-top: 20px;"><img src="ipinicon.PNG"></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="padding-top: 40px;font-size: 2em;"><b>휴대폰 인증</b></td>
			      			<td align="center" style="padding-top: 40px;font-size: 2em;"><b>아이핀(i-PIN)인증</b></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="font-size: 1.4em;padding-top: 10px;"><a>본인 명의의 핸드폰을 통해 인증합니다.</a></td>
			      			<td align="center" style="font-size: 1.4em;padding-top: 10px;"><a>가입한 아이핀 ID를 통해 인증합니다.</a></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="font-size: 1.4em; padding-top: 10px;">
			      				<button style="background-color: #0B610B; border: 1px solid #0B610B; color: white;"><b>인증하기</b></button>
			      			</td>
			      			<td align="center" style="font-size: 1.4em; padding-top: 10px;">
			      				<button style="background-color: #0B610B; border: 1px solid #0B610B; color: white;"><b>인증하기</b></button>
			      			</td>
			      		</tr>
			      		<tr style="height:30px;">
			      		<tr>
	      			 </table>
      			</td>
      		</tr>
      		<tr style="height:130px;">
      			
      		</tr>	
      		
      	</table>
     
      	</div>
      	<div style="height: 130px;">
      		
      	</div>
      </form>

  
  <script src="../starbucks_clone/starbucks_clone/assets/js/menuHoverHandler.js"></script>
</body>

</html>