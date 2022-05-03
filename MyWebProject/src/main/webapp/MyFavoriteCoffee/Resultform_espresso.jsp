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

	div.title img{
		margin-top: 30px;
	}

	div.title span{
	color: #808080;
	margin-left: 700px;
	font-size: 1.3em;

	}
	
	div.container{
		width: 100%;
		margin-top: -38px;
		height: 120px;
		background-image: url("../../MyFavoriteCoffee/image/background.jpg");
		background-size: cover;
		background-repeat: no-repeat;
		
	}

	div.image img{
		margin-left: 220px;
		margin-top: 10px;
		float: left;
	
	}
	.image:hover {
	transform: scale(1.1, 1.1);
	transition: .5s;
	
}
	div.detail{
		margin-top: 30px;
		float: right;
		width: 55%;
	}
	div.detail div.article{
		width: 610px;
	}
	
	div.detail div.article h3{
		font-size: 24px;
		font-weight: bold;
		color: #222;
		border-bottom: 2px solid black;
		padding-bottom: 10px;
		margin-bottom: 20px;
	
	}
	
	div.detail p.title{
	 font-size: 14px;
   	 color: #444;
     font-weight: bold;
     margin-bottom: 40px;
     line-height: 1.4;
	
	}
	
	div.detail p.text{
	 font-size: 14px;
   	 color: #666;
   	 line-height: 1.6
	}

	div.footerinfo {
	width: 100%;
	height: 500px;
	top: 750px;
}
</style>
</head>
<body>
<div class="container">
 	<div class="title" >
		<img alt="" src="../../MyFavoriteCoffee/image/어울리는커피.png">
			<span>  
				<img alt="" src="../../MyFavoriteCoffee/image/home.png" style="cursor: pointer;" onclick="location.href='../starbucks_clone/index.jsp'">
				<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
				<b>COFFEE</b>
				<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
				<b>나와 어울리는 커피</b>
	 		</span>
				<br><br>
				<b style="color: #808080; font-size: 1.3em;">당신과 잘 어울릴 것 같은 스타벅스의 커피 입니다.</b>
	</div>
</div>
<!-- container end div -->

<div class="image">
	<img alt="" src="../../MyFavoriteCoffee/resultimage/espresso.jpg" width="450px;" height="450px;">
</div>

<div class="detail">	
	<div class="article">
		<h3>
			스타벅스 돌체구스토 에스프레소 12개입
			<br>
			<span></span>
		</h3>
	
		<p class="title">
		스타벅스 커피를 집에서도 간편하게 즐기실 수 있는 캡슐 타입의 커피로, 커피의 강렬함과 캐러멜 향의 달콤함이 있는 상품입니다. 
		풍부하고 조화로운 느낌으로 스타벅스 에스프레소 음료의 기본이 되는 커피를 표현하기 위해 수개월간 연구를 통해 제작되었습니다.
		 돌체구스토 캡슐은 로스팅 되고 분쇄된 직후 곧바로 캡슐에 밀봉되어 공기 중의 습기나 산소로부터 보호막이 되어 커피의 산화를 막고, 커피의 맛과 아로마를 신선하게 보존해 줍니다. 
		 *본 캡슐커피는 돌체구스토 머신 전용 캡슐입니다. 전용 머신 없이는 캡슐 음용이 불가합니다. 구입 전 반드시 머신의 종류를 확인하시고 구매하시기 바랍니다.
		</p>
	
		<p class="text">
		[스타벅스커피 앳 홈 by 돌체구스토] 스타벅스 커피를 집에서도 간편하게 즐기실 수 있는 캡슐 타입의 커피로, 커피의 강렬함과 캐러멜 향의 달콤함이 있는 상품입니다. 
		</p>

	</div>

</div>	

</body>
</html>