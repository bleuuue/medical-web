<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 확인</title>
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
.in {
	padding-top : 20px;
	height : 28px;
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
	bottom : 803px;
	right : 190px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<jsp:useBean id = "medBean" class="model.medicineBean">
	<jsp:setProperty name="medBean" property="*" />
</jsp:useBean>

<jsp:useBean id="medDao" class="model.medicineDao" scope="application" />

<%
	medDao.insertMed(medBean);
	request.setCharacterEncoding("utf-8");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
%>

<center>
<table class="info" width="1200px">
	<tr>
		<td colspan="2" class="iTitle">상품정보</td>
	</tr>
	<tr>
		<td width="200px" rowspan="2"> <img src="<%=request.getParameter("pic")%>" class="pill"> </td>
		<td class="product"><%=request.getParameter("pname")%></td>
	</tr>
	<tr>
		<td class="money"><%=request.getParameter("sum")%> + 배송비(2500) = <%=request.getParameter("total")%> 원</td>
	</tr>
	<tr>
		<td colspan="2" class="iTitle">주문자 정보</td>
	</tr>
	<tr>
		<td class="content">주문자</td>
		<td class="in"><%=medBean.getOrder()%></td>
	</tr>
	<tr>
		<td class="content">휴대폰 </td>
		<td class="in"><%=medBean.getoTel()%></td>
	</tr>
	<tr>
		<td class="content">이메일</td>
		<td class="in"><%=medBean.getEmail()%></td>
	</tr>
	<tr>
		<td colspan="2" class="iTitle">배송 정보</td>
	</tr>
	<tr>
		<td class="content">주소</td>
		<td class="in"><%=medBean.getAddress()%></td>
	</tr>
	<tr>
		<td class="content">수령인</td>
		<td class="in"><%=medBean.getReceipt()%></td>
	</tr>
	<tr>
		<td class="content">휴대폰</td>
		<td class="in"><%=medBean.getrTel()%></td>
	</tr>
	<tr>
		<td class="content">요청사항</td>
		<td class="in"><%=medBean.getRequest()%></td>
	</tr>
</table>
<div class="buy">
 	<input class="input1" type="button" value="결제하기"
 			<%--onclick="location.href='addrModify.jsp?num=<%=abean.getNum() %>'"> --%>>
 </div>
 <div class="b"><%=pnum%>개</div>
</center>
</body>
</html>