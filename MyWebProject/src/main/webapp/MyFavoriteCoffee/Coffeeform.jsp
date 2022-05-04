<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Hubballi&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">

	div.title{
		margin-left: 200px;
		margin-top: 40px;
	}

	div.title span{
	color: #808080;
	margin-left: 700px;
	font-size: 1.3em;
	}

	div.container{
		width: 100%;
		background-image: url("../../MyFavoriteCoffee/image/background.jpg");
		
	}
	div.container p{
		margin-top: 30px;
	}
	
	 div.subject1 div.flavor{
		margin-top: 70px;
		margin-left: 120px;
		text-align: center;
	}
	
	div.subject2 div.feel{
		margin-top: 70px;
		margin-left: 120px;
		text-align: center;
	}
	
	
	div.subject3 div.strength{
		margin-top: 70px;
		margin-left: 120px;
		text-align: center;
	}
	
	ul{
		display: inline-block;
	}
	div.flavor ul li{
		position: relative;
		float: left;
		height: 280px;
		margin-right: 90px;
	}
	div.feel ul li{
		position: relative;
		float: left;
		height: 280px;
		margin-right: 90px;
	}
	
	div.strength ul li{
		position: relative;
		float: left;
		height: 280px;
		margin-right: 90px;
	}
	
	p{
		text-align: center;
		margin-top: 80px;
	}
	
	div.flavor ul li dt{
	margin-bottom: 20px;
	cursor: pointer;
	}
	div.feel ul li dt{
	margin-bottom: 20px;
	cursor: pointer;
	}
	div.strength ul li dt{
	margin-bottom: 20px;
	cursor: pointer;
	}
	
	@keyframes fadeInUp {
        0% {
            opacity: 0;
            transform: translate3d(0, 100%, 0);
        }
        to {
            opacity: 3;
            transform: translateZ(0);
        }
    }
 
    .flavor, .feel, .strength dl{
        position: relative;
        animation: fadeInUp 2s;
    }
	dd b{
	 	font-size: 11pt;
	 }
	 
	div.footerinfo {
	width: 100%;
	height: 500px;
	top: 750px;
}
</style>  
</head>
<body>
<div class="title" >
	<img alt="" src="../../MyFavoriteCoffee/image/Title.jpg" style="background-color: transparent;">
	<span>  
		<img alt="" src="../../MyFavoriteCoffee/image/home.png" style="cursor: pointer;" onclick="location.href='../starbucks_clone/index.jsp'">
		<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
		<b>COFFEE</b>
		<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
		<b>나와 어울리는 커피</b>
	 </span>
	<br><br>
	<b style="color: #808080; font-size: 1.3em;">여러분에게 잘 맞는 커피를 찾기 위한 3가지 질문입니다.</b>

</div>


