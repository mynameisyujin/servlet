<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

<%-- quiz 01 선언문으로 합계 구하기 --%>
<%!
	// field
	// method
	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n ; i++) {
			sum += i;
		}
		return sum;
	}
%>
<h2>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h2>

<%-- quiz 02 --%>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	double average = sum / (double)scores.length;
%>
<b>평균 점수는 <%= average %>점 입니다.</b>
<br>

<%-- quiz 03 --%>
<%
	List<String> scoreList = Arrays.asList
	(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int sum2 = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			sum2 += 100 / scoreList.size();
		} else {
			continue;
		}
	}
%>
<b>채점 결과는 <%= sum2 %>점 입니다.</b>
<br>


<%-- quiz 04 --%>
<%
	String birthDay = "20010820";
	String year = birthDay.substring(0, 4);
	int age = (2023 - Integer.valueOf(year));

%>
<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
<br>




</body>
</html>