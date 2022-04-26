<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Hubballi&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	div.title{
		margin-left: 100px;
		margin-top: 65px;
	}

	div.title span{
	color: #808080;
	margin-left: 800px;
	
	}
	
	
	div.container{
	
		width: 100%;
		height: 167	0px;
		background-image: url("../../MyFavoriteCoffee/image/background.jpg");
		background-size: cover;
		background-repeat: no-repeat;
	}
	
	 div.subject1 img{
		margin-top: 50px;
		margin-left: 120px;
		cursor: pointer;
	}
	
	div.flavor span{
		float: left;
	}
	
	
	div.subject2 img{
		margin-top: 30px;
		margin-left: 210px;
		cursor: pointer;
	}
	
	div.feel span{
		float: left;
	}
	
	
	div.subject3 img{
		margin-top: 30px;
		margin-left: 210px;
		cursor: pointer;
	}
	
	div.strength span{
		float: left;
	}

</style>
</head>
<body>

<!-- title -->	
<div class="title" >
	<img alt="" src="../../MyFavoriteCoffee/image/Title.jpg" >
	<span>  
		<img alt="" src="../../MyFavoriteCoffee/image/home.png" style="cursor: pointer;" onclick="location.href='../starbucks_clone/index.jsp'">
		<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
		<b>COFFEE</b>
		<img alt="" src="../../MyFavoriteCoffee/image/arrow.png">
		<b>나와 어울리는 커피</b>
	 </span>
	<br><br>
	여러분에게 잘 맞는 커피를 찾기 위한 3가지 질문입니다.

</div>


<div class="container">
<div class="image">
	<div class="subject1">
		<img alt="" src="../../MyFavoriteCoffee/image/1_어떤풍미.png" style="margin-left: 530px;">
		<div class="flavor">
			<span> <img alt="" src="../../MyFavoriteCoffee/image/1_짭짤.png"><br><br><b style="margin-left: 210px;">짭짤한 맛</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/1_과일.png"><br><br><b style="margin-left: 210px;">과일 맛</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/1_고소.png"><br><br><b style="margin-left: 210px;">고소 맛</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/1_달콤함(캐러멜).png"><br><br><b style="margin-left: 210px;">달콤한(캐러맬) 맛</b> </span>
		</div>
		
	</div>
	
<div class="subject2">
		<img alt="" src="../../MyFavoriteCoffee/image/2_어떤느낌.png" style="margin-left: 540px; margin-top: 50px;">
		<div class="feel">
			<span > <img alt="" src="../../MyFavoriteCoffee/image/2_상쾌한느낌.png"><br><br><b style="margin-left: 293px;">상쾌한 느낌</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/2_부드러운느낌.png"><br><br><b style="margin-left: 293px;">부드러운 느낌</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/2_오랫동안여운이남는느낌.png"><br><br><b style="margin-left: 293px;">오랫동안 여운이 남는 느낌</b> </span>
			
		</div>
		
	</div>
	
	  <div class="subject3">	
		<img alt="" src="../../MyFavoriteCoffee/image/3_어떤강도.png" style="margin-left: 540px; margin-top: 50px;">
		<div class="strength">
			<span> <img alt="" src="../../MyFavoriteCoffee/image/3_은은하고부드러움.png"><br><br><b style="margin-left: 270px;">은은하고 부드러움</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/3_미디엄으로균형잡힘.png"><br><br><b style="margin-left: 270px;">미디엄으로 균형 잡힘</b> </span>
			<span> <img alt="" src="../../MyFavoriteCoffee/image/3_무게감을주는강렬함.png"><br><br><b style="margin-left: 270px;">무게감을 주는 강렬함</b> </span>
		</div> 
		
	</div> 
	
	
</div>
</div>
</body>
</html>