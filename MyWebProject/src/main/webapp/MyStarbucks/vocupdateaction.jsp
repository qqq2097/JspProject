<%@page import="data.dto.VoclistDto"%>
<%@page import="data.dao.VoclistDao"%>
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

//실제경로
String realPath=getServletContext().getRealPath("/");
System.out.println(realPath);

int uploadSize=1024*1024*2;

MultipartRequest multi=null;

try{
multi=new MultipartRequest(request,realPath,uploadSize,"utf-8",
		new DefaultFileRenamePolicy());


String num=multi.getParameter("num");

//기존의 포토명 읽어오기
VoclistDao dao=new VoclistDao();
String old_photoname=dao.getData(num).getPhoto();

//request아니고 multi로 모든 폼데이터 읽어온다
String subject = multi.getParameter("DS_VOC_TITLE"); //""안에 폼 name값
String content=multi.getParameter("DS_VOC_CN");
String photo=multi.getFilesystemName("file_nm2"); 

//페이지 읽기
String currentPage=multi.getParameter("currentPage");

//dto에 저장
VoclistDto dto=new VoclistDto();

dto.setNum(num);
dto.setSubject(subject);
dto.setContent(content);
//사진선택 안했을경우 기존사진 으로 저장
dto.setPhoto(photo==null?old_photoname:photo);

//update
dao.updatevoc(dto);


response.sendRedirect("../starbucks_clone/starbucks_clone/index.jsp?main=../../MyStarbucks/vocView.jsp?num="+num+"&currentPage="+currentPage);

}catch(Exception e){
	
}
%>
</body>
</html>