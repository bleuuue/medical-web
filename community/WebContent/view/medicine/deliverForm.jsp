<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
<style>
.pill{
	width:250px;
	height : 180px;
}
.info {
	margin:0;
	position : relative;
	bottom : 30px;
}
.iTitle {
	padding : 35px 0 10px 20px;
	border-bottom : 2px solid rgb(68, 114, 196);
	font-size : 20px;
	color : rgb(127, 127, 127);
}
.content {
	padding : 30px 0 10px 155px;
	font-size : 17px;
	color : rgb(64,64,64);
}
.product {
	padding-top : 50px;
	font-size : 20px;
	font-weight : bold;
}
.money {
	padding-bottom : 40px;
	font-size : 19px;
	color : red;
}
input {
	margin-top : 20px;
	height : 28px;
	border : 1px solid rgb(191,191,191);
}
.buy {
	position : relative;
	bottom : 80px;
	left : 500px;
	width : 100px;
}
.input1{
	background-color : white;
	width : 150px;
	height : 40px;
	box-shadow:none;
	border : 1px solid rgb(68, 114, 196);
	color :  rgb(68, 114, 196);
	font-size : 17px;
}
.b {
	position : relative;
	bottom : 823px;
	right : 190px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<form action="deliverProc.jsp" method="post">
<center>
<%
	request.setCharacterEncoding("utf-8");
	int price = Integer.parseInt(request.getParameter("price"));
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	int sum = price*pnum;
	int total = sum+2500;
%>
<table class="info" width="1200px">
	<tr>
		<td colspan="2" class="iTitle">상품정보</td>
	</tr>
	<tr>
		<td width="200px" rowspan="2"> <img src="<%=request.getParameter("pic")%>" class="pill">
		<input type="hidden" name="pic" value="<%=request.getParameter("pic")%>"> </td>
		<td class="product"><%=request.getParameter("pname")%>
		<input type="hidden" name="pname" value="<%=request.getParameter("pname")%>"></td>
	</tr>
	<tr>
		<td class="money"><%=sum%> + 배송비(2500) = <%=total%> 원
		<input type="hidden" name="sum" value="<%=sum%>">
		<input type="hidden" name="total" value="<%=total%>"></td>
	</tr>
	<tr>
		<td colspan="2" class="iTitle">주문자 정보</td>
	</tr>
	<tr>
		<td class="content">주문자</td>
		<td> <input type="text" name="order" size="10"></td>
	</tr>
	<tr>
		<td class="content">휴대폰 </td>
		<td> <input type="text" name="oTel" size="20"></td>
	</tr>
	<tr>
		<td class="content">이메일</td>
		<td> <input type="text" name="email" size="30"></td>
	</tr>
	<tr>
		<td colspan="2" class="iTitle">배송 정보</td>
	</tr>
	<tr>
		<td class="content">주소</td>
		<td> <input type="text" name="address" size="70"></td>
	</tr>
	<tr>
		<td class="content">수령인</td>
		<td> <input type="text" name="receipt" size="10"></td>
	</tr>
	<tr>
		<td class="content">휴대폰</td>
		<td> <input type="text" name="rTel" size="20"></td>
	</tr>
	<tr>
		<td class="content">요청사항</td>
		<td> <input type="text" name="request" size="40"></td>
	</tr>
</table>
<div class="buy">
 	<input class="input1" type="submit" value="주문하기">
 </div>
 <div class="b"><%=pnum%>개
 <input type="hidden" name="pnum" value="<%=pnum%>"></div>
<input type="hidden" name="orderId" value="<%=(String)application.getAttribute("id")%>">
</center>
</form>
</body>
</html>