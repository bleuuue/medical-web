<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.up {
	position: relative;
	top : 150px;
	width : 400px;
	height : 580px;
	border : 1px solid rgb(68, 114, 196);;
	z-index : 1;
}
.log {
	font-size : 37px;
	color : rgb(68, 114, 196);
	margin-bottom : 160px;
	position : relative;
	left : 50px;
	top : 60px;
}
.grid {
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 19px;
	width : 250px;
	height : 40px;
	text-align : center;
	z-index : 3
}
.t {
	position : relative;
	top : 20px;
}
.te{
	font-size : 20px;
	color : rgb(68, 114, 196);
	padding-left : 25px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<center>
<div class="up">
<div class="log"> Logout </div>
	<table class="t">
	<tr>
		<td class="te">로그아웃 하시겠습니까</td>
	</tr>
	<tr>
		<td border="none" height ="200px"></td>
	</tr>
	<tr>
		<td class="grid" onclick="location.href='logoutProc.jsp'">로그아웃</td>
	</tr>
</table>
</div>
</center>
</body>
</html>