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
<script src="../../sangpum/js/esspressoFilter.js"></script>

</head>
<body>
<div class="sangpum">
	<p class="headname">에스프레소</p>
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
	    <button type="button" class="btn2" onclick="location.href='index.jsp?main=../../sangpum/theme.jsp'">테마</button>
	  </div>
	  <br>
	  <br>
	  <div class="filter">
	    <form action="#" method="post">
	    <ul>
	      <li><input type="checkbox" name="all" class="cbx1" id="cbox" checked="checked">&nbsp;전체 상품보기</li>
	      <li><input type="checkbox" name="chk2" class="cbx2" id="cbox">&nbsp;에스프레소</li>
	      <li><input type="checkbox" name="chk3" class="cbx3" id="cbox">&nbsp;아메리카노</li>
	      <li><input type="checkbox" name="chk4" class="cbx4" id="cbox">&nbsp;카푸치노</li>
	      <li><input type="checkbox" name="chk5" class="cbx5" id="cbox">&nbsp;라떼</li>
	      <li><input type="checkbox" name="chk6" class="cbx6" id="cbox">&nbsp;모카</li>
	    </ul>
	    </form>
	  </div>
	</div>
	<br>
	<!-- 상품list -->
	<!-- 에스프레소 -->
	<div class="esspressotb">
		<table class="maintb">
			<tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">에스프레소</p>
	         <img src="../../sangpum/image/logo_decaf.png" class="decafimg">
	         <p class="decaf">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</p>
	         </td>
	       </tr>
	       <tr>
	       <%
	       for(int row=1;row<=3;row++)
	       {%>
	        	 <td align="left">
	        	 <br>
	         	 <br>
	         	 <div class="img">
	          		<div class="roastimg">
	             		<img alt="에스프레소이미지" src="../../sangpum/image/esspresso<%=row %>.jpg" width="360" height="335">
	           		</div>
	         	  </div>
	        	  <br>
	        	  <!-- db로 저장된 이름 받아오기 -->
	         	  <p class=sangpumname>에스프레소</p>
	         	  </td>
	       <%}
	       %>
	     	 </tr>
	     </table>
	</div>
	<br>
    <br>
	<!-- 아메리카노 -->
	<div class="americanotb">
		<table class="maintb">
			<tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">아메리카노</p>
	         <img src="../../sangpum/image/logo_decaf.png" class="decafimg">
	         <p class="decaf">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</p>
	         </td>
	       </tr>
	      <tr>
	       <%
	       for(int row=1;row<=2;row++)
	       {%>
	        	 <td align="left">
	        	 <br>
	         	 <br>
	         	 <div class="img">
	          		<div class="roastimg">
	             		<img alt="아메리카노이미지" src="../../sangpum/image/americano<%=row %>.jpg" width="360" height="335">
	           		</div>
	         	  </div>
	        	  <br>
	        	  <!-- db로 저장된 이름 받아오기 -->
	         	  <p class=sangpumname>아메리카노</p>
	         	  </td>
	       <%}
	       %>
	           <td width="360" height="335">
	           </td>
	     	 </tr>
	     </table>
	</div>
	<br>
    <br>
	<!-- 카푸치노 -->
	<div class="cappuccinotb">
		<table class="maintb">
			<tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">카푸치노</p>
	         <img src="../../sangpum/image/logo_decaf.png" class="decafimg">
	         <p class="decaf">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</p>
	         </td>
	       </tr>
	      <tr>
	       <%
	       for(int row=1;row<=2;row++)
	       {%>
	        	 <td align="left">
	        	 <br>
	         	 <br>
	         	 <div class="img">
	          		<div class="roastimg">
	             		<img alt="카푸치노이미지" src="../../sangpum/image/cappuccino<%=row %>.jpg" width="360" height="335">
	           		</div>
	         	  </div>
	        	  <br>
	        	  <!-- db로 저장된 이름 받아오기 -->
	         	  <p class=sangpumname>카푸치노</p>
	         	  </td>
	       <%}
	       %>
	           <td width="360" height="335">
	           </td>
	     	 </tr>
	     </table>
	</div>
	<br>
    <br>
    <!-- 라뗴 -->
	<div class="lattetb">
		<table class="maintb">
			<tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">라떼</p>
	         <img src="../../sangpum/image/logo_decaf.png" class="decafimg">
	         <p class="decaf">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</p>
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
		           		if(n==6) break;
	           		 %>
	           		<td align="left">
	        	    <br>
	         	    <br>
	         	    <div class="img">
	          		  <div class="roastimg">
	             		<img alt="라떼이미지" src="../../sangpum/image/latte<%=n %>.jpg" width="360" height="335">
	           		  </div>
	         		</div>
	        		<br>
	        		<!-- db로 저장된 이름 받아오기 -->
	         		<p class=sangpumname>라떼</p>
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
    <!-- 모카 -->
	<div class="mochatb">
		<table class="maintb">
			<tr>
	         <td colspan="3" align="left" style="background-color: #f5f2eb;height: 60px;">
	         <p class="roastname">모카</p>
	         <img src="../../sangpum/image/logo_decaf.png" class="decafimg">
	         <p class="decaf">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</p>
	         </td>
	       </tr>
	       <%
	           int i=0;
	           
	           for(int row=1;row<=2;row++)
	           {
	        	   %>
	        	   <tr>
	        	   <%
	           		for(int col=1;col<=3;col++)
	           		{
		           		i++;
		           		if(i==5) break;
	           		 %>
	           		<td align="left">
	        	    <br>
	         	    <br>
	         	    <div class="img">
	          		  <div class="roastimg">
	             		<img alt="에스프레소이미지" src="../../sangpum/image/mocha<%=i %>.jpg" width="360" height="335">
	           		  </div>
	         		</div>
	        		<br>
	        		<!-- db로 저장된 이름 받아오기 -->
	         		<p class=sangpumname>모카</p>
	         		</td>
	           		
	 	           <%}
	           		%>
	     	       </tr>
	           <%}
	           %>
	     </table>
	</div>
</div>  
</body>
</html>