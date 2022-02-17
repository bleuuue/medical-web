<%@page import="model.writeBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
<style>
body {
	margin:0;
}
.info {
	margin-top : 100px;
	border-collapse: collapse;
	border : none;
}
.lineT {
	border-top : 1px solid rgb(217,217,217)
}
.lineB{
	border-bottom : 1px solid rgb(217,217,217)
}
.lineL{
	border-left : 1px solid rgb(217,217,217)
}
.lineR{
	border-right : 1px solid rgb(217,217,217)
}
.q {
	font-size:35px;
	color : rgb(68, 114, 196);
	text-align : center;
	margin:0;
	padding:0;
}
.cTitle {
	font-size:23px;
	font-weight:bold;
}
.content {
	padding-left : 30px;
	font-size : 20px;
}
.date {
	padding-left : 30px;
	font-size : 16px;
	color : rgb(166, 166, 166);
	
}
.writer {
	font-size : 16px;
	color : rgb(166, 166, 166);
	}
.back {
	background-color : rgb(242,242,242);
	padding : 30px;
}
.pad {
	padding-left : 10px;
}
.res {
	color : rgb(127, 127, 127);
	font-size : 18px;
}
.tback {
	border : none;
	background-color : white;
}
.aback {
	background-color : rgb(242,242,242);
	border : none;
}
.res {
	margin-left : 30px;
	aling : center;
	border : none;
	padding-left : 10px;
	width : 1000px;
	height : 350px;
}
.input1{
	background-color : white;
	width : 80px;
	height : 40px;
	box-shadow:none;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 17px;
	position : relative;
	bottom : 60px;
	left : 480px;
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
<form action = "resProc.jsp" method="post">
<table class="info" width="1300px">
	<tr class="lineT" height="80px">
		<td class="q lineL" width="8px"> Q </td>
		<td class="cTitle" width="270px"> <%=wrBean.getTitle()%> </td>
 		<td class="writer" width="25px"> 작성자 : </td>
 		<td class="lineR writer" width="40px"> <%=wrBean.getWriter()%> </td>
 	</tr>
 	<tr height="270px">
 		<td class="content lineL lineR" colspan="4" width="500px"> <%=wrBean.getContent() %> </td>
 	</tr>
 	<tr height="50px">
 		<td class="date lineL lineR lineB" colspan="4" width="40px">
 		<%=wrBean.getDate() %>&nbsp &nbsp
 		조회수 12
 		</td>
 	</tr>
</table>
<div class="back">
	<table width="1100px" class="tback">
		<tr height="400px">
			<td class="pad content"> <input type="text" class="res" name="res" value="내용을 입력하세요"
			 onfocus="this.value=''"> </td>
		</tr>
	</table>
	<div class="reply">
	 	<input class="input1" type="submit" value="답변하기">
	 	</div>
	 </div>	
	 <input type="hidden" value="<%=(String)application.getAttribute("id")%>" name="resId">
	 <input type="hidden" value="<%=num%>" name="num">
<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yy-MM-dd");
	String strdate = simpleDate.format(date);
%>
<input type="hidden" name="resDate" value="<%=strdate%>">
</form>
</center>
</body>
</html>