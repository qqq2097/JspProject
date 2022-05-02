<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Hubballi&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="Resultform.jsp" name="frm" id="frm" method="post" onsubmit="return false;">
	<input type="hidden" name="Coffee_flavor">
	<input type="hidden" name="Coffee_feel">
	<input type="hidden" name="Coffee_strength">
</form>

<script type="text/javascript">
	var i= {
			goSubmit : function (strength) {
				document.frm.Coffee_strength.value= strength;
				document.frm.submit();
			}
			
	}

</script>

</body>
</html>