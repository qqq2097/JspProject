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
	li.noticelist{
		list-style: disc;
		margin-bottom: 6px;
	}
	ul.noticelist{
		padding-left: 30px;
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
	.line{border-bottom: 1px solid #C1C1C1;}
	.linesq{border:1px solid #C1C1C1;}
	
input[class="mem_agreeMent"]{
     display: none;  
}

.cb{
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
input[class="mem_agreeMent"]:checked +label {
	
    border: 2px solid #006236;
    background-color: #006236;
  
}
div.footerinfo {
	width: 100%;
	height: 500px;
	top: 2000px;
}
</style>

</head>
<body>
	<div style="height: 130px;"></div>
 	     
      <form action="" method="post" class="form-inline" onsubmit="return check(this)" name="mfrm">
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">회원가입</p>
      		<br>
      		<table class="table table-bordered" style="width:50%; border: 1px solid #C1C1C1;">
      		<tr>
	      		<td colspan="2" align="center" style="padding-top:20px;">
	      			<img src="../../member/memberaddimg1.PNG">
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" style="padding-top:20px;padding-bottom:20px; text-align:center; color:gray; font-size: 2.5em;" class="line"><a>회원가입 약관 동의 및 본인인증단계입니다.</a></td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 20px;  ">
      				<b>홈페이지 이용약관 동의</b><b style="color:#006236;">(필수)</b></td>
      			<td align="right" style="padding-right:50px; padding-bottom:10px;">
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox"  name="agreeMent" id="mem_agreeMent1" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent1"  class="cb"></label>
				</div>
    			</td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center" style="padding-top: 20px;">
      				<textarea style="background-color:#F7F7F7; border:1px solid #C1C1C1; resize:none; width:90%; height:150px; font-size: 2em;" readonly="readonly">스타벅스 코리아는 고객님을 보호합니다.
본 약관은 스타벅스 코리아의 홈페이지 서비스 이용과 관련하여 필요한 사항을 규정합니다.

제1장 총칙
제 1 조 목적
1. 스타벅스 코리아를 운영하는 주식회사 에스씨케이컴퍼니(이하 '회사'라고 합니다)에서 운영하는 홈페이지 (https://www.starbucks.co.kr/, 이하 “홈페이지”라고 합니다)는 아래와 같은 약관에 동의하는 이용자들에게 제공되는 인터넷서비스로, 본 약관은 이용자와 회사 사이에 본 홈페이지 이용에 관한 권리 및 의무를 규정하는 것을 목적으로 합니다.
2. 홈페이지의 모든 자료는 Starbucks Corporation 및 자회사, 계열사 혹은 Starbucks Corporation에 의해 자격을 취득한 기타 이해 관계자에 의한 저작권, 등록의장, 등록상표 또는 기타 지적소유권으로 보호되고 있습니다.
3. 본 홈페이지에 포함된 자료는 이용자에게 정보 제공을 위한 목적으로만 제공됩니다. 이용자는 본 홈페이지의 내용에 대하여 어떤 방법으로도 배포, 출판, 전송, 변경, 전시, 모방작품의 창조 혹은 개발할 수 없습니다. 이용자는 회사의 권한을 보호하여야 하고, 본 홈페이지의 자료를 허가 없이 유용할 수 없습니다. 허가 없이 본 홈페이지의 내용을 유용하는 경우에 회사와 Starbucks Corporation은 이용자에게 법적, 재정적으로 가능한 기타 추가적인 배상을 청구할 수 있습니다.
4. 이용자가 제출하는 자료의 내용에 대한 책임은 전적으로 이용자에게 있습니다. 이용자가 제출하는 자료에 불법, 중상모략, 비난 혹은 비도덕적인 내용이 포함되어서는 안됩니다. 이용자는 본 홈페이지에 저작권, 등록상표권, 사생활권 혹은 기타 사적 권리 혹은 소유권을 포함하는 제3자의 권리를 침해하는 어떤 자료도 게시하여서는 안됩니다.
5. 이용자의 개인정보 보호 및 보안, 개인정보에 대한 수집, 이용 및 저장과 관련한 관행 및 정책에 대하여는 회사의 개인정보취급방침에 의합니다. 개인정보취급방침은 홈페이지에 별도 게시하고 있습니다.
제 2 조 용어의 정의

본 약관에서 사용하는 용어는 다음과 같이 정의합니다.
1. “이용자”란 홈페이지에 접속하여 홈페이지를 이용하는 회원 및 비회원을 말합니다.
2. '회원”이란 홈페이지에 접속하여 본 약관에 따라 회사 인터넷 회원으로 가입하여 홈페이지가 제공하는 서비스를 받는 자를 말하고, “비회원”이란 회원이 아닌 자를 말합니다.
3. 회원이 소지한 Starbucks Card를 등록하면 “스타벅스 리워드 회원”이 됩니다. 본 약관에서 별도로 정한 사항이 없다면, “스타벅스 리워드 회원”의 권한 및 이용과 관련한 규정은 “스타벅스 카드 이용약관”에 따릅니다.
4.”e-프리퀀시 바코드”란 회원 가입 시 회원의 계정에 자동으로 발급되는 온라인 적립 수단이며, e-프리퀀시 이벤트 진행 시, 등록된 e-프리퀀시 바코드에 e-스티커를 적립하여 관련 혜택을 받을 수 있습니다.
5. “스타벅스 모바일 애플리케이션”이란 회사가 모바일 및 휴대용 기기 등을 통하여 제공하는 앱을 말합니다.
6. '사이렌 오더 서비스'란 회사가 스타벅스 모바일 애플리케이션을 통해 회원이 주문할 매장을 선택하여 주문 가능 메뉴를 확인하고 다양한 결제수단으로 주문 및 예약할 수 있는 전자상거래 서비스를 말합니다.
7. “사이렌오더”란 회원이 사이렌 오더 서비스를 통하여 회사의 다양한 메뉴를 매장별 실시간 주문 가능 수량을 확인하여 선결제한 후, 나의 위치정보(GPS, 고주파 등 이용)를 기반으로 2km 내 매장에 주문을 전송을 하는 것을 말합니다.
8. “홀케이크 선물/예약”이란 회원이 사이렌 오더를 통해 홀케이크를 선결제 하고, 지정한 매장에서 지정한 날짜에 “홀케이크 모바일 교환권”으로 수령하는 주문 유형을 말합니다. “선물”이란 회원이 “예약”한 “홀케이크 모바일 교환권”을 휴대폰 MMS 전송 방법을 통해 선물할 수 있는 서비스를 말합니다.
9. “홀케이크 모바일 교환권”이라 함은 “홀케이크”가 화체된 모바일용 쿠폰으로서, “홀케이크 모바일 교환권” 내에 명시된 교환 조건에 따라 해당 상품으로 교환할 수 있으며, 현금 및 다른 상품으로 대체 수령은 불가합니다. “홀케이크 모바일 교환권”의 수신자라 함은 “홀케이크 모바일 교환권”을 회원으로부터 전송 받은 자를 말합니다.
10. “e-Gift Item 서비스”란 회원이 스타벅스 모바일 애플리케이션 및 기타 유무선 인터넷 플랫폼을 통해 e-Gift Item을 구매하고, 구매한 e-Gift Item을 모바일 단말기를 통해 타인 또는 본인에게 전송할 수 있도록 하며, e-Gift Item의 소지자에게 명시된 조건에 따라 회사의 상품으로의 교환을 허용하기 위해 회사가 제공하는 서비스를 말합니다.
      				</textarea>
      			</td>
      		</tr>
      		
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;">
      				<b>개인정보 수집 및 이용동의</b><b style="color:#006236;">(필수)</b>
      			</td>
      			<td align="right" style="padding-right:50px;padding-bottom:10px;">
<!--체크박스 이름 바꾸기 -->      			
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="agreeMent" id="mem_agreeMent2" value="2" class="mem_agreeMent">
				    <label for="mem_agreeMent2" class="cb"></label>
				</div>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center" style="padding-top: 20px;">
      				<textarea style="background-color:#F7F7F7; border:1px solid #C1C1C1; resize:none; width:90%; height:150px; font-size: 2em;" readonly="readonly">본인은 스타벅스 코리아를 운영하는 주식회사 에스씨케이컴퍼니(이하 '회사'라 합니다)가 제공하는 회원 서비스(이하 ‘서비스’라 합니다)를 이용하기 위해, 다음과 같이 ‘회사’가 본인의 개인정보를 수집/이용하는 것에 동의합니다.
※ 귀하께서는 개인정보 수집·이용에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 회원가입, 서비스 이용 등을 하실 수 없습니다.

1. 개인정보 항목·목적·보유기간
구분	필수
항목	성명, 생년월일, 성별, 아이디, 비밀번호, 휴대전화번호, E-Mail, DI (Duplication information)
목적	- 회원가입(홈페이지. 스타벅스 리워드), 본인확인
- 서비스 제공
* 상품(제품), 서비스 결제, 환불, 배송 등
* 개인 맞춤형 서비스 제공
(스타벅스 리워드 별 적립 등)
- 회원관리, 부정이용 방지
- 서비스 관련 이벤트 및 행사정보 안내
(별도 마케팅정보 수신 동의 회원에 한함)
보유 및
이용기간	회원 탈퇴 후 30일간 보관 (반복 재가입 등의 방법을이용한 서비스 부정이용 방지) 또는 관계법령에 의한 별도 보존기간 (2. 관계법령에 의한 개인정보 보존기간참고)
2. 관계법령에 의한 개인정보 보존기간
- 서비스이용기록, 접속로그, 접속IP정보 (통신비밀보호법 : 3개월)
- 표시/광고에 관한 기록 (전자상거래법 : 6개월)
- 계약 또는 청약철회 등에 관한 기록 (전자상거래법 : 5년)
- 대금결제 및 재화 등의 공급에 관한 기록 (전자상거래법 : 5년)
- 소비자의 불만 또는 분쟁처리에 관한 기록 (전자상거래법 : 3년)
      				</textarea>
      			</td>
      		</tr>
      		<tr>
      			<td style="font-size: 2em;padding-left: 20px; padding-top: 40px;">
      				<b>E-mail 및 SMS 광고성 정보 수신동의</b><b style="color:#006236;">(선택)</b>
      			</td>
      			<td align="right"  style="padding-right:50px;padding-bottom:10px;">
<!--체크박스 이름 바꾸기 -->   
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="agreeMent" id="mem_agreeMent3" value="3" class="mem_agreeMent">
				    <label for="mem_agreeMent3"  class="cb"></label>
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
      			<td align="right"  style="padding-right:50px;padding-bottom:10px; ">
<!--체크박스 이름 바꾸기 -->   
      			<div class="mem_agreeMent_cb">
				    <input type="checkbox" name="agreeMent" id="mem_agreeMent4" value="4" class="mem_agreeMent">
				    <label for="mem_agreeMent4" id="mem_agreeMent4"  class="cb"></label>
				</div>
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2"style="padding-top: 20px;padding-left: 20px; ">
      				<ul class = "noticelist"style="font-size: 1.7em; padding-bottom: 5px; list-style-type: circle;" >
      				  <li class = "noticelist" style="padding-bottom: 5px;">반드시 회원님 명의로 된 휴대폰, 아이핀을 이용해주세요.</li>
      				  <li class = "noticelist" style="padding-bottom: 5px;">타인의 개인정보를 도용하여 가입할 경우 향후 적발 시 서비스 이용제한 및 법적 제재를 받으실 수 있습니다.</li>
      				  <li class = "noticelist" style="padding-bottom: 5px;">스타벅스 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.</li>
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
			      			<td align="center" style="width: 50%;padding-top: 20px;"><img src="../../member/phoneicon.PNG"></td>
			      			<td align="center" style="width: 50%;padding-top: 20px;"><img src="../../member/ipinicon.PNG"></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="padding-top: 40px;font-size: 2em;"><b>휴대폰 인증</b></td>
			      			<td align="center" style="padding-top: 40px;font-size: 2em;"><b>이메일(E-MAIL) 인증</b></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="font-size: 1.4em;padding-top: 10px;"><a>본인 명의의 핸드폰을 통해 인증합니다.</a></td>
			      			<td align="center" style="font-size: 1.4em;padding-top: 10px;"><a>본인 명의의 이메일을 통해 인증합니다.</a></td>
			      		</tr>
			      		<tr>
			      			<td align="center" style="font-size: 1.4em; padding-top: 10px;">
			      				<button class="hbtn"onclick="openHp()" ><b> 인증하기 </b></button>
			      			</td>
			      			<td align="center" style="font-size: 1.4em; padding-top: 10px;">
			      				<button class="ebtn"onclick="openEmail()" ><b> 인증하기 </b></button>
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
      		<input type="hidden" name="key">
      	</div>
      </form>
    
<script type="text/javascript">


function openHp() {
	var value = document.getElementsByName("agreeMent");
	var cnt=0;
	if(value[0].checked && value[1].checked ){
			cnt=2;
	}
	else{
		cnt=-5;
	}
	for(var i=2;i<value.length;i++){
		if(value[i].checked){
			cnt++;
		}
	}
	if(cnt>=2){
		window.open('../../member/memberphonecheck.jsp',"","left=100px,top=100px,width=500px,height=500px");
	}
	else{
		alert("필수 동의를 선택하세요.");
	}
	
}
function openEmail() {
	
	var value = document.getElementsByName("agreeMent");
	var cnt=0;
	if(value[0].checked && value[1].checked ){
			cnt=2;
	}
	else{
		cnt=-4;
	}
	for(var i=2;i<value.length;i++){
		if(value[i].checked){
			cnt++;
		}
	}
	if(cnt>=2){
		window.open('../../member/memberemailcheck.jsp',"","left=100px,top=100px,width=500px,height=500px");
	}
	else{
		alert("필수 동의를 선택하세요.");
	}
}

</script>
  
</body>

</html>