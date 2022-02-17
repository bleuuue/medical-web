<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.pill{
	margin-left : 100px;
	width:300px;
	height : 230px;
}
.info {
	position : relative;
	bottom : 30px;
}
.iTitle {
	padding : 35px 0 10px 20px;
	border-bottom : 2px solid rgb(68, 114, 196);
	font-size : 20px;
	color : rgb(127, 127, 127);
}
.product {
	padding-top : 45px;
	padding-left : 40px;
	font-size : 21px;
	color : rgb(89, 89, 89);
}
.price {
	padding-bottom : 30px;
	padding-left : 40px;
	font-size : 21px;
	color : rgb(89, 89, 89);
}
.money {
	padding-bottom : 30px;
	font-size : 19px;
	font-weight : bold;
}
.pnum {
	padding-bottom : 35px;
	padding-left : 45px;
	color : rgb(127, 127, 127);
	font-size : 19px;
}
.pput{
	width : 100px;
	height : 25px;
	margin-right : 20px;
}
.lline{
	border-left : 1px solid rgb(68, 114, 196);
	width : 300px;
	height : 200px;
	position : relative;
	left : 300px;
	bottom : 230px;
}
.sub {
	position : relative;
	top : 65px;
	width : 150px;
	height : 50px;
	background-color : white;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 19px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<form action="deliverForm.jsp" method="post">
<center>
<%
	request.setCharacterEncoding("utf-8");
%>
<table class="info" width="1200px">
	<tr>
		<td colspan="2" class="iTitle">상품정보</td>
	</tr>
	<tr height="200px">
	</tr>
	<tr>
		<td width="200px" rowspan="4"> <img src="<%=request.getParameter("pic")%>" class="pill">
			<input type="hidden" name="pic" value="<%=request.getParameter("pic")%>"> </td>
	</tr>
	<tr>
		<td class="product">상품명 &nbsp : &nbsp <%=request.getParameter("pname")%>
			<input type="hidden" name="pname" value="<%=request.getParameter("pname")%>"></td>
	</tr>
	<tr>	
		<td class="price">가격 &nbsp : &nbsp<%=request.getParameter("price")%>원
			<input type="hidden" name="price" value="<%=request.getParameter("price")%>"></td>
	</tr>
	<tr>
		<td class="pnum"> <input class="pput" type="text" name="pnum" value="1" onfocus="this.value=''">개 </td>
	</tr>
</table>
<div class="lline">
	<input type="submit" class="sub" value="주문하기">
</div>
</center>
</form>
</body>
</html>