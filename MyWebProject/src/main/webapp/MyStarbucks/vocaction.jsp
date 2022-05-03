<%@page import="data.dao.VoclistDao"%>
<%@page import="data.dto.VoclistDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
//세션으로부터 db저장할 id
String myid=(String)session.getAttribute("id");

//실제경로
String realPath=getServletContext().getRealPath("/");
System.out.println(realPath);

int uploadSize=1024*1024*2;

MultipartRequest multi=null;

try{
multi=new MultipartRequest(request,realPath,uploadSize,"utf-8",
		new DefaultFileRenamePolicy());

//request아니고 multi로 모든 폼데이터 읽어온다
String email= multi.getParameter("DS_CSTMR_EMAIL1")+"@"+multi.getParameter("DS_CSTMR_EMAIL2");
String phonenum = multi.getParameter("phone1")+"-"+multi.getParameter("phone2")+"-"+multi.getParameter("phone3");
String subject = multi.getParameter("DS_VOC_TITLE");
String content=multi.getParameter("DS_VOC_CN");
String photo=multi.getFilesystemName("file_nm1"); //""안에 form name값 


//dto에 저장
VoclistDto dto=new VoclistDto();
dto.setMyid(myid);
dto.setEmail(email);
dto.setPhonenum(phonenum);
dto.setSubject(subject);
dto.setContent(content);
dto.setPhoto(photo);


//dao선언
VoclistDao dao=new VoclistDao();
//insert
dao.insertVoc(dto);

//
response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/voclist.jsp");

}catch(Exception e){
	
}
%>
</body>
</html>