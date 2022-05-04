<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">

<title>Insert title here</title>
<style type="text/css">
div.top {
	width: 100%;
	height: 200px;
	background-image: url("../../MyStarbucks/image/ms03.jpg");
}

div.footerinfo{
top: 1500px;
width: 100%;
height: 500px;

}

div.footerinfo a {
color: white;
}

div.topsub {
	color: #fff;
	font-size: 15pt;
}

span.kor, a {
	color: #ffffff;
	font-size: 12px;
}

span.toptitle {
	color: #fff;
	font-size: 20pt;
	font-weight: bold;
	top: 200px;
	margin: 30px;
}

ul.smap {
	list-style: none;
	margin: 30px;
	padding: 10;
	text-align: right;
}

ul.smap li {
	display: inline;
	margin: 3px;
}

.mysuggestion {
	background-image: url('../../MyStarbucks/image/voc.png');
}

.suggestion {
	padding: 30px;
}

.suggtext {
	width: 80%;
	height: auto;
	padding: 4%;;
	background-size: auto 68%;
}

.btn_suggestion_inquiry {
	border-radius: 3px;
	height: 28px;
	width: 136px;
	background: #e2c383;
	border: 1px solid #bb9f65;
	text-align: center;
	position: relative;
	left: 40px;
	bottom: 17px;
}

.btn_suggestion_inquiry a {
	display: block;
	font-size: 12px;
	font-weight: bold;
	height: 28px;
	line-height: 28px;
	text-align: center;
	width: 141px;
	color: #222;
}

/*네비*/
.ms_nav {
	float: right;
	position: relative;
	right: 100px;
	bottom: 222px;
	font-weight: blod;
	width: 220px;
	margin-bottom: 90px;
}

.ms_nav>ul {
	border-top: 2px solid #222;
}

nav ul, li {
	list-style: none;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.ms_nav>ul>li {
	border-bottom: 1px solid #ddd;
	width: 220px;
}

.ms_nav>ul>li>a {
	color: #444;
	display: block;
	font-size: 14px;
	padding: 20px 30px 20px 15px;
	position: relative;
	width: 175px;
}

a {
	margin: 0;
	text-decoration: none;
	vertical-align: baseline;
	background: transparent;
	cursor: pointer;
	color: black;
}

.ms_nav>ul>li>ul>li>a {
	color: #444;
	display: block;
	font-size: 12px;
	padding: 6px 0 6px 15px;
	width: 205px;
}

/*테이블*/
.voc_input_tbl {
	margin-top: 2px;
	margin-left: 65px;
	width: 820px;
}

.voc_input_tbl table tr td div.sel_wrap {
	height: 28px;
	width: 100%;
	display: flex;
}

.voc_input_tbl p.must_input {
	color: #666;
	float: right;
	font-size: 12px;
	margin-bottom: 10px;
	text-indent: 13px;
}

.voc_input_tbl table {
	border-top: 1px solid #333;
	font-size: 14px;
	width: 830px;
}

.voc_input_tbl table tr th, .voc_input_tbl table tr td {
	border-bottom: 1px solid #e0e0e0;
	height: 25px;
	padding: 9px 0 9px 20px;
	text-align: left;
	vertical-align: middle;
}

.voc_input_tbl table tr th img {
	margin: 3px 0 0 5px;
}

img {
	vertical-align: top;
	max-width: 100%;
}

.voc_input_tbl table tr th {
	background: #f4f4f2;
	color: #222;
	line-height: 18px;
}

.voc_input_tbl table tr td {
	background: #fff;
	color: #666;
}

.btn_find_store {
	background: #666;
	border-radius: 3px;
	color: #fff;
	display: block;
	float: left;
	font-size: blod;
	height: 20px;
	line-height: 17px;
	text-align: center;
	width: 64px;
}

.mybtn {
background: #e2c383;
	border: 1px solid #bb9f65;
	color: #222;
	height: 28px;
	line-height: 28px;
	text-align: center;
	width: 141px;
	position: relative;
	left: 750px;
	top: 19px;
	font-weight: bold;
}


</style>


<script type="text/javascript">
$(function () {
	$(".sub1").hide();
	$(".sub2").hide();
	
	$(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});
	
	
	//이메일 선택 이벤트
	$("#mail").change(function(){
		
		if($(this).val()=='_')
		{
		  $("#DS_CSTMR_EMAIL2").val(''); //지정된메일 지우기
		}else
		{
			$("#DS_CSTMR_EMAIL2").val($(this).val());
		}
});
	
	$("#phone1").change(function () {
		$("phone1").val($(this).val());
	});
	


	
});

