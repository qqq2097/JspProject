<%@page import="StarBucksDto.memberDto"%>
<%@page import="StarBucksDao.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.line{border-bottom: 1px solid #C1C1C1;}

.rotxtbox{
	border-color:#C8C8C8; 
	background-color:#F4F4F4; 
	height:50px; 
	margin: 10px 10px 10px 10px;
}
.txtbox{
	border-color:#C8C8C8; 
	height:50px; 
	margin: 10px 10px 10px 10px;
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
	input::placeholder {
	color: red;
	font-size: 0.7em;
	}
</style>
<script type="text/javascript">


$(function() {
	<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	memberDao dao = new memberDao();
	memberDto dto = dao.getDataID(id);
	//아이디 대문자로 바꾸고 뒤에 두글자 *표시
	String updateid  = id.toUpperCase();
	updateid = updateid.substring(0, updateid.length()-2)+"**";
	//이름 뒷글자 * 바꾸기
	String name = dto.getName();
	String updatename = name.substring(0,name.length()-1) + "*";
	//핸드폰 가운데 글자 *표시
	String phone =dto.getHp();
	String updateHp = phone.substring(0, 4)+"****"+phone.substring(8, phone.length());
	//email 아이디 뒷글자 2개 *표시
	String email = dto.getEmail();
	int i = email.indexOf("@");
	String updateemail= email.substring(0,i-2)+"**@"+email.substring(i+1, email.length());
	//nickname 값이 없을땐 공백 출력
	String nickname = dto.getNickname();
	if(nickname==null){
		nickname="";
	}
	//생년월일
	String birthday=dto.getBirthday();
	int j = birthday.lastIndexOf("-");
	int k = birthday.indexOf("-");
	String byear = birthday.substring(0,4);
	String bmonth=birthday.substring(k+1, j);
	String bday=birthday.substring(j+1, birthday.length());
	%>
	setDateBox();//파일 시작 전에 연도,월,일 표시 함수 실행.
	$("input").onfocus(function() {
		$(this).css("color","black");
	});
});


  // select box 연도 , 월 표시
  function setDateBox() {
    var dt = new Date();
    var year = "";
    var com_year = dt.getFullYear();

    // 발행 뿌려주기
    $("#year").append("<option value=''>****년</option>");

    // 올해 기준으로 -50년부터 +1년을 보여준다.
    for (var y = (com_year - 50); y <= (com_year + 1); y++) {
    	if(<%=byear%>==y){
    		 $("#year").append("<option value='" + y + "' selected>" + y + " 년" + "</option>");
    	}
    	else{
    		 $("#year").append("<option value='" + y + "'>" + y + " 년" + "</option>");
    	}
     
    }

    // 월 뿌려주기(1월부터 12월)
    var month;
    $("#month").append("<option value=''><%=bmonth%>월</option>");
    for (var i = 1; i <= 12; i++) {
      if(<%=bmonth%>==i){
        $("#month").append("<option value='" + i + "' selected>" + i + " 월" + "</option>");
      }
      else{
    	  $("#month").append("<option value='" + i + "'>" + i + " 월" + "</option>");
      }
    }
    // 일 뿌려주기(1일부터 31일)
    var day;
    $("#day").append("<option value=''><%=bday%>일</option>");
    for (var i = 1; i <= 31; i++) {
    	if(<%=bday%>==i){
    		$("#day").append("<option value='" + i + "'selected>" + i + " 일" + "</option>");
    	}
    	else{
     	    $("#day").append("<option value='" + i + "'>" + i + " 일" + "</option>");
    	}
    }

  } 
  function updatecheck(){
	  var value = document.getElementsByName("agreeMent");
	  var nick = $("#mynickname").val();

	 if(nick!=""){
		if(!value.checked){
			alert("선택적 개인정보 수집동의 및 이용약관에 동의를 해주세요.");
			document.getElementById("mem_agreeMent1").focus();
			return false;
		}
	} 
	return true;
  }
 </script>
</head>

<body>
	<div style="height: 130px;"></div>
      <form action="../../MyStarbucks/updateInfoAction.jsp"  method="post" class="form-inline" onsubmit="return updatecheck()" name="upfrm">
      	<div align="center">
      		<p style="font-size:3em; font-weight: 500; padding-bottom: 20px; ">개인정보 확인 및 수정</p>
      		<br>
      		<table  style="width:50%; border: 1px solid #C1C1C1;">
      			<tr>
      			  <td  style="width:100%; font-size: 2em;padding-left: 10px; padding-top: 15px; padding-bottom:10px; text-align: left;">
      				<b>아이디</b>
      				<br>
      				<input type="text" id="myid" name="myid" readonly="readonly" style="width:94%;" class="rotxtbox" value="<%=updateid%>">  			
      			  </td>
      			</tr>
      		</table>
      		<table style="margin-top:30px; width:50%; border: 1px solid #C1C1C1;">
      			<tr>
      			  <td  style="width:100%; font-size: 2em;padding-left: 10px; padding-top: 15px; padding-bottom:10px; text-align: left;" class="line">
      				<b>이름(필수)</b>
      				<br>
      				<input type="text" id="myname" name="myname" readonly="readonly" style="width:64%;"  class="rotxtbox" value="<%=updatename%>">  			
      			  </td>
      			</tr>
      			<tr>
      			  <td  style="width:100%; font-size: 2em;padding-left: 10px; padding-top: 15px; padding-bottom:10px; text-align: left;"  class="line">
      				<b>생년월일(필수)</b>
      				<br>
      				<div style="padding-left: 20px; padding-top: 15px;">
	      			<select name="myyear" id="year" title="****년" class="custom-select" size = "1" ></select>
					&nbsp;&nbsp;
					<select name="mymonth" id="month" title="월" class="custom-select" size = "1" value="<%=bmonth%>"></select>
					&nbsp;&nbsp;
					<select name="myday" id="day" title="<%=bday %>일" class="custom-select" size = "1"></select>
	      			</div>
      			  </td>
      			</tr>
      			<tr>
      			  <td  style="width:100%; font-size: 2em;padding-left: 10px; padding-top: 15px; padding-bottom:10px; text-align: left;"class="line">
      				<b>휴대폰(필수)</b>
      				<br>
      				<input type="text" id="myhp" name="myhp" readonly="readonly" style="width:74%;"  class="txtbox" value="<%=updateHp%>" onfocus="this.value=''" onblur="this.placeholder='핸드폰 번호를 입력하세요.'">  			
      			  </td>
      			</tr>
      			<tr>
      			  <td  style="width:100%; font-size: 2em;padding-left: 10px; padding-top: 15px; padding-bottom:10px; text-align: left;">
      				<b>메일(필수)</b>
      				<br>
      				<input type="text" id="myemail" name="myemail" readonly="readonly" style="width:94%;" class="txtbox" value="<%=updateemail%>"onfocus="this.value=''" onblur="this.placeholder='이메일을 입력하세요.'">  			
      			  </td>
      			</tr>
      		</table>
      		
      		<table style=" margin-top:50px; width:50%;border: 1px solid #C1C1C1;">
      		<tr>
	      		<td colspan="2" align="center" width="100%" >
	      			<img style="width:100%;" src="../../member/starimg.jpg">
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
      				<textarea  style="background-color:#F7F7F7; border:1px solid #C1C1C1;padding-bottom:150px; resize:none; width:90%; height:200px; font-size: 2em;" readonly="readonly" id="nickrule">  본인은 스타벅스 코리아를 운영하는 주식회사 에스씨케이컴퍼니(이하 “회사”라 합니다)가 제공하는 콜 마이 네임 서비스(이하 “서비스”라 합니다)를 이용하기 위해, 다음과 같이 “회사”가 본인의 개인정보를 수집·이용하는 것에 동의합니다.
※ 귀하께서는 개인정보 수집·이용에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 서비스 이용을 하실 수 없습니다.
						
1. 개인정보 항목·목적·보유기간
구분	내역
항목	닉네임
목적	콜 마이 네임 서비스
보유 및 이용기간	회원 탈퇴 시 까지 또는 관계법령에 의한 별도 보존기간 (2. 관계법령에 의한 개인정보 보존기간 참고)
2. 관계법령에 의한 개인정보 보존기간
- 서비스이용기록, 접속로그, 접속IP정보 (통신비밀보호법 : 3개월)
- 표시/광고에 관한 기록 (전자상거래법 : 6개월)
- 계약 또는 청약철회 등에 관한 기록 (전자상거래법 : 5년)
- 대금결제 및 재화 등의 공급에 관한 기록 (전자상거래법 : 5년)
- 소비자의 불만 또는 분쟁처리에 관한 기록 (전자상거래법 : 3년)
3. 서비스 이용과정 및 사업 처리과정에서 수집될 수 있는 개인정보의 범위
서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록</textarea>
      			</td>
      		</tr>
      		<tr style="height: 20px;">
      		</tr>
      		<tr>
      			<td	colspan="2" style="width:100%; font-size: 2em;padding-left: 10px; padding-top: 10px; padding-bottom:10px; text-align: left;">
      				<input  id="mynickname" type="text" style="width:94%;" class="txtbox" value="<%=nickname %>" onfocus="this.value=''" onblur="this.placeholder='닉네임을 입력하세요.'">
      			</td>
      		</tr>
     	</table>
     	<!-- <table style="width:50%;margin-top:30px; border: 1px solid #C1C1C1;">
     	  <tr>
     	  	<td>
     	  	  <div style="margin-left: 20px; margin-top: 20px; margin-bottom: 20px;">
     	  	    <b style="font-size: 2em;">현금영수증 정보입력</b><br><br>
     	 	    <a style=" font-size: 1.7em;">등록된 스타벅스카드로 결제하는 고객님들을 위한 추가 입력 정보 입니다. 고객님의 휴대폰번호 또는 사업자 등록번호를 입력 해 주세요.</a><br><br>
     	 	    <a style="color:#0B610B; font-size: 1.7em;">* 일부 매장(프리미엄아울렛 입점 매장 등)에서 자동 발행이 불가 합니다.</a>
     	  	  </div>
     	  	</td>
     	  </tr>
     	  
     	</table>//현금 영수증 기능  -->
     	<!-- -->
     	<table style="width:50%;">
     		<tr style="height: 80px;"></tr>
	      		<tr>
	      			<td align="center" style="font-size: 2em;">
	      				<p>* 선택항목은 입력하지 않거나 동의하지 않아도 회원가입이 가능합니다.</p>
	      			</td>
	      		</tr>
	      		<tr align="center">
	      			<td>
	      				<button type="submit" style="width: 80%;margin-top:20px;height:70px; font-size: 3em;">정보수정</button>
	      			</td>
	      		</tr>
	      	</table>
      	</div>
      	
      	
      	<div style="height: 130px;">
      	<input type="hidden" id="exname" name ="exname" value="<%=name%>"><!--*값을 원래대로 돌리기 위해서 사용  -->
      	<input type="hidden" id="exemail" name ="exemail" value="<%=email%>">
      	<input type="hidden" id="exhp" name ="exhp" value="<%=phone%>">
      	</div>
      </form>


</body>

</html>