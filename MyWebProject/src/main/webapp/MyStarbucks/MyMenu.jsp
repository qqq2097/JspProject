<%@page import="java.util.HashMap"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SangpumDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.SangpumDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<!-- 폰트 -->
<link
  href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
  rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

div.footerinfo {
	width: 100%;
	height: 500px;
	top: 1500px;
}

div.top{
   width : 100%;
   height : 200px;
   background-image: url("../../MyStarbucks/image/ms03.jpg");
}

div.topsub{
   position : absolute;
   width : 300px;
   height : 100px;
   
   top : 170px;
   left : 1000px;
   color: #fff;
   
   font-size: 15pt;
}
span.toptitle{
   
   color: #fff;
   font-size: 20pt;
   font-weight: bold;
   top: 200px;
   
}



li.mylist{
   border: 1px solid gray;
   width : 300px;
   border-radius: 100px;
   cursor: pointer;
}
button.checkbtn:hover {
   background: green;
   color: #fff;
   font-style: inherit;
   font-weight: bold;
   text-decoration: underline;
   
}

ul.sub1{
	font-size: 0.6em;
	text-align: center;
}

ul.sub2{
	font-size: 0.6em;
	text-align: center;
}

/*네비*/
.ms_nav {
float: right;
position: relative;
right: 300px;
bottom: 410px;
font-weight: blod;
width: 220px;
margin-bottom: 90px;
margin-top: 200px;
}

.ms_nav > ul{
border-top: 2px solid #222;
}

nav ul, li {list-style: none;}
li{display: list-item;
text-align: -webkit-match-parent;}

.ms_nav >ul>li {
border-bottom: 1px solid #ddd;
width: 220px;
}

.ms_nav > ul>li>a {
color: #444;
display: block;
font-size: 14px;
padding: 20px 30px 20px 15px;
position: relative;
width: 175px;
}

a{
margin: 0;
text-decoration: none;
vertical-align: baseline;
background: transparent;
cursor: pointer;
color: black;
}


.ms_nav > ul > li > ul > li > a  {
color: #444;
display: block;
font-size: 12px;
padding: 6px 0 6px 15px;
width: 205px;
}
.tabcontainer{
position: relative;
left: 60px;
width: 600px;
height: 174px;
}

table.suggestion_use_info_tbl{
border-top: 1px solid #333;
position: relative;
font-size: 9px;
text-align: center;
width: 1100px;
right: 10px;
}

table.suggestion_use_info_tbl thead tr th{
border-bottom: 1px solid #333;
color: #222;
height: 40px;
vertical-align: middle;
}

.pagination li {
display: inline-block;
margin:0 5px;
vertical-align: middle;
}

/*해당 페이지 나타내는*/
.active a{
font-weight: bold;
color: #0d5f34;
border-bottom: 1px solid #0d5f34;
}
</style>


