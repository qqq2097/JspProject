<%@page import="StarBucksDto.memberDto"%>
<%@page import="StarBucksDao.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gaegu:wght@300;400;700&family=Nanum+Pen+Script&family=Poor+Story&display=swap" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");
String name = request.getParameter("myname");
String birth = request.getParameter("myyear")+"-"+request.getParameter("mymonth")+"-"+request.getParameter("myday");
String hp = request.getParameter("myhp");
String email = request.getParameter("myemail");
String nickname = request.getParameter("mynickname");
String exname = request.getParameter("exname");
String exhp = request.getParameter("exhp");
String exemail = request.getParameter("exemail");
int i = email.indexOf("@");//@ 위치
if(name.substring(name.length()-1).equals("*")){
	name = exname;
}  
if(hp.substring(5,6).equals("*")){
	hp = exhp;
} 
if(email.substring(i-1,i).equals("*")){
	email = exemail;
} 

memberDao dao = new memberDao();
memberDto dto = new memberDto();
dto.setName(name);
dto.setId(id);
dto.setHp(hp);
dto.setEmail(email);
dto.setBirthday(birth);
dto.setNickname(nickname);
dao.updateInfo(dto);
out.println("<script>");
out.println("alert('"+name+"님의 정보가 업데이트 되었습니다.')");
out.println("location.href='../starbucks_clone/starbucks_clone/index.jsp?main.jsp'");
out.println("</script>");


%>
</body>
</html>