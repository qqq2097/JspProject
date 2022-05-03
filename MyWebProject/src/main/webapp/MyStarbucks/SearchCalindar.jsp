<%@page import="java.text.SimpleDateFormat"%>
<%@page import="StarBucksDao.RewordDao"%>
<%@page import="StarBucksDto.RewordDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html{
	width: 800px;
	height: 500px;
	}

.active a{
font-weight: bold;
color: #0d5f34;
border-bottom: 1px solid #0d5f34;
}
/* button.btnback
{
	background: #red;
	color : #fff;
} */

</style>

</head>

<body>

<%
    String id = (String)session.getAttribute("id");

	String d1 = request.getParameter("date1");
    String d2 = request.getParameter("date2");
	
    //System.out.println(d1);
    //System.out.println(d2);
    //System.out.println(id);
    
    
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    RewordDao dao=new RewordDao();
   List<RewordDto> list=dao.getAllRewordsBtn(id, d1, d2);
%>
<%
//페이징처리에 필요한 변수
int totalCount; //총글수
int totalPage; //총 페이지수
int startPage; //각블럭의 시작페이지
int endPage; //각블럭의 끝페이지
int start; //각페이지의 시작번호
int perPage=5; //한페이지에 보여질 글 갯수
int perBlock=5; //한블럭당 보여지는 페이지 개수
int currentPage; //현재페이지 번호

int no;

//총갯수
totalCount=dao.getAllRewordsCnt(id, d1, d2);


//현재 페이지번호 읽기(단 null일경우는 1페이지로 설정)
if(request.getParameter("currentPage")==null)
	currentPage=1;
else
	currentPage=Integer.parseInt(request.getParameter("currentPage"));

//총페이지 개수구하기
totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);

//각블럭의 시작페이지
//예:현재페이지가 3인경우 startpage=1,endpage= 5
//현재페이지가 6인경우 startpage=6,endpage= 10
startPage=(currentPage-1)/perBlock*perBlock+1;
endPage=startPage+perBlock-1;

//만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
if(endPage>totalPage)
	endPage=totalPage;

//각페이지에서 불러올 시작번호
start=(currentPage-1)*perPage;

//각페이지에서 필요한 게시글 가져오기
List<RewordDto>list1=dao.getAllRewordsBtnList(id, d1, d2, start, perPage);

no = totalCount-(currentPage-1)*perPage;




%>
<div class="third" style="width: 600px; height: 500px; margin-left: 50px; border: 1px solid black;" id="tb">
   		<table class="table table-bordered dbtable" style="width : 600px;">
   		<caption>검색한 기간&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=d1 %>&nbsp; ~ &nbsp;<%=d2 %></caption>
   			<tr>
      			<th align="center"> No</th>
      			<th align="center"> 카드번호</th>
      			<th align="center"> 적립별</th>
     			<th align="center"> 매장명</th>
      			<th align="center"> 적립일</th>     
   			</tr>
   
   
   			   <%
   				
   				for(int i=0;i<list1.size();i++)
   				{
	   				RewordDto dto=list1.get(i);
	  			 %>
	   				<tr>
	   					<td align="center"><%=i+1 %></td>
	   					<td align="center"><%=dto.getCardnum() %></td>
	   					<td align="center"><%=dto.getStarcnt() %></td>
	   					<td align="center"><%=dto.getStoreaddr() %></td>
	   					<td align="center"><%=sdf.format(dto.getBuyday()) %></td>
	  				 </tr>
   					<%}
   						%>
   
   	
  
   		</table>
   		<!-- 페이징처리 -->

<div style="width: 600px; text-align: center;">
  <ul class="pagination">
  	
  	<%
  	//이전
  	if(startPage>1)
  	{%>
  		<li>
  		  <a href="./SearchCalindar.jsp?currentPage=<%=startPage-1%>&date1=<%=d1%>&date2=<%=d2%>">이전</a>
  		</li>
  	<%}
  	
  	for(int pp=startPage;pp<=endPage;pp++)
  	{
  		if(pp==currentPage)
  		{%>
  			<li class="active">
  			  <a href="./SearchCalindar.jsp?currentPage=<%=pp%>&date1=<%=d1%>&date2=<%=d2%>"><%=pp %></a>
  			</li>
  		<%}else{%>
  			<li>
  			  <a href="./SearchCalindar.jsp?currentPage=<%=pp%>&date1=<%=d1%>&date2=<%=d2%>"><%=pp %></a>
  			</li>
  		<%}
  	}
  	
  	//다음
  	if(endPage<totalPage)
  	{%>
  		<li>
  		  <a href="./SearchCalindar.jsp?currentPage=<%=endPage+1%>&date1=<%=d1%>&date2=<%=d2%>">다음</a>
  		</li>
  	<%}
  	%>
  	
  </ul>
</div>	

	<button type="button" class="btn btn-danger" style="margin-left: 270px;"onclick="location.href='../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/StarHistory.jsp'">돌아가기</button>
</div>
</body>

</html>