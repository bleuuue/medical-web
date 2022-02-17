<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select Join</title>
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
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<center>
<div class="up">
<div class="log"> Join </div>
<table class="t">
	<tr>
		<td class="grid" onclick="location.href='normal.jsp'">일반 회원</td>
	</tr>
	<tr>
		<td border="none" height ="100px"></td>
	</tr>
	<tr>
		<td class="grid" onclick="location.href='doctor.jsp'">의사 회원</td>
	</tr>
</table>
</div>
</center>
</body>
</html>