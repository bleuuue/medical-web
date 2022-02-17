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

<jsp:useBean id="reBean" class="model.replyBean">
	<jsp:setProperty name="reBean" property="*" />
</jsp:useBean>

<jsp:useBean id="reDao" class="model.replyDao" scope="application" />
<%
	reDao.insertReply(reBean);

	int num=Integer.parseInt(request.getParameter("num"));
	response.sendRedirect("../treat/writeInfo.jsp?num="+num);
%>
</body>
</html>