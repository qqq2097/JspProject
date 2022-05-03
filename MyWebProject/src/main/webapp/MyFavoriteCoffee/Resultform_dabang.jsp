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
	<img alt="" src="../../MyFavoriteCoffee/resultimage/dabang.jpg" width="450px;" height="450px;">
</div>

<div class="detail">	
	<div class="article">
		<h3>
			별다방 블렌드 250g
			<br>
			<span></span>
		</h3>
	
		<p class="title">
		'다방'은 옛날 사람들이 차나 음료를 마시면서 이야기를 하거나 휴식을 취하기 위해 방문했던 전통적 공간을 뜻하는 한국어 단어이며, 
		 현대적인 의미에서 커피숍을 의미합니다. 스타벅스를 대표하는 상징인 '별'과 '다방'이라는 단어를 합친 '별다방'은 스타벅스커피 코리아를 부르는 특별한 닉네임으로, 이러한 이름을 담은 '별다방 블렌드™'가 한국에서 특별히 출시되었습니다.
	     별다방 블렌드™는 엄선한 라틴아메리카 원두와 아시아/태평양 원두를 함께 로스팅하여 만든 스타벅스커피 코리아만의 특별한 원두로 말린허브의 은은한 향과 풍부한 초콜릿의 향, 구운 체스트넛의 고소한 풍미와 더불어 기분 좋은 산미와 부드러운 바디까지 담겨 있습니다. 
		 별다방 블렌드™와 함께 보다 특별하고 행복한 하루를 만들어보세요.
		</p>
	
		<p class="text">
		사랑하지 않을 수 없는, 한국만을 위한 특별한 커피! 오직 스타벅스 커피 코리아에서만 만날 수 있는 특별한 원두를 소개합니다.
		</p>

	</div>

</div>	

</body>
</html>