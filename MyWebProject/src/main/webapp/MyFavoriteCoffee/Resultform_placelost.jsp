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
			파이크 플레이스™ 로스트 250g
			<br>
			<span></span>
		</h3>
	
		<p class="title">
		파이크 플레이스™ 로스트는 코코아와 구운 견과류의 은은하고 풍부한 향으로 가벼운 산도를 조화시킴으로써 스타벅스의 다양성을 강조했습니다. 
		이 블렌드는 크림과 설탕이 첨가된 커피를 포함하여 광범위한 고객의 기호를 충족시키기 위해 고안되었습니다
		</p>
	
		<p class="text">
		부드러운 뒷맛이 특징이며 은은한 코코아와 구운 견과류 향이 특징인 커피 
		</p>

	</div>

</div>	

</body>
</html>