<%@page import="java.io.File"%>
<%@page import="data.dao.VoclistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//주의:db삭제포함 업로드된 파일도 삭제
String num=request.getParameter("num");
String currentPage=request.getParameter("currentPage");

//db로부터 저장된 이미지명 얻기
VoclistDao dao=new VoclistDao();
String photo=dao.getData(num).getPhoto();

//db삭제
dao.deleteVoc(num);

//프로젝트 실제경로
String realPath=getServletContext().getRealPath("/");

//파일객체생성
File file=new File(realPath+"\\"+photo);
//파일삭제
file.delete();

//보던페이지로 이동
response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/voclist.jsp?currentPage="+currentPage);

%>
</body>
</html>