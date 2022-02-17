<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pill</title>
<style>
.pic{
	position : relative;
	bottom : 33px;
}
.pill {
	height : 150px;
	width : 250px;
}
.pname{
	text-align : center;
	font-size : 18px;
	font-weight : bold;
	color : rgb(127, 127, 127);
}
.pinfo{
	font-size : 15px;
	text-align : center;
	color : rgb(127, 127, 127)
}
.buy{
	display : inline-block;
	margin : 0 55px 0 55px;
}
.input1{
	background-color : white;
	width : 250px;
	height : 40px;
	box-shadow:none;
	border : 1px solid red;
	color : red;
	font-size : 17px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<img src="../img/pill.png" class="pic" style="max-width:100%; height:auto;">
<center>
<% request.setCharacterEncoding("utf-8"); %>
<table>
	<tr height = "200px">
		<td width="360px" align="center">
			<img src="../img/easy.PNG" class="pill">
		</td>
		<td width="360px" align="center">
			<img src="../img/tylenol.PNG" class="pill">
		</td>
		<td width="360px" align="center">
			<img src="../img/tenten.png" class="pill">
		</td>
		<td width="360px" align="center">
			<img src="../img/hoosi.PNG" class="pill">
		</td>
	</tr>
	<tr height="20px">
		<td class="pname"> 이지엔6 이브
		</td>
		<td  class="pname"> 타이레놀
		</td>
		<td  class="pname"> 텐텐
		</td>
		<td  class="pname"> 후시딘
		</td>
	</tr>
	<tr height="60px">
		<td class="pinfo"> 진통제
		</td>
		<td  class="pinfo"> 진통제
		</td>
		<td  class="pinfo"> 성장, 발육
		</td>
		<td  class="pinfo"> 상처 연고
		</td>
	</tr>
</table>
<div class="buy">
 	<input class="input1" type="submit" value="구매하기"
 		onclick="location.href='medicineSel.jsp?pname=이지엔6 이브&price=3500&pic=../img/easy.PNG'">
 </div>
 <div class="buy">
 	<input class="input1" type="button" value="구매하기"
 		onclick="location.href='medicineSel.jsp?pname=타이레놀&price=3000&pic=../img/tylenol.PNG'">
 </div>
 <div class="buy">
 	<input class="input1" type="button" value="구매하기"
 		onclick="location.href='medicineSel.jsp?pname=텐텐&price=20000&pic=../img/tenten.png'">
 </div>
 <div class="buy">
 	<input class="input1" type="button" value="구매하기"
 		onclick="location.href='medicineSel.jsp?pname=후시딘&price=3500&pic=../img/hoosi.PNG'">
 </div>
</center>
</body>
</html>