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
%>

<jsp:useBean id="jbean" class="model.loginBean">
	<jsp:setProperty name="jbean" property="*" />
</jsp:useBean>

<jsp:useBean id="jdao" class="model.loginDao" scope="application" />
<%
	jdao.insertJoin(jbean);
	response.sendRedirect("loginForm.jsp");	
%>

</body>
</html>