<script type="text/javascript">
$(function(){
   
   $(".sub1").hide();
   $(".sub2").hide();
   $(".mymenulist").hide();
   $(".myfoodlist").hide();
   $(".mysangpumlist").hide();
   
   $(".ms_nav > ul>li>a").click(function () {
		$(this).next().toggle("fast");
	});
   
   
   
   $("#drinkbtn").click(function(){
	      
	   $(".mymenulist").toggle("fast");
	   $(".myfoodlist").hide();
	   $(".mysangpumlist").hide();
	   
	   });
   
   $("#foodbtn").click(function(){
	      
	   $(".mymenulist").hide();
	   $(".myfoodlist").toggle("fast");
	   $(".mysangpumlist").hide();
	   
	   });
   
   $("#sangpumbtn").click(function(){
	      
	   $(".mymenulist").hide();
	   $(".myfoodlist").hide();
	   $(".mysangpumlist").toggle("fast");
	   
	   });
   
   $("#allcheck").click(function(){
	   
	   var a=$(this).is(":checked");
	   if(a)
	   {
		   $(".idx").attr("checked",true);
	   }
	   else
	   {
		   $(".idx").attr("checked",false);
	   }
	   
   });
   
   $("#delcoffee").click(function(){
	  
	   //체크한 상품 개수
	   var cnt=$(".idx:checked").length;
	   if(cnt==0)
	   {
		   alert("먼저 선택할 상품을 선택하세요");
		   return;
	   }
	   
	   $(".idx:checked").each(function(i,element){
		  var idx=$(this).attr("idx");
		  console.log(idx);
		  
		  //선택한 나의 커피 모두삭제
		  $.ajax({
			 type:"get",
			 url:"./CoffeeDelete.jsp",
			 dataType:"html",
			 data:{"idx":idx},
			 success:function(res){
				
				 alert("삭제성공");
				 location.reload();
			 }
		  });
		  
	   });
   });
   
   
   $("#delfood").click(function(){
		  
	   //체크한 상품 개수
	   var cnt=$(".idx:checked").length;
	   //alert(cnt);
	   if(cnt==0)
	   {
		   alert("먼저 선택할 푸드를 선택하세요");
		   return;
	   }
	   
	   $(".idx:checked").each(function(i,element){
		  var idx=$(this).attr("idx");
		  //console.log(idx);
		  
		  //선택한 나의 푸드 모두삭제
		  $.ajax({
			 type:"get",
			 url:"./FoodDelete.jsp",
			 dataType:"html",
			 data:{"idx":idx},
			 success:function(){
				
				 alert("삭제성공");
				 location.reload();
			 }
		  });
		  
	   });
   });
   
   
   $("#delgoods").click(function(){
		  
	   //체크한 상품 개수
	   var cnt=$(".idx:checked").length;
	   //alert(cnt);
	   if(cnt==0)
	   {
		   alert("먼저 선택할 굿즈를 선택하세요");
		   return;
	   }
	   
	   $(".idx:checked").each(function(i,element){
		  var idx=$(this).attr("idx");
		  //console.log(idx);
		  
		  //선택한 나의 푸드 모두삭제
		  $.ajax({
			 type:"get",
			 url:"./GoodsDelete.jsp",
			 dataType:"html",
			 data:{"idx":idx},
			 success:function(){
				
				 alert("삭제성공");
				 location.reload();
			 }
		  });
		  
	   });
   });
   
   
  
});
</script>

<%
	SangpumDao sdao=new SangpumDao();
	String id = (String)session.getAttribute("id");
	System.out.println(id);
%>
</head>
<%
// mybeverageList

//페이징처리에 필요한 변수
int totalCount1; //총 글수
int totalPage1;//총 페이지수
int startPage1;//각 블럭의 시작페이지
int endPage1;//각 블럭의 끝 페이지
int start1; //각페이지의 시작번호
int perPage1=5; //한 페이지에 보여질 글 갯수
int perBlock1=5; // 한 블럭당 보여지는 페이지 개수
int currentPage1; //현재페이지

int no1;

//총개수
totalCount1=sdao.getTotalCountBeverage(id);

//현재 페이지번호 읽기 단 null일경우는 1페이지로 설정
if(request.getParameter("currentPage")==null)
{
	currentPage1=1;
}
else
{
	currentPage1=Integer.parseInt(request.getParameter("currentPage"));
}

//총페이지 개수구하기
totalPage1=totalCount1/perPage1+(totalCount1%perPage1==0?0:1);

//각블럭의 시작페이지

//예:현재페이지가 3인 경우 startpage=1,endpage=5
startPage1=(currentPage1-1)/perBlock1*perBlock1+1;
endPage1=startPage1+perBlock1-1;

//만약 총페이지가 8 -2번째 불럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
if(endPage1>totalPage1)
	endPage1=totalPage1;

//각페이지에서 불러올 시작번호
start1=(currentPage1-1)*perPage1;

//각페이지에서 필요한 게시글 가져오기
List<SangpumDto> pagelist=sdao.mybeverageList(start1, perPage1, id);

//각 글앞에 붙일 시작번호 구하기

//총글이 20개면? 1페이지 20 2페이지 15부터 출력해서 1씩 감소
no1=totalCount1-(currentPage1-1)*perPage1;
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>


<%
// myFoodList

//페이징처리에 필요한 변수
int totalCount2; //총 글수
int totalPage2;//총 페이지수
int startPage2;//각 블럭의 시작페이지
int endPage2;//각 블럭의 끝 페이지
int start2; //각페이지의 시작번호
int perPage2=5; //한 페이지에 보여질 글 갯수
int perBlock2=5; // 한 블럭당 보여지는 페이지 개수
int currentPage2; //현재페이지

