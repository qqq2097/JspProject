<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
body{
	background-image: url("../../login/loginback.jpg"); 
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
}
div.footerinfo{
top: 1000px;
width: 100%;
height: 500px;

}

input[class="saveid"]{/*원래 체크박스는 보이지 않게  */
     display: none;  
}

.cb{/*기본 체크박스 디자인 */
	display: inline-block;
	position:relative;
    width: 1.7em; 
    height: 1.7em;
    border: 2px solid #eee;
    background-color: #eee;
    border-radius: 50%;
    margin: 0 5px -6px 0;
    font-size: 1.4em;
}
input[type="checkbox"] + label:before { /* 체크 마크 */
    position: relative;
    align-content:center;
    left: 0px;
    content: '✔';
     /* 체크 마크 ASCii 문자 */
    font-size: 1.5em;
    line-height: 0.8;
    color: #fff;
    transition: all;
    display: inline-block;
    
}
input[class="saveid"]:checked +label {/*클릭하면 배경 색상 변경  */
    border: 2px solid #006236;
    background-color: #006236;
}
button{
		padding-right: 18px;
		padding-left: 18px;
		padding-top: 7px;
		padding-bottom: 7px;
		border-radius: 3px;
		background-color: #006633; 
		border: 1px solid #006633; 
		color: white;
	}
	li.mylist{
		list-style: "* ";
		margin-bottom: 6px;
	}
	ul.mylist{
		padding-left: 30px;
	}
</style>
</head>
<body>
<%
String id = (String)session.getAttribute("id");//아이디
String saveid= (String)session.getAttribute("saveid");
%>
<form action="../../login/loginAction.jsp" method="post">
	<div align="center">
	<p style="color: white; font-size: 3em; margin-top: 70px; margin-bottom: 30px;">로그인</p>
		<table style=" width:600px;background-color: white; border-radius: 2px;">
			<tr>
				<td height="100px" colspan="3">
					<p style="font-size: 2em; text-align: center;"><a style="color:#006639;">Welcome!</a><a style="color:#848484;"> 스타벅스 코리아에 오신 것을 환영합니다.</a></p>
				<td>
			</tr>
			<tr >
				<td style="border-top: 1px solid #848484;" colspan="3">
					<%
					if(saveid==null){
						%>
						<input type="text" id="myid" name="id" style="width:95%;font-size:1.3em; height:50px;margin: 10px 0px 10px 15px; border:1px solid #BDBDBD; border-radius: 3px;" placeholder="  아이디를 입력해주세요.">
      					<%
					}else{
						%>
						<input type="text" value="<%=id %>" id="myid" name="id" style="width:95%;font-size:1.3em; height:50px;margin: 10px 0px 10px 15px; border:1px solid #BDBDBD; border-radius: 3px;" placeholder="  아이디를 입력해주세요.">
						<%
					}
				%>
      				
      			</td>
			</tr>
			<tr >
				<td colspan="3">
					<input type="password" id="mypass" name="pass" style="width:95%;height:50px;font-size:1.3em; margin: 0px 0px 5px 15px; border:1px solid #BDBDBD; border-radius: 3px;" placeholder="  비밀번호를 입력해주세요.">
      			</td>
			</tr>
			<tr>
				<td colspan="3">
				<div style="margin-bottom: 20px; margin-left: 15px;">
					
					
					<%
					if(saveid==null){
						%>
						<input type="checkbox"  name="saveid" id="saveid" value="2" class="saveid">
				    	<label for="saveid"  class="cb"></label>
						<a style="font-size: 1.5em;">아이디저장</a>
						<%
					}else{
						%>
						<input type="checkbox" checked="checked"  name="saveid" id="saveid" value="2" class="saveid">
				    	<label for="saveid"  class="cb"></label>
						<a style="font-size: 1.5em;">아이디저장</a>
						<%
					}
				%>
				</div>	
				</td>
				
			</tr>
			<tr align="center">
				<td colspan="3">
					<button style="width:94%; font-size: 2.5em; padding-top: 17px; padding-bottom: 17px; ">로그인</button>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<ul class = "noticelist"style="font-size: 1.45em;padding-top: 10px; padding-bottom:50px; color:#006633;  list-style-type: circle;" >
      				  <li class="mylist">타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.</li>
      				  <li class="mylist">스타벅스 코리아의 공식홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.</li>
      				</ul>
				</td>
			</tr>
			<tr align="center" style="font-size: 1.7em; font-weight: lighter; " >
				<td style=" border-right: 1px solid #848484; width:33.4%; margin-top: 15px; margin-bottom: 15px;  ">
					<a href="../../starbucks_clone/starbucks_clone/index.jsp?main=../../member/memberAdd_1.jsp">회원가입</a>
				</td>
				<td style=" border-right: 1px solid #848484; width:33.3%; margin-top: 15px; margin-bottom: 15px; ">
					<a href="../../starbucks_clone/starbucks_clone/index.jsp?main=../../login/findID.jsp">아이디찾기</a>
				</td>
				<td style="width:33.3%; margin-top: 15px; margin-bottom: 15px; ">
					<a href="../../starbucks_clone/starbucks_clone/index.jsp?main=../../login/findPassword.jsp">비밀번호찾기</a>
				</td>
			</tr>
			<tr height="20px">
			</tr>
		</table>
		</div>
	</form>
	
</body>
</html>