<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>doctor join</title>
<style>
.log {
	font-size : 37px;
	color : rgb(68, 114, 196);
	margin-bottom : 50px;
	position:relative;
	left:430px;
	top : 60px;
}
.lTitle {
	font-size : 18px;
	color : rgb(68, 114, 196);
	padding-bottom : 10px;
	padding-left : 50px;

}
.content {
	width : 450px;
	height : 40px;
	box-shadow:none;
	background-color : rgb(240,245,254);
	border : 2px solid rgb(197, 219, 254);
	margin : 0 50px 30px 50px;
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
	top : 60px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<form action="joinProc.jsp" method="post">
<center>
<div class="log"> Join</div>
<input type="hidden" name="div" value="d">
<table width="400px" class="t">
	<tr>
		<td colspan="3" width="200px" class="lTitle">이메일</td>
		<td colspan="3" width="200px" class="lTitle">병원명</td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="email"></td>
		<td colspan="3"><input class="content" type="text" name="hospital"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 비밀번호 </td>
		<td colspan="3" class="lTitle"> 병원 번호 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="password"></td>
		<td colspan="3"><input class="content" type="text" name="htel"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 이름 </td>
		<td colspan="3" class="lTitle"> 학력/자격 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="name"></td>
		<td colspan="3"><input class="content" type="text" name="school"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 생년월일 </td>
		<td colspan="3" class="lTitle"> 전공 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="birth"></td>
		<td colspan="3"><input class="content" type="text" name="major"></td>
	</tr>
	<tr>
		<td colspan="3" class="lTitle"> 번호 </td>
		<td colspan="3" class="lTitle"> 사진 </td>
	</tr>
	<tr>
		<td colspan="3"><input class="content" type="text" name="tel"></td>
		<td colspan="3"><input class="content" type="text" name="picture"></td>
	</tr>
	<tr>
		<td colspan="6" align="center">
 			<input class="input1" type="button" value="회원가입"
 			onclick="location.href='loginForm.jsp'"
 			<%--onclick="location.href='addrModify.jsp?num=<%=abean.getNum() %>'"> --%>>
 		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>