int no2;

//총개수
totalCount2=sdao.getTotalCountFood(id);

//현재 페이지번호 읽기 단 null일경우는 1페이지로 설정
if(request.getParameter("currentPage")==null)
{
	currentPage2=1;
}
else
{
	currentPage2=Integer.parseInt(request.getParameter("currentPage"));
}

//총페이지 개수구하기
totalPage2=totalCount2/perPage2+(totalCount2%perPage2==0?0:1);

//각블럭의 시작페이지

//예:현재페이지가 3인 경우 startpage=1,endpage=5
startPage2=(currentPage2-1)/perBlock2*perBlock2+1;
endPage2=startPage2+perBlock2-1;

//만약 총페이지가 8 -2번째 불럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
if(endPage2>totalPage2)
	endPage2=totalPage2;

//각페이지에서 불러올 시작번호
start2=(currentPage2-1)*perPage2;

//각페이지에서 필요한 게시글 가져오기
List<SangpumDto> foodlist=sdao.myFoodList(start2, perPage2,id);

//각 글앞에 붙일 시작번호 구하기

//총글이 20개면? 1페이지 20 2페이지 15부터 출력해서 1씩 감소
no2=totalCount2-(currentPage2-1)*perPage2;

%>



<%
// myGoodsList

//페이징처리에 필요한 변수
int totalCount3; //총 글수
int totalPage3;//총 페이지수
int startPage3;//각 블럭의 시작페이지
int endPage3;//각 블럭의 끝 페이지
int start3; //각페이지의 시작번호
int perPage3=5; //한 페이지에 보여질 글 갯수
int perBlock3=5; // 한 블럭당 보여지는 페이지 개수
int currentPage3; //현재페이지

int no3;

//총개수
totalCount3=sdao.getTotalCountGoods(id);

//현재 페이지번호 읽기 단 null일경우는 1페이지로 설정
if(request.getParameter("currentPage")==null)
{
	currentPage3=1;
}
else
{
	currentPage3=Integer.parseInt(request.getParameter("currentPage"));
}

//총페이지 개수구하기
totalPage3=totalCount3/perPage3+(totalCount3%perPage3==0?0:1);

//각블럭의 시작페이지

//예:현재페이지가 3인 경우 startpage=1,endpage=5
startPage3=(currentPage3-1)/perBlock3*perBlock3+1;
endPage3=startPage3+perBlock3-1;

//만약 총페이지가 8 -2번째 불럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
if(endPage3>totalPage3)
	endPage3=totalPage3;

//각페이지에서 불러올 시작번호
start3=(currentPage3-1)*perPage3;

//각페이지에서 필요한 게시글 가져오기
List<SangpumDto> goodslist=sdao.mygoodsList(start3, perPage3,id);

//각 글앞에 붙일 시작번호 구하기

//총글이 20개면? 1페이지 20 2페이지 15부터 출력해서 1씩 감소
no3=totalCount3-(currentPage3-1)*perPage3;

%>
<body>



<div class="container">
<!-- top div -->
<div class="top">
  	  <br><br><br><br>
   	  <span class="toptitle">&nbsp;&nbsp; My 메뉴</span>

	<div class="topsub">
      <span class="glyphicon glyphicon-home" onclick="location.href='index.jsp?main=../../MyStarbucks/MyStarBucksForm.jsp'"></span>
      <span onclick=""> > My Starbucks > My 메뉴</span>
	</div>
</div>

