<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>normal join</title>
<style>
.log {
	font-size : 37px;
	color : rgb(68, 114, 196);
	margin-bottom : 50px;
	position : relative;
	top : 50px;
	left : 430px;
}
.lTitle {
	font-size : 18px;
	color : rgb(68, 114, 196);
	padding-bottom : 10px;

}
.content {
	width : 450px;
	height : 40px;
	box-shadow:none;
	background-color : rgb(240,245,254);
	border : 2px solid rgb(197, 219, 254);
	margin-bottom : 30px;
	opacity : 65%;
	padding-left : 10px;
}
.input1{
	background-color : white;
	width:200px;
	height : 40px;
	box-shadow:none;
	margin-top : 40px;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 17px;
}
.t {
	position : relative;
	top : 50px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<form action="joinProc.jsp" method="post">
<center>
<div class="log"> Join</div>
<input type="hidden" name="div" value="n">
<table width="400px" class="t">
	<tr>
		<td width="200px" class="lTitle">아이디</td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="email"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 비밀번호 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="password"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 이름 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="name"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 생년월일 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="birth"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 번호 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="tel"></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
 			<input class="input1" type="submit" value="회원가입"
 			onclick="location.href='loginForm.jsp'">
 		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>