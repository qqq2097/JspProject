<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Starbucks Coffee Korea</title>
<link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/style.css" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
.sangpum {
	margin:0 400px;
	padding-top: 30px;
	width:1100px;
}
.headname{
	font-size: 20pt;
	font-weight: bold;
	font-family: 'Noto Sans', sans-serif;
}
.roastname{
	font-size: 17pt;
	font-weight: bold;
	font-family: 'Noto Sans', sans-serif;
	margin-top: 7.5px;
	margin-left: 50px;
	
}
.sangpumname{
	font-size: 13pt;
	font-family: 'Oswald', sans-serif;
	margin-left: 110px;
}
h1 {
	font-size: 15pt;
	font-weight: bold;
	font-family: 'Noto Sans', sans-serif;
}
.btn1{
	font-size: 13pt;
	font-family: 'Noto Sans', sans-serif;
	color: white;
	width: 220px;
	height: 40px;
	background-color: #036635;
	border-radius: 5px;
	margin-right: 10px;
}
.btn2{
	font-size: 13pt;
	font-family: 'Noto Sans', sans-serif;
	color: white;
	width: 220px;
	height: 40px;
	background-color: #eaeaea;
	border-radius: 5px;
	margin-right: 10px;
}
.filter li{
	float: left;
	margin-right: 30px;
	font-size: 12pt;
	font-family: 'Noto Sans', sans-serif;
}
.maintb {
	width: 1100px;
}
.img {
	width: 360px;
	height: 335px;
	overflow: hidden;
}
.roastimg{
	transition: all 0.2s linear;
}
.roastimg:hover {
	transform: scale(1.2);
}
</style>
<script type="text/javascript">
$(function() {
		
	
	$(".btn1").click(function() {
		$(this).css("background-color","#036635")
		$(this).siblings().css("background-color","#eaeaea")

})
	$(".btn2").click(function() {
			$(this).css("background-color","#036635")
			$(this).siblings().css("background-color","#eaeaea")

	})
	
	/* 체크박스 필터 */
	
	function hide()
	{
		$(".blondtb").hide()
	    $(".mediumtb").hide()
	    $(".darktb").hide()
	}
	
	function show()
	{
		$(".blondtb").show()
		$(".mediumtb").show()
    	$(".darktb").show()
	}
	
	function checked() {
		$("input:checkbox[name='all']").prop("checked",true)
		$("input:checkbox[name='chk2']").prop("checked",false)
		$("input:checkbox[name='chk3']").prop("checked",false)
		$("input:checkbox[name='chk4']").prop("checked",false)
	}
	
	$(document).on('change', '#cbox', function()
	{

		hide()
		
		/* 블론드 로스트 체크박스 */
		if ($(this).attr("class")=='cbx2')
		{
			if($(this).is(":checked"))
			{
				$("input:checkbox[name='all']").prop("checked",false)
				$(".blondtb").show()
				
				if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) 
				{
					checked()
					show()
				}
				else if($(".cbx3").is(":checked"))
				{
					$(".blondtb").show()
					$(".mediumtb").show()
				}
				else if ($(".cbx4").is(":checked"))
				{
					$(".blondtb").show()
				    $(".darktb").show()
				} 
				
			}
			else
			{
				$(".blondtb").hide()
				
				if ($(".cbx3").is(":checked") && $(".cbx4").is(":checked")) 
				{
					$(".mediumtb").show()
				    $(".darktb").show()
				}
				else if($(".cbx3").is(":checked"))
				{
					$(".mediumtb").show()
				}else if ($(".cbx4").is(":checked"))
				{
				    $(".darktb").show()
				} 
				
			}
		}
		/* 미디엄 로스트 체크박스 */
		else if ($(this).attr("class")=='cbx3')
		{
			if($(this).is(":checked"))
			{
				$("input:checkbox[name='all']").prop("checked",false)
				$(".mediumtb").show()
				
				if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) 
				{
					checked()
					show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
					$(".mediumtb").show()
				}
				else if ($(".cbx4").is(":checked")) 
				{
					$(".mediumtb").show()
				    $(".darktb").show()
				} 
			}
			else 
			{
				$(".mediumtb").hide()
				
				if ($(".cbx2").is(":checked") && $(".cbx4").is(":checked")) 
				{
					$(".blondtb").show()
				    $(".darktb").show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
				}
				else if ($(".cbx4").is(":checked"))
				{
				    $(".darktb").show()
				} 
			}
		}
		/* 다크 로스트 체크박스 */
		else if ($(this).attr("class")=='cbx4')
		{
			if($(this).is(":checked"))
			{
				$("input:checkbox[name='all']").prop("checked",false)
				$(".darktb").show()
				
				if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) 
				{
					checked()
					show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
					$(".darktb").show()
				}
				else if ($(".cbx3").is(":checked")) 
				{
					$(".mediumtb").show()
				    $(".darktb").show()
				} 
			}
			else 
			{
				$(".darktb").hide()

				if ($(".cbx2").is(":checked") && $(".cbx3").is(":checked")) 
				{
					$(".blondtb").show()
				    $(".mediumtb").show()
				}
				else if($(".cbx2").is(":checked"))
				{
					$(".blondtb").show()
				}
				else if ($(".cbx3").is(":checked")) 
				{
				    $(".mediumtb").show()
				} 
			}
		}
	}) /* 체크박스 필터 end */
	

})