<div class="mid">
	<div style="margin-left: 100px; margin-top: 100px;">
   		<img alt="" src="../../MyStarbucks/image/ms11.png">
	</div>

	<div style="margin-left: 115px; margin-top: 100px; width : 850px; height: 50px;">
   		<button type="button"  style="width:266px; height: 50px; border: 1px solid gray" class="btn btn-default checkbtn" id="drinkbtn"> 나만의 음료</button>
   		<button type="button" style="width:266px; height: 50px; border: 1px solid gray" class="btn btn-default checkbtn" id="foodbtn"> 나만의 푸드</button>
   		<button type="button" style="width:260px; height: 50px; border: 1px solid gray" class="btn btn-default checkbtn" id="sangpumbtn"> 나만의 상품</button>
	</div>




	<div class="mymenulist">
   		<table class="table table-striped" style="width : 800px; margin-left: 120px; margin-top: 50px;">
   		<tr>
     		 <th>
        		 <input type="checkbox"  id="allcheck">         
     		 </th>
     		 <th>No</th>
    		  <th>음료명</th>
    		  <th>가격</th>
    		  <th>이미지</th>
  	   </tr>
   
   		 <%
   			if(totalCount1==0)
   			{%>
   				<tr height="40">
   					<td colspan="5" align="center">
   					<b>등록된 음료가 없습니다.</b>
   				</tr>	
   			<%}
   		 	
   			else
   			{
   				for(SangpumDto dto:pagelist)
   				{
   					
   					
   				%>
   					<tr>
   						<td align="center">
   							<input type="checkbox" class="idx"  name="idx" idx="<%=dto.getSnum()%>">
   						</td>
   						<td align="center"><%=no1-- %></td>
   						<td align="center"><%=dto.getSname() %></td>
   						<td align="center"><%=dto.getSprice() %>원</td>
   						<td align="center">
   							<img alt="" src="<%=dto.getImgsrc()%>" style="width: 70px; height: 40px;">
   						</td>
   						<td>
   							<button type="button" class="btn btn-info btn xs" onclick="location.href='index.jsp?main=../../MyStarbucks/buycofform.jsp?snum=<%=dto.getSnum()%>'">구입</button>
   						</td>
   					</tr>	
   				<%}
   				
   			}
   		 %> 
   
  	</table>
   		<button type="button" class="btn btn-sm" id="delcoffee" style=" width: 100px; margin-left: 100px;">선택삭제</button>
   		
   		
   	<!-- 페이징처리 -->

<div style="width: 600px; text-align: center;">
  <ul class="pagination">
  	
  	<%
  	//이전
  	if(startPage1>1)
  	{%>
  		<li>
  		  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=startPage1-1%>">이전</a>
  		</li>
  	<%}
  	
  	for(int pp=startPage1;pp<=endPage1;pp++)
  	{
  		if(pp==currentPage1)
  		{%>
  			<li class="active">
  			  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=pp%>"><%=pp %></a>
  			</li>
  		<%}else{%>
  			<li>
  			  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=pp%>"><%=pp %></a>
  			</li>
  		<%}
  	}
  	
  	//다음
  	if(endPage1<totalPage1)
  	{%>
  		<li>
  		  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=endPage1+1%>">다음</a>
  		</li>
  	<%}
  	%>
  	
  </ul>
</div>	
	</div>

	<div class="myfoodlist">
   		<table class="table table-striped" style="width : 800px; margin-left: 120px; margin-top: 50px;">
   		<tr>
     		 <th>
        		 <input type="checkbox" id="allcheck">         
      		</th>
      		<th>No</th>
      		<th>푸드명</th>
     		 <th>가격</th>
      		<th>이미지</th>
  		 </tr>
   
   		<%
   			if(totalCount2==0)
   			{%>
   				<tr height="40">
   					<td colspan="5" align="center">
   					<b>등록된 푸드가 없습니다.</b>
   				</tr>	
   			<%}
   		 	
   			else
   			{
   				for(SangpumDto dto:foodlist)
   				{
   					
   					
   				%>
   					<tr>
   						<td align="center">
   							<input type="checkbox" class="idx"  name="idx" idx="<%=dto.getSnum()%>">
   						</td>
   						<td align="center"><%=no2-- %></td>
   						<td align="center"><%=dto.getSname() %></td>
   						<td align="center"><%=dto.getSprice() %>원</td>
   						<td align="center">
   							<img alt="" src="<%=dto.getImgsrc()%>" style="width: 70px; height: 40px;">
   						</td>
   						<td>
   							<button type="button" class="btn btn-info btn xs" onclick="location.href='index.jsp?main=../../MyStarbucks/buyfoodform.jsp?snum=<%=dto.getSnum()%>'">구입</button>
   						</td>
   					</tr>	
   				<%}
   				
   			}
   		 %>
   
   		</table>
   		<button type="button" class="btn btn-sm" id="delfood" style=" width: 100px; margin-left: 100px;">선택삭제</button>
   		
   		<!-- 페이징처리 -->

