<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<style>
.button
{
	display:inline-block;
	width:190px;
	height : 70px;
	position:relative;
	bottom : 100px;
	left : 537px;
	color : white;
	text-align : center;
	font-size : 25px;
	padding-top : 40px;
}
.div1{
	background-color : rgb(32,56,100);
}
.div2{
	background-color : rgb(47,85,151);
}
.treat{
	position : relative;
	bottom : 35px;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<img src="../img/treat.png" class="treat" style="max-width:100%; height:auto;">
	<div class="button div1">진료하기</div>
	<div class="button div2" style="float:left;" onclick="location.href='../treat/write.jsp'">진단받기</div>
<%
	String name = (String)application.getAttribute("name");
	if(name==null)
	{
		application.setAttribute("id", "guest");
		application.setAttribute("name", "guest");
	}
	System.out.println(name);
%>
</body>
</html>