<div class="container" style="height: 700px;">
	
		<div class="subject1">
			<p>	
				<img alt="" src="../../MyFavoriteCoffee/image/1_title.png" style="margin-top: 70px;">
			</p>
			<div class="flavor">
				<ul>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_flavor.value=10;">	
									<img alt="" src="../../MyFavoriteCoffee/image/flavor1_1.png">	
								</a>
							</dt>
							<dd><b>짭짤한 맛</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_flavor.value=20;">
									<img alt="" src="../../MyFavoriteCoffee/image/flavor1_2.png">	
								</a>
							</dt>			
							<dd><b>과일 맛</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_flavor.value=30;">
									<img alt="" src="../../MyFavoriteCoffee/image/flavor1_3.png">	
								</a>
							</dt>
							<dd><b>고소 맛</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_flavor.value=40;">
									<img alt="" src="../../MyFavoriteCoffee/image/flavor1_4.png">	
								</a>
							</dt>
							<dd><b>달콤한(캐러멜)맛</b></dd>
						</dl>					
					</li>
				</ul>
			</div>
			<!-- flaver div end tag -->	
		</div>
			<!--subject 1 -->
		
		<div class="subject2">
			<p>	
				<img alt="" src="../../MyFavoriteCoffee/image/2_title.png" style="margin-top: 80px;">
			</p>
			<div class="feel">
				<ul>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_feel.value=10;">
									<img alt="" src="../../MyFavoriteCoffee/image/feel2_1.png">	
								</a>
							</dt>
							<dd><b>상쾌한 느낌	</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_feel.value=20;">
									<img alt="" src="../../MyFavoriteCoffee/image/feel2_2.png">	
								</a>
							</dt>		
							<dd><b>부드러운 느낌</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_feel.value=30;">
									<img alt="" src="../../MyFavoriteCoffee/image/feel2_3.png">	
								</a>
							</dt>
							<dd><b>오랫동안 여운이 남는 느낌</b></dd>
						</dl>					
					</li>
				</ul>
			</div>
			<!--feel div end태그  -->
		</div>
		
		<div class="subject3">
			<p>	
				<img alt="" src="../../MyFavoriteCoffee/image/3_title.png" style="margin-top: 80px;">
			</p>
			<div class="strength">
				<ul>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_strength.value=10;">
									<img alt="" src="../../MyFavoriteCoffee/image/strength3_1.png">	
								</a>
							</dt>
							<dd><b>은은하고 부드러움</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_strength.value=20;">
									<img alt="" src="../../MyFavoriteCoffee/image/strength3_2.png">	
								</a>
							</dt>			
							<dd><b>부드러운 느낌</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt>
								<a href="#" onclick="document.frm.Coffee_strength.value=30;">
									<img alt="" src="../../MyFavoriteCoffee/image/strength3_3.png">	
								</a>
							</dt>
							<dd><b>무게감을 주는 강렬함</b></dd>
						</dl>					
					</li>
				</ul>
			</div>
			<!--strength div end태그  -->
		</div>
	
</div>

 <form action="#" name="frm" id="frm" >
	<input type="hidden" name="Coffee_flavor">
	<input type="hidden" name="Coffee_feel">
	<input type="hidden" name="Coffee_strength">
</form>
<script type="text/javascript">
/* 	var i= {
			goSubmit : function (strength) {
				document.frm.Coffee_strength.value= strength;
				document.frm.submit();
			}
			
	} */

	
	 $(".subject2").hide();
		$(".subject3").hide();

/* 첫번째 카테고리 이미지 클릭시 이벤트 */
		$(".flavor dt img").click(function() {
		
		$(".subject1").hide();
		$(".subject2").show("slow");
		
	});

/* 두번째 카테고리 이미지 클릭시 이벤트 */

		$(".feel dt img").click(function() {
			
			$(".subject2").hide();
			$(".subject3").show("slow");
			
		}); 
/* 세번째 이미지 클릭시 결과폼으로 location이벤트 */	

	$(".strength dt img").click(function() {
	
		/* 짭짤한 맛 */
		if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_cenya.jsp';
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_colombia.jsp';
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		}
		
		else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="10" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		}
		
		/* 과일 맛 */
		if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_cenya.jsp';
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_cenya.jsp';
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_gerafarm.jsp';
		
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_gerafarm.jsp';
		}
		
		else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_gerafarm.jsp';
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="20" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_gerafarm.jsp';
		}
		
		/* 고소한맛 */
		if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_colombia.jsp';
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		}
		
		else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="30" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		}
		
		/* 달콤한 맛 */
		if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="10" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_espresso.jsp';
		
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_cenya.jsp';
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="20" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_westjava.jsp';
		}
		
		else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="10"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_espresso.jsp';
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="20"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_dabang.jsp';
		}else if(frm.Coffee_flavor.value=="40" && frm.Coffee_feel.value=="30" && frm.Coffee_strength.value=="30"){
			location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_espresso.jsp';
		}
		
	});


</script> 
</body>
</html>