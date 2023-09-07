<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- bootstrap CDN --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
   int number1 = Integer.parseInt(request.getParameter("number1"));
   int number2 = Integer.parseInt(request.getParameter("number2"));
   String type = request.getParameter("type");
%>
   <div class="container">
      <h2>계산 결과</h2>
      <h1>
      <%= number1 %>
      <%
         if (type.equals("+")) {
            type = "+";
         } else if (type.equals("-")) {
            type = "-";;
         } else if (type.equals("*")) {
            type = "X";
         } else if (type.equals("/")) {
            type = "/";
         }
         out.print(type);
      %>
      <%= number2 %> = 
      
      <%
         int result = 0;
         if (type.equals("+")) {
            result = number1 + number2;
         } else if (type.equals("-")) {
            result = number1 - number2;
         } else if (type.equals("X")) {
            result = number1 * number2;
         } else if (type.equals("/")) {
            result = number1 / number2;
         }
         out.print(result);
      %>
      </h1>
   </div>
</body>
</html>