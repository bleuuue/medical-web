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

<jsp:useBean id="wrBean" class="model.writeBean">
	<jsp:setProperty name="wrBean" property="*" />
</jsp:useBean>

<jsp:useBean id="wrDao" class="model.writeDao" scope="application" />
<%
	int num = Integer.parseInt(request.getParameter("num"));
	wrDao.wrModify(wrBean, num);
	response.sendRedirect("writeInfo.jsp?num="+num);
%>
</body>
</html>