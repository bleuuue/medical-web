<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap');
body {
	margin:0;
}
header {
	height : 43px;
	font-family : 'Noto Sans KR', sans-serif;
}
.title
{
	margin : 0px;
	font-size : 20px;
	background-color : rgb(68,114,196);
	height : 63px;
	color : white;
}
.top {
	position : relative;
	top : 8px;
	left : 10px;
}
.right
{
	position : relative;
	top : -45px;
	float:right;
	margin-right : 20px;
	text-align : right;
	font-size : 18px;
	color : white;
}
.login
{
	color : rgb(0,32,96);
	font-weight : bold;
}
.ta{
	position : relative;
	bottom : 4px;
}
.sq {
	width : 20px;
	height : 20px;
	background-color : white;
	border : none;
	color : rgb(68,114,196);
	padding : 17px 5px 5px 18px;
	float : top;
	margin-left  : 30px;
	font-family : '바탕';
	font-weight : bold;
	font-size : 24px;
}
.com {
	position : relative;
	left : 63px;
	bottom : 36px;
	font-family : '바탕';
	font-weight : bold;
	font-size : 24px;
}
</style>
</head>
<body>
	<header>
	<div class="title">
	<table class="top">
		<tr onclick="location.href='../main/main.jsp'">
			<div class="sq">의</div>
			<td class="com">사 소통</td>
		</tr>
	</table>
	</div>
	<div class="right">
	<table class="ta">
		<tr>
		<td width="170" onclick="location.href='../treat/writeList.jsp'">진단받기</td>
		<td width="170">진료하기</td>
		<td width="170" onclick="location.href='../medicine/medicine.jsp'">처방받기</td>
		<td width="170" onclick="location.href='../my/myPage.jsp'">건강기록</td>
<%		
		request.setCharacterEncoding("utf-8");

		String name = (String)application.getAttribute("name");
		if(name!=null && !name.equals("guest")){
%>
			<td class="login" width="140" onclick="location.href='../login/logout.jsp'"> <%=name%> 님 </td>
<%
		}
		else{
%>
		<td class="login" width="140" onclick="location.href='../login/loginForm.jsp'">Login</td>
<%
		}
%>
		</tr>
	</table>
	</div>
	</header>
</body>
</html>