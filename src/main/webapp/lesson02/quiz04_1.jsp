<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz 04 결과</title>
<%-- bootstrap CDN --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
	int centimeter = Integer.valueOf(request.getParameter("centimeter"));
	String[] types = request.getParameterValues("type");
%>
	<div class="container">
		<h1>길이 변환 결과</h1>
			<h2><%= centimeter %>cm</h2>
			<hr>
		<h2>
		<%
			if (types != null) {
				for (String type : types) {
					if (type.equals("inch")) {
						double inch = centimeter * 2.54;
						out.print(inch + " in<br>");
					} else if (type.equals("yard")) {
						double yard = centimeter * 91.44;
						out.print(yard + " yd<br>");
					} else if (type.equals("feet")) {
						double feet = centimeter * 30.48;
						out.print(feet + " ft<br>");
					} else if (type.equals("meter")){
						double meter = centimeter * 100;
						out.print(meter + " m<br>");
					}
				}
			}
		%>
		</h2>
	</div>

</body>
</html>