</script>
</head>
<body>
<div class="sangpum">
	<p class="headname">커피</p>
	<br>
	<hr color="#BDBDBD" width="1100px">
	<br>
	<div style="border: 1px solid #BDBDBD;width: 1100px;height: 230px;padding: 30px;">
	  <h1>분류 보기</h1>
	  <br>
	  <br>
	  <hr color="#eaeaea" width="1045px" align="center">
	  <br>
	  <br>
	  <div>
	    <button type="button" class="btn1" value="원두">스타벅스 원두</button>
	    <button type="button" class="btn2" value="비아" onclick="location.href='index.jsp?main=../../sangpum/coffee2.jsp'">스타벅스 비아</button>
	  </div>
	  <br>
	  <br>
	  <div class="filter">
	    <form action="#" method="post">
	    <ul>
	      <li><input type="checkbox" name="all" class="cbx1" id="cbox" value="전체 상품보기" checked="checked">&nbsp;전체 상품보기</li>
	      <li><input type="checkbox" name="chk2" class="cbx2" id="cbox" value="블론드 로스트">&nbsp;블론드 로스트</li>
	      <li><input type="checkbox" name="chk3" class="cbx3" id="cbox" value="미디엄 로스트">&nbsp;미디엄 로스트</li>
	      <li><input type="checkbox" name="chk4" class="cbx4" id="cbox" value="다크 로스트">&nbsp;다크 로스트</li>
	    </ul>
	    </form>
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	<!-- 블론드 로스트 -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="4" align="left" style="background-color: #f5f2eb;height: 60px;">
	         
	         <img alt="blond" src="../../sangpum/image/icon_blond.png" style="float: left;">
	         <p class="roastname">블론드 로스트</p>
	         </td>
	       </tr>
	       <tr>
	         <td align="left">
	         <br>
	         <br>
	         <div class="img">
	           <div class="roastimg">
	             <img alt="블론드이미지" src="../../sangpum/image/blond_roast.jpg" width="360" height="335">
	           </div>
	         </div>
	         <br>
	         <!-- db로 저장된 이름 받아오기 -->
	         <p class=sangpumname>베란다 블렌드 250g</p>
	         </td>
	       </tr>
	     </table>
	  </div>
	  <br>
	  <br>
	  <!-- 미디엄 로스트 -->
	  <div class="mediumtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="4" align="left" style="background-color: #f5f2eb;height: 60px;">
	         
	         <img alt="blond" src="../../sangpum/image/icon_medium.png" style="float: left;">
	         <p class="roastname">미디엄 로스트</p>
	         </td>
	       </tr>
	       <%
	           int n=0;
	           
	           for(int row=1;row<=2;row++)
	           {
	        	   %>
	        	   <tr>
	        	   <%
	           		for(int col=1;col<=3;col++)
	           		{
		           		n++;
	           		 %>
	           		<td align="left">
	        	    <br>
	         	    <br>
	         	    <div class="img">
	          		  <div class="roastimg">
	             		<img alt="미디엄이미지" src="../../sangpum/image/medium<%=n %>.jpg" width="360" height="335">
	           		  </div>
	         		</div>
	        		<br>
	        		<!-- db로 저장된 이름 받아오기 -->
	         		<p class=sangpumname>베란다 블렌드 250g</p>
	         		</td>
	           		
	 	           <%}
	           		%>
	     	       </tr>
	           <%}
	           %>
	     </table>
	  </div>
	  <br>
	  <br>
	  <!-- 다크 로스트 -->
	  <div class="darktb">
	     <table class="maintb">
	       <tr>
	         <td colspan="4" align="left" style="background-color: #f5f2eb;height: 60px;">
	         
	         <img alt="blond" src="../../sangpum/image/icon_dark.png" style="float: left;">
	         <p class="roastname">다크 로스트</p>
	         </td>
	       </tr>
	       
	       <tr>
	       <%
	           int i=0;
	           
	           for(int row=1;row<=3;row++)
	           {
	        	   %>
	        	   <td align="left">
	        	    <br>
	         	    <br>
	         	    <div class="img">
	          		  <div class="roastimg">
	             		<img alt="다크이미지" src="../../sangpum/image/dark<%=row %>.jpg" width="360" height="335">
	           		  </div>
	         		</div>
	        		<br>
	        		<!-- db로 저장된 이름 받아오기 -->
	         		<p class=sangpumname>베란다 블렌드 250g</p>
	         		</td>
	           <%}
	           %>
	     	 </tr>
	     </table>
	  </div>
</div>  
</body>
</html>