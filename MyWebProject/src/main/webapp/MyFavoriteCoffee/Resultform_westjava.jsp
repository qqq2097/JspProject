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
		margin-top: 20px;
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
	<img alt="" src="../../MyFavoriteCoffee/resultimage/placelost.jpg" width="450px;" height="450px;">
</div>

<div class="detail">	
	<div class="article">
		<h3>
			인도네시아 웨스트 자바
			<br>
			<span></span>
		</h3>
	
		<p class="title">
		인도네시아의 수많은 섬들 가운데 지리와 경제적 중심지인 자바섬은 수마트라와 발리 사이에 자리 잡고 있습니다. 
		이 커피가 재배되는 자바섬의 서쪽, 지역 주민들이 ""신들이 사는 곳""이라고 부르는 프레안게르 지역은 독특한 떼루아를 가지고 있습니다. 
		울창한 열대 우림 속 검은빛을 띄는 화산 토양이 품고 있는 이 지역만의 떼루아와 인도네시아의 전통적인 ?
		훌드 가공 방식이 더해져 마다가스카르산 바닐라의 달콤한 향, 다채로운 베이킹 스파이스의 풍부한 감칠맛과 밀크 초콜릿 피니시를 가진 이 매력적인 커피가 만들어집니다. 
		풍부한 바디, 매력적인 감칠맛이 가득한 이 커피는 에스프레소, 라떼, 브루드 커피까지 어떤 방식으로 즐기더라도 만족스러운 풍미를 선사합니다.
		</p>
	
		<p class="text">
		마다가스카르산 바닐라, 베이킹 스파이스와 밀크 초콜릿 피니시
		</p>

	</div>

</div>	

</body>
</html>