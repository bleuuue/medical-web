<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="wrDao" class="model.writeDao" scope="application" />
<%
	int num = Integer.parseInt(request.getParameter("num"));
	wrDao.wrDelete(num);
	
	response.sendRedirect("writeList.jsp");
%>
</body>
</html>