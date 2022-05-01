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
//로그인(1.아이디,비번이 둘다 맞다 2.비번이 틀렸다. 3.아이디가 없다.
String id = request.getParameter("id");
String pass= request.getParameter("pass");
String saveid =request.getParameter("saveid");
memberDao dao = new memberDao();
int flag = dao.getLogin(id, pass);
String name = dao.getName(id);
if(flag==1){
	session.setAttribute("loginok", "ok");
	session.setAttribute("id", id);
	session.setAttribute("saveid", "save");//save==null?null:"save"
	
	session.setMaxInactiveInterval(60*60*2);
	%>
	<script type="text/javascript">
		alert("<%=name %>님 환영합니다.");
	</script>
	<%
	response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main.jsp");
}
else if(flag==2){
	
	session.setAttribute("id", id);
	session.setAttribute("saveid", "yes");//save==null?null:"yes"
	
	session.setMaxInactiveInterval(60*60*2);

	%>
	<script type="text/javascript">
		alert("비밀번호가 맞지 않습니다.");
		location.href = "../starbucks_clone/starbucks_clone/index.jsp?main=../../login/loginform.jsp";
	</script>
	<%
}
else if(flag==3){
	%>
	<script type="text/javascript">
		alert("없는 아이디입니다.");
		location.href = "../starbucks_clone/starbucks_clone/index.jsp?main=../../login/loginform.jsp";
	</script>
	<%
}
%>
</body>
</html>