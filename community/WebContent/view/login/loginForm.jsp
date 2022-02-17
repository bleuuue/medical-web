<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
.log {
	font-size : 37px;
	color : rgb(68, 114, 196);
	margin-bottom : 80px;
	position : relative;
	left : 100px;
	top : 60px;
}
.up {
	position: relative;
	top : 150px;
	width : 600px;
	height : 580px;
	border : 1px solid rgb(68, 114, 196);;
	z-index : 1;
}
.lTitle {
	font-size : 18px;
	color : rgb(68, 114, 196);
	padding-bottom : 10px;


}
.radio {
	color : white;
	padding-bottom : 20px;
	padding-left : 25px;
}
.content {
	width : 400px;
	height : 40px;
	box-shadow:none;
	background-color : rgb(240,245,254);
	border : 2px solid rgb(197, 219, 254);
	margin-bottom : 35px;
	opacity : 65%;
	padding-left : 10px;
}
.join {
	font-size : 15px;
	color : rgb(68, 114, 196);
	position : relative;
	bottom : 100px;
	z-index : 3;
}
.input1{
	background-color : white;
	width:200px;
	height : 40px;
	box-shadow:none;
	margin-top : 80px;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 17px;
	z-index : 3;
}
.t {
	position : relative;
	top : 30px;
	z-index : 3;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<form action="loginProc.jsp" method="post">
<center>
<div class="up" border="1">
<div class="log"> Login</div>
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
		<td colspan="3" align="center">
 			<input class="input1" type="submit" value="로그인">
 		</td>
	</tr>
</table>
<div class="join" onclick="location.href='selectJ.jsp'"> 회원가입 </div>
</div>
</center>
</form>
</body>
</html>