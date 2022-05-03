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
	<img alt="" src="../../MyFavoriteCoffee/resultimage/placelost.jpg" width="450px;" height="450px;">
</div>

<div class="detail">	
	<div class="article">
		<h3>
			선 드라이드 에티오피아 게라 팜
			<br>
			<span></span>
		</h3>
	
		<p class="title">
		아라비카 커피의 고향이라고 불리는 에티오피아에서는 전통적인 내추럴 프로세스를 통해 잘 익은 과일의 향과 풍미가 매력적인 커피를 만날 수 있습니다. 선 드라이드 에티오피아 게라가 바로 그중 하나입니다.
		 내추럴 프로세스는 빨갛게 잘 익은 커피체리만 골라 수확한 뒤 아프리칸 베드라 불리는 건조대에서 자연건조 시키면서 과육의 단 맛이 응축되고, 달콤한 과일의 향과 풍미가 발현됩니다.
		  선 드라이드 에티오피아 게라는 프래그런스(그라인딩한 커피의 향)에서 새콤달콤한 딸기와 잘 익은 달콤한 블루베리 향이 매력적으로 풍겨옵니다. 
		추출이 끝난 뒤에는 여기에 은은한 삼나무 향과 다채로운 향신료 풍미까지 더해져 한층 더 깊이 있는 풍미를 즐길 수 있습니다.
		</p>
	
		<p class="text">
		잘 익은 블루베리의 달콤함과 은은한 삼나무 향
		</p>

	</div>

</div>	

</body>
</html>