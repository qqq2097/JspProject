<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Starbucks Coffee Korea</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- CSS 링크 -->
<link rel="stylesheet" href="../../sangpum/css/esspressoCSS.css"/>
<link rel="stylesheet" href="../starbucks_clone/starbucks_clone/assets/css/style.css" />
<!-- js -->
<script src="../../sangpum/js/cakeFilter.js"></script>

</head>
<body>
<div class="sangpum">
	<p class="headname">텀블러</p>
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
	    <button type="button" class="btn1">카테고리</button>
	    <button type="button" class="btn2" onclick="location.href='index.jsp?main=../../sangpum/theme2.jsp'">테마</button>
	  </div>
	  <br>
	  <br>
	  <div class="filter">
	    <form action="#" method="post">
	    <ul>
	      <li><input type="checkbox" name="all" class="cbx1" id="cbox" checked="checked">&nbsp;전체 상품보기</li>
	      <li><input type="checkbox" name="chk2" class="cbx2" id="cbox">&nbsp;플라스틱 텀블러</li>
	      <li><input type="checkbox" name="chk3" class="cbx3" id="cbox">&nbsp;스테인리스 텀블러</li>
	    </ul>
	    </form>
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	<!-- 플라스틱 -->
	 <div class="blondtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">플라스틱</p>
	         </td>
	       </tr>
	        <tr>
	       <% 
	           for(int row=1;row<=3;row++)
	           {
	        	   %>
	        	   <td align="left">
	        	    <br>
	         	    <br>
	         	    <div class="img">
	          		  <div class="roastimg">
	             		<img  src="../../sangpum/image/pla-tum<%=row %>.jpg" width="360" height="335">
	           		  </div>
	         		</div>
	        		<br>
	        		<!-- db로 저장된 이름 받아오기 -->
	         		<p class=sangpumname>플라스틱 텀블러</p>
	         		</td>
	           <%}
	           %>
	     	 </tr>
	     </table>
	  </div>
	  <br>
	  <br>
	  <!-- 스테인리스 텀블러 -->
	  <div class="mediumtb">
	     <table class="maintb">
	       <tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">스테인리스 텀블러</p>
	         </td>
	       </tr>
	       <tr>
	       <% 
	           for(int row=1;row<=3;row++)
	           {
	        	   %>
	        	   <td align="left">
	        	    <br>
	         	    <br>
	         	    <div class="img">
	          		  <div class="roastimg">
	             		<img  src="../../sangpum/image/sta-tum<%=row %>.jpg" width="360" height="335">
	           		  </div>
	         		</div>
	        		<br>
	        		<!-- db로 저장된 이름 받아오기 -->
	         		<p class=sangpumname>스테인리스 텀블러</p>
	         		</td>
	           <%}
	           %>
	     	 </tr>
	     </table>
	  </div>
</div>  
</body>
</html>