<div style="width: 600px; text-align: center;">
  <ul class="pagination">
  	
  	<%
  	//이전
  	if(startPage2>1)
  	{%>
  		<li>
  		  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=startPage2-1%>">이전</a>
  		</li>
  	<%}
  	
  	for(int pp=startPage2;pp<=endPage2;pp++)
  	{
  		if(pp==currentPage2)
  		{%>
  			<li class="active">
  			  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=pp%>"><%=pp %></a>
  			</li>
  		<%}else{%>
  			<li>
  			  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=pp%>"><%=pp %></a>
  			</li>
  		<%}
  	}
  	
  	//다음
  	if(endPage2<totalPage2)
  	{%>
  		<li>
  		  <a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp?currentPage=<%=endPage2+1%>">다음</a>
  		</li>
  	<%}
  	%>
  	
  </ul>
</div>
	</div>

	<div class="mysangpumlist">
   		<table class="table table-striped" style="width : 800px; margin-left: 120px; margin-top: 50px;">
  		 <tr>
    		  <th>
     		    <input type="checkbox" id="allcheck">         
     		 </th>		
     		 <th>No</th>
     		 <th>상품명</th>
      		<th>가격</th>
      		<th>이미지</th>
  		 </tr>
   
 		 <%
   			if(totalCount3==0)
   			{%>
   				<tr height="40">
   					<td colspan="5" align="center">
   					<b>등록된 상품이 없습니다.</b>
   				</tr>	
   			<%}
   		 	
   			else
   			{
   				for(SangpumDto dto:goodslist)
   				{
   					
   					
   				%>
   					<tr>
   						<td align="center">
   							<input type="checkbox" class="idx"  name="idx" idx="<%=dto.getSnum()%>">
   						</td>
   						<td align="center"><%=no3-- %></td>
   						<td align="center"><%=dto.getSname() %></td>
   						<td align="center"><%=dto.getSprice() %>원</td>
   						<td align="center">
   							<img alt="" src="<%=dto.getImgsrc()%>" style="width: 70px; height: 40px;">
   						</td>
   						<td>
   							<button type="button" class="btn btn-info btn xs" onclick="location.href='index.jsp?main=../../MyStarbucks/buygoodsform.jsp?snum=<%=dto.getSnum()%>'">구입</button>
   						</td>
   					</tr>	
   				<%}
   				
   			}
   		 %>
   
   		</table>
  		 	
   			<button type="button" class="btn btn-sm" id="delgoods" style=" width: 100px; margin-left: 100px;">선택삭제</button>
	</div>

</div>

 


<nav class="ms_nav" id="msRnb">					
	<ul>
		<li>
			<a href="#">My 리워드<span class="sbox_arrow_down1"></span></a>
			<ul class="sub1">
				<li><a href="index.jsp?main=../../MyStarbucks/RewordBenefit.jsp" required="login" >· 리워드 및 혜택</a></li>
				<li><a href="index.jsp?main=../../MyStarbucks/StarHistory.jsp" required="login">· 별 히스토리</a></li>
			</ul>
		</li>
		
		<li class="msRnb_btn"><a href="index.jsp?main=../../MyStarbucks/MyMenu.jsp" required="login">My 메뉴</a></li>
		<li><a href="index.jsp?main=../../MyStarbucks/voclist.jsp" required="login">My 고객의 소리</a></li>
		
		<li>
			<a href="#">개인정보관리<span class="sbox_arrow_down2"></span></a>
			<ul class="sub2">
				<li><a href="#" required="login">· 개인정보확인 및 수정</a></li>
				<li><a href="#" required="login">· 회원 탈퇴</a></li>
				<li><a href="#" required="login">· 비밀번호 변경</a></li>
				<li><a href="index.jsp?main=../../login/findPassword.jsp" required="login">· 비밀번호 변경</a></li>
				<input type="hidden">
			</ul>
		</li>
	</ul>
</nav>

</div>
</body>
</html>