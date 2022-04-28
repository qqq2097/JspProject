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
	margin-left: 800px;
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
</style>
<script type="text/javascript">

$(function () {
	
	
	$(".subject2").hide();
	$(".subject3").hide();


	$(".flavor dt img").click(function() {
	
	$(".subject1").hide();
	$(".subject2").show("slow");
	
});
	

	$(".feel dt img").click(function() {
		
		$(".subject2").hide();
		$(".subject3").show("slow");
		
	});

	
	
	$("img.soft").click(function() {
		
		location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_pikeplace.jsp';
		
	});
	
	$("img.weigth").click(function() {
		
		location.href='index.jsp?main=../../MyFavoriteCoffee/Resultform_placelost.jsp';
		
	});


});  
	
</script>

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
				<img alt="" src="../../MyFavoriteCoffee/image/1_어떤풍미.png" style="margin-top: 70px;">
			</p>
			<div class="flavor">
				<ul>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/1_짭짤.png" ></dt>
							<dd><b>짭짤한 맛</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/1_과일.png"></dt>			
							<dd><b>과일 맛</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/1_고소.png"></dt>
							<dd><b>고소 맛</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/1_달콤함(캐러멜).png"></dt>
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
				<img alt="" src="../../MyFavoriteCoffee/image/2_어떤느낌.png" style="margin-top: 80px;">
			</p>
			<div class="feel">
				<ul>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/2_상쾌한느낌.png" ></dt>
							<dd><b>상쾌한 느낌	</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/2_부드러운느낌.png"></dt>			
							<dd><b>부드러운 느낌</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/2_오랫동안여운이남는느낌.png"></dt>
							<dd><b>오랫동안 여운이 남는 느낌</b></dd>
						</dl>					
					</li>
				</ul>
			</div>
			<!--feel div end태그  -->
		</div>
		
		<div class="subject3">
			<p>	
				<img alt="" src="../../MyFavoriteCoffee/image/3_어떤강도.png" style="margin-top: 80px;">
			</p>
			<div class="strength">
				<ul>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/3_은은하고부드러움.png" ></dt>
							<dd><b>은은하고 부드러움</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/3_미디엄으로균형잡힘.png" class="soft"></dt>			
							<dd><b>부드러운 느낌</b></dd>
						</dl>					
					</li>
					<li>
						<dl>
							<dt><img alt="" src="../../MyFavoriteCoffee/image/3_무게감을주는강렬함.png" class="weigthj"></dt>
							<dd><b>무게감을 주는 강렬함</b></dd>
						</dl>					
					</li>
				</ul>
			</div>
			<!--strength div end태그  -->
		</div>
	
</div>
</body>
</html>