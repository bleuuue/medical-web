<%@page import="model.writeBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	margin:0;
}
.content {
	margin-left : 5px;
	border:none;
	box-shadow: none;
	padding-left : 10px;
}
.write {
	margin-top : 120px;
	 border-collapse: collapse;
	 border-color : rgb(200,200,200);
	 padding-left : 10px;
}
select {
	border:none;
}
.submit{
	position : relative;
	bottom : 620px;
	left : 475px;
	background-color : white;
	width : 60px;
	height : 35px;
	box-shadow:none;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196)
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:useBean id="wrDao" class="model.writeDao" scope="application" />

<%
	int num = Integer.parseInt(request.getParameter("num"));
	writeBean wrBean = wrDao.getWriteOne(num);
%>
<center>
<form action="writeModifyProc.jsp" method="post">
<table border="1" class="write">
	<tr height="35px">
	<td width="1000px">
	<select name="sick">
		<option <%if((wrBean.getSick()).equals("카테고리")){ %> selected<%}%>> 카테고리 </option>
  		<option <%if((wrBean.getSick()).equals("두통")){ %> selected<%}%>> 두통 </option>
  		<option <%if((wrBean.getSick()).equals("복통")){ %> selected<%}%>> 복통 </option>
  		<option <%if((wrBean.getSick()).equals("치통")){ %> selected<%}%>> 치통 </option>
  		<option <%if((wrBean.getSick()).equals("기타")){ %> selected<%}%>> 기타 </option>
 	</select> </td>
	</tr>
	<tr height="35px">
	<td width="1000px">
	<input type="text" class="content" style="height:35px; width:1000px"
		value="<%=wrBean.getTitle() %>" name="title" onfocus="this.value=''">
	</td>
	</tr>
	<tr height="500px">
	<td width="1000px">
	<input type="text" class="content" style="height:500px; width:1000px"
	value="<%=wrBean.getContent() %>" name="content" onfocus="this.value=''">
	</td>
	</tr>
</table>
<input type="submit" class="submit" value="저장">
<input type="hidden" name="num" value="<%=wrBean.getNum()%>">
</form>
</body>
</html>