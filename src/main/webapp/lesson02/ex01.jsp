<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석: 소스 보기에서 보인다 -->
	<%-- JSP 주석: 소스 보기에서 보이지 않는다 --%>
	
<%
	// 자바의 주석
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
%>  <%-- 스크립틀릿(Scriptlet) - 메인 함수 같은 느낌 : 자바 코드 넣는 방법 --%>

<%-- <%= %>: expression java 짧은 변수 등을 나타낼 때 --%>
<b>합계:</b>
<input type="text" value="<%= sum %>"> 
<br>
<%!
	// 선언문 - 클래스 같은 느낌
	// field
	private int num = 100;
	// method
	public String getHelloWorld() {
		return "Hello world";
	}
%>
<%= getHelloWorld() %>
<br>
<%= num + 200 %>


</body>
</html>