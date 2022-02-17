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
request.setCharacterEncoding("utf-8");


String sick = request.getParameter("sick");
String search = request.getParameter("search");

application.setAttribute("sick", sick);
application.setAttribute("search", search);

response.sendRedirect("search.jsp");
%>
</body>
</html>