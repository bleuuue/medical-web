<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
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
<center>
<form action="writeProc.jsp" method="post">
<table border="1" class="write">
	<tr height="35px">
	<td width="1000px">
	<select name="sick">
		<option selected> 카테고리 </option>
  		<option> 두통 </option>
  		<option> 복통 </option>
  		<option> 치통 </option>
  		<option> 기타 </option>
 	</select> </td>
	</tr>
	<tr height="35px">
	<td width="1000px">
	<input type="text" class="content" style="height:35px; width:1000px" value="제목" name="title" onfocus="this.value=''">
	</td>
	</tr>
	<tr height="500px">
	<td width="1000px">
	<input type="text" class="content" style="height:500px; width:1000px" value="내용을 입력하세요" name="content" onfocus="this.value=''">
	</td>
	</tr>
</table>
<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yy-MM-dd");
	String strdate = simpleDate.format(date);
%>
<input type="hidden" name="writer" value="<%=(String)application.getAttribute("id")%>">
	<input type="hidden" name="date" value="<%=strdate%>">
<input type="submit" class="submit" value="등록">
</form>
</center>
</body>
</html>