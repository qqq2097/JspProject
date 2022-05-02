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
		<img alt="" src="../../MyFavoriteCoffee/image/어울리는커피.png" style="margin-top: 30px;">
			<span>  
				<img alt="" src="../../MyFavoriteCoffee/image/home.png" style="cursor: pointer;" onclick="location.href='../starbucks_clone/index.jsp'">
				<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
				<b>COFFEE</b>
				<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
				<b>나와 어울리는 커피</b>
	 		</span>
				<br><br>
				<b style="color: #808080; font-size: 1.3em; padding-bottom: 10px;">당신과 잘 어울릴 것 같은 스타벅스의 커피 입니다.</b>
	</div>
</div>
<!-- container end div -->
<div id="pikeplace">
	<div class="image">
		<img alt="" src="../../MyFavoriteCoffee/resultimage/pikeplace.jpg" width="450px;" height="450px;">
	</div>

	<div class="detail">	
		<div class="article">
			<h3>
				스타벅스 네스프레스 파이크플레이스 10개입
				<br>
				<span></span>
			</h3>
	
			<p class="title">
			'스타벅스 커피를 집에서도 간편하게 즐기실 수 있는 캡슐타입의 커피로, 라틴 아메리카 커피의 부드럽고 조화로운 블렌딩에 초콜릿과 구운 견과의 풍미를 은은하게 더한 파이크 플레이스입니다. 
			 파이크 플레이스는 시애틀에 위치한 스타벅스 1호점부터 전 세계 스타벅스 매장에 이르기까지 고객들에게 꾸준히 사랑받아 온 블렌드입니다.
			 네스프레소 캡슐은 에스프레소에 특화된 상품이며, 알루미늄 캡슐의 커피는 900여종의 휘발되기 쉬운 아로마를 밀봉하여 담을 수 있도록 고안된 디자인으로 깊고 풍부한 원두 자체의 풍미를 즐기기에 좋은 상품입니다.
			 *본 캡슐커피는 네스프레소 머신 전용 캡슐입니다. 전용 머신 없이는 캡슐 음용이 불가합니다. 구입 전 반드시 머신의 종류를 확인하시고 구매하시기 바랍니다.
			</p>
	
			<p class="text">
			[스타벅스커피 앳 홈 by 네스프레소]
			스타벅스 커피를 집에서도 간편하게 즐기실 수 있는 캡슐 타입의 커피로, 
			라틴 아메리카 커피의 부드럽고 조화로운 블렌딩에 초콜릿과 구운 견과의 풍미를 은은하게 더한 파이크 플레이스입니다. 
			</p>

		</div>

	</div>	

</div>



</body>
</html>