$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

});

function categoryChange(e) {
	var a =["중분류","리워드(혜택)", "회원정보"]; //회원 선택시
	var b =["중분류","결제수단", "결제내역","취소/환불/교환"]; //결제/환불 선택
	var c =["중분류","제품/상품", "이물", "기프트", "네이버 스마트 스토어"]; //음료/푸드/상품 선택시
	var d=["중분류", "매장 정보", "매장 운영", "파트너"]; //매장 선택시
	var h =["중분류", "딜리버리"]; //배달 선택시
	var f =["중분류","일반", "프리퀀시"] //이벤트/프로모션 선택시
	var g =["중분류", "앱(App)/홈페이지", "고객센터"] //기타 선택시
	var target=document.getElementById("CD_VOC_CAUSE_2");

	if(e.value=="ver1") var choice=a;
	else if(e.value=="ver2") var choice=b;
	else if(e.value=="ver3") var choice=c;
	else if(e.value=="ver4") var choice = d;
	else if(e.value=="ver5") var choice=h;
	else if(e.value=="ver6") var choice=f;
	else if(e.value=="ver7") var choice = g;
	
	
	target.options.length = 0;
	
	for (x in choice) {
        var opt = document.createElement("option");
        opt.value = choice[x];
        opt.innerHTML = choice[x];
        target.appendChild(opt);
    }    
}

$(document).ready(function() {
$("#DS_VOC_CN").keyup(function(event){
	console.log('sssss');
	   var maxByte = 2500; //최대 입력 바이트 수
	   var str = $("#DS_VOC_CN").val();
	   var str_len = str.length; //입력한 길이

	   var rbyte = 0;
	   var rlen = 0;
	   var one_char = "";
	   var str2 = "";
	   console.log(rbyte);
	   for (var i = 0; i < str_len; i++) {
	       one_char = str.charAt(i);

	       if (escape(one_char).length > 4) {
	           rbyte += 2; //한글2Byte
	       } else {
	           rbyte++; //영문 등 나머지 1Byte
	           
	       }
	       console.log(rbyte);

	       if (rbyte <= maxByte) {
	           rlen = i + 1; //return할 문자열 갯수
	       }
	   }
	   console.log(rbyte);

	   $("#realByte").text(rbyte + ' / 2500byte');	         
	   if (rbyte > maxByte) {
	       alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
	       str2 = str.substr(0, rlen); //문자열 자르기
	       $("#realByte").text('2500 / 2500byte');
	       $("#DS_CONT").val(str2);
	       //fnChkByte( maxByte);
	   } 
	});

});
$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=how]").click(function(){
    	if($("input[id=HOW2]:checked").val() == "N"){
 
    		// radio 버튼의 value 값이 1이라면 활성화
            $(".d").hide();
        } else {
        	$(".d").show();
        }
    });
});


function fnPaste(){
	alert('도배글 등을 방지하기 위해 복사/붙여넣기를 하실 수 없습니다.');
}

function fnCopy(){
	alert('도배글 등을 방지하기 위해 복사/붙여넣기를 하실 수 없습니다.');
}




</script>


</head>
<body>
<form action="../../MyStarbucks/vocaction.jsp" method="post" enctype="multipart/form-data">
	<!-- top div -->
	<div class="top">
		<br> <br> <br> <br> <span class="toptitle">&nbsp;&nbsp;
			고객의 소리</span>
		<ul class="smap">
			<li><a href="index.jsp"><img src="../../MyStarbucks/image/home.png"
					alt="홈으로"></a></li>
			<li><img class="arrow" src="../../MyStarbucks/image/arrow.png"
				alt="하위메뉴"></li>
			<li><a href=""><span class="kor">고객의 소리</span></a></li>
		</ul>
	</div>

	<div class="suggtext">
		<section class="mysuggestion">
			<dl class="suggestion">
				<br>
				<dd style="font-size: 14px;">
					스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br> 이용하시면서 불편한
					점이나 개선이 필요한 점이 있다면 알려주세요. 좀 더 나은 서비스로 보답하겠습니다. <br> <br>
					<b
						style="color: #666666; padding: 0px 0px 0px 12xp; font-size: 10px;">※고객의
						소리 운영시간 : 09:00 ~ 18:00 (연중 무휴)</b>
				</dd>
			</dl>
			<p class="btn_suggestion_inquiry">
				<a href="index.jsp?main=../../MyStarbucks/voclist.jsp">나의 문의 내역
					보기</a>
			</p>
		</section>
	</div>





	<nav class="ms_nav" id="msRnb">
		<ul>
			<li><a>My 리워드<span class="sbox_arrow_down1"></span></a>
				<ul class="sub1">
					<li><a href="index.jsp?main=../../MyStarbucks/RewordBenefit.jsp" required="login">· 리워드 및 혜택</a></li>
					<li><a href="index.jsp?main=../../MyStarbucks/StarHistory.jsp" required="login">· 별 히스토리</a></li>
				</ul></li>

			<li class="msRnb_btn"><a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp" required="login">My
					메뉴</a></li>
			<li><a href="#" required="login">My 고객의 소리</a></li>

			<li><a>개인정보관리<span class="sbox_arrow_down2"></span></a>
				<ul class="sub2">
					<li><a href="index.jsp?main=../../MyStarbucks/updateInfocheck.jsp" required="login">· 개인정보확인 및 수정</a></li>
					<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">· 비밀번호 변경</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<!-- //네비 -->


	<!-- 테이블 -->
	<div class="voc_input_tbl">
		<p class="must_input">표시 항목은 필수 입력 사항입니다.</p>
		<table summary="분야, 답변 받으실 메일, 연락처, 장소, 제목, 내용, 파일첨부">

			<colgroup>
				<col width="200">
				<col width="630">
			</colgroup>
			<tr>
				<th scope="row">분야<img alt="필수입력"
					src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
				<td>
					<div class="sel_wrap">
						<p class="cate_sel_wrap">
							<label for="TP_VOC_DEMAND">문의유형</label>&nbsp; <select
								name="TP_VOC_DEMAND" id="TP_VOC_DEMAND">
								<option value>문의 유형</option>
								<option value="문의">문의</option>
								<option value="칭찬">칭찬</option>
								<option value="제안">제안</option>
								<option value="불만">불만</option>

							</select>
						</p>
						&nbsp;&nbsp;
						<p class="cate_sel_wrap">
							<label>대분류</label>&nbsp;&nbsp; <select name="CD_VOC_CAUSE_1"
								id="CD_VOC_CAUSE_1" onchange="categoryChange(this)">
								<option>대분류</option>
								<option value="ver1">회원</option>
								<option value="ver2">결제/환불</option>
								<option value="ver3">음료/푸드/상품</option>
								<option value="ver4">매장</option>
								<option value="ver5">딜리버리(배달)</option>
								<option value="ver6">이벤트/프로모션</option>
								<option value="ver7">기타</option>
							</select>
						</p>
						&nbsp;&nbsp;
						<p class="cate_sel_wrap3">
							<label for="CD_VOC_CAUSE_2">중분류</label>&nbsp; <select
								name="CD_VOC_CAUSE_2" id="CD_VOC_CAUSE_2">
								<option value>중분류</option>

							</select>
						</p>
						&nbsp;&nbsp;

					</div>
				</td>
			</tr>
			<tr id="trProd" style="display: none;">
				<th scope="row">제품/상품</th>
				<td>

					<div class="prod_section">

						<div class="prod_wrap" id="prod_wrap1">
							<input class="voc_prod_input" readonly type="text" id="NM_GOODS1">
							<div class="voc_prod_btn">
								<input class="voc_prod_input_btn" type="button" value="상품찾기"
									idx="1"> <input class="voc_prod_input_hidden"
									type=hidden name="CD_GOODS" id="CD_GOODS1">
							</div>
							<a class="prod_add" href="javascript:void(0);"
								onClick="$voc.prodInsert(); return false;">더하기 </a>
						</div>
					</div>

				</td>
			</tr>
			<tr>
				<th scope="row">답변 알림 서비스<img alt="필수입력"
					src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
				<td>
					<div class="tbl_radio_wrap">
						<input id="TP_CSTMR_RPLY1" name="TP_CSTMR_RPLY" type="radio"
							value="N"> <label for="TP_CSTMR_RPLY1">받지 않음</label> <input
							id="TP_CSTMR_RPLY2" name="TP_CSTMR_RPLY" type="radio" value="Y">
						<label for="TP_CSTMR_RPLY2">받음 (APP Push)</label>
					</div>

				</td>
			</tr>
			<tr id="trEmail">
				<th scope="row">답변 받으실 메일<img alt="필수입력"
					src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
				<td>
					<div class="sel_wrap">
						<input class="mail_input" id="DS_CSTMR_EMAIL1"
							name="DS_CSTMR_EMAIL1" type="text" value='' required="required">&nbsp;
						<p class="mail_at">@</p>
						&nbsp;&nbsp; <input class="mail_input" id="DS_CSTMR_EMAIL2"
							name="DS_CSTMR_EMAIL2" type="text" value='' required="required">&nbsp;
						<p class="mail_sel_wrap">
							&nbsp; <label for="mail"></label> <select id="mail">
								<option selected="selected" value="_">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="daum.net">daum.net</option>
							</select>
						</p>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">연락처</th>
				<td>
					<div class="sel_wrap">
						<p class="phone_sel_wrap">
							<label for="phone1"></label> <select id="phone1" name="phone1">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
							</select>
						</p>
						&nbsp;&nbsp;
						<p class="cell_hyphen">-</p>
						&nbsp; <input class="cellphone_input" id="phone2" name="phone2"
							type="text" maxlength="4" ref="num" required="required">
						&nbsp;
						<p class="cell_hyphen">-</p>
						&nbsp; <input class="cellphone_input" id="phone3" name="phone3"
							type="text" maxlength="4" ref="num" required="required">
						&nbsp;
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">이용 매장<img alt="필수입력"
					src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
				
				<td>
					<div class="tbl_radio_wrap">
						<input id="HOW1" name="how" checked="checked" type="radio"
							value="Y"> <label for="HOW1">매장 방문</label> <input
							id="HOW2" name="how" type="radio" value="N"> <label
							for="HOW2">매장 방문 외</label> <br> <br>
					</div>
					<div class ="d">
					<div class="sel_wrap mt10">
						<p class="visit_txt">방문매장</p>
						&nbsp; <a class="btn_find_store" href="#">매장찾기</a>&nbsp;
						<p class="input_store_txt"></p>

					</div> <br>
					<div class="sel_wrap mt10">
						<p class="visit_txt">방문일</p>
						&nbsp;&nbsp;
						<div class="pick_date_each">
							<div class="pick_date_each_left">
								<input type="date" id="pickDate1" name="DT_VISIT_STR"
									title="원하는 날짜를 선택해 주세요.">
							</div>
						</div>
					</div>
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">제목<img alt="필수입력"
					src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
				<td>
					<div class="sel_wrap">
						<input class="voc_ttl_input1" id="DS_VOC_TITLE"
							name="DS_VOC_TITLE" type="text"
							onpaste="fnPaste(); return false;"
							oncopy="fnCopy(); return false;">
						<!--  style="width:514px"> -->
					</div>
				</td>
			</tr>
			<tr>
				<th scope="row">내용<img alt="필수입력"
					src="//image.istarbucks.co.kr/common/img/common/bullet_star_red.gif"></th>
				<td><textarea class="textArea" id="DS_VOC_CN" name="DS_VOC_CN"
						onpaste="fnPaste(); return false;"
						oncopy="fnCopy(); return false;"
						style="width: 553px; height: 131px;"
						placeholder="관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다."></textarea>
					<br> <span id="realByte">0/2500byte</span></td>
			</tr>

			<tr>
				<th scope="row">파일 첨부</th>
				<td>


					<div class="file_section">

						<div class="file_wrap" id="file_wrap1">
							<input class="voc_file_input" id="fileName1" readonly type="text">
							<div class="voc_file_btn">
								<br> <input class="voc_file_input_hidden"
									onchange="document.getElementById('fileName1').value = this.value;"
									type="file" name="file_nm1" id="file_nm1">
							</div>
						</div>

					</div>
					<div class="voc_file_guide2">구매하신 음료,푸드,상품에 대한 문의는 결제 내역(영수증,
						결제 기록 등)을 첨부해 주시거나 매장명,결제 일시를 작성해 주시면 보다 신속한 처리가 가능합니다.</div> <!-- 220225 수정 -->
					<div class="voc_file_guide">
						파일 첨부는 아래의 파일만 등록이 가능하며 최대 2개(1개당 최대 5MB), 총 10MB까지 등록이 가능합니다. <br>
						<span>(등록 가능 확장자 : jpg, jpeg, png, gif)</span>
					</div> <!-- 20210809 수정 -->
				</td>
			</tr>
		</table>

	</div>
	<!-- 테이블 end -->

    <button type="submit" class="mybtn">고객의 소리 등록하기</button>
	


</form>
</body>
</html>