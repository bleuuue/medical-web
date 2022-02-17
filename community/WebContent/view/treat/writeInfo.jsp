<%@page import="java.util.ArrayList"%>
<%@page import="model.writeBean"%>
<%@page import="model.replyBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
<style>
body {
	margin:0;
}
.info {
	margin-top : 150px;
	border-collapse: collapse;
	border : none;
}
.lineT {
	border-top : 1px solid rgb(217,217,217);
}
.lineB{
	border-bottom : 1px solid rgb(217,217,217);
}
.lineL{
	border-left : 1px solid rgb(217,217,217);
}
.lineR{
	border-right : 1px solid rgb(217,217,217);
}
.q {
	font-size:35px;
	color : rgb(68, 114, 196);
	text-align : center;
	margin:0;
	padding:0;
}
.cTitle {
	font-size:23px;
	font-weight:bold;
}
.content {
	padding-left : 30px;
	font-size : 20px;
}
.date {
	padding-left : 30px;
	font-size : 16px;
	color : rgb(166, 166, 166);
	
}
.writer {
	font-size : 16px;
	color : rgb(166, 166, 166);
	}
.modify {
	display:inline-block;
	width : 100px;
	height : 20px;
	position : relative;
	bottom : 70px;
	left : 477px;
}
.input1{
	background-color : white;
	width : 100px;
	height : 40px;
	box-shadow:none;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 17px;
}
.reply {
	width : 230px;
	height : 20px;
	position : relative;
	bottom : 60px;
	left : 570px;
}
.back {
	background-color : rgb(242,242,242);
	padding : 30px;
}
.pad {
	padding-left : 10px;
}
.res {
	color : rgb(127, 127, 127);
	font-size : 18px;
	padding-top : 20px;
	padding-bottom : 20px;
	border-left : none;
}
.tback {
	border : none;
	background-color : white;
}
.aback {
	background-color : rgb(242,242,242);
	border : none;
}
.q {
	font-size:35px;
	color : rgb(68, 114, 196);
	text-align : center;
	margin:0;
	padding:0;
}
.cTitle {
	font-size:23px;
	font-weight:bold;
}
.Rcontent {
	padding-left : 30px;
	font-size : 20px;
	height : 200px;
}
.da {
	color : rgb(127,127,127);
	padding-left : 20px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<jsp:useBean id="wrDao" class="model.writeDao" scope="application" />
<jsp:useBean id="reDao" class="model.replyDao" scope="application" />

<%
	int num = Integer.parseInt(request.getParameter("num"));
	writeBean wrBean = wrDao.getWriteOne(num);
	
	ArrayList<replyBean> re = reDao.getReply();
%>

<center>
<table class="info" width="1300px">
	<tr class="lineT" height="80px">
		<td class="q lineL" width="8px"> Q </td>
		<td class="cTitle" width="290px"> <%=wrBean.getTitle()%> </td>
 		<td class="writer" width="20px"> 작성자 : </td>
 		<td class="lineR writer" width="30px"> <%=wrBean.getWriter() %> </td>
 	</tr>
 	<tr height="340px">
 		<td class="content lineL lineR" colspan="4" width="500px"> <%=wrBean.getContent() %> </td>
 	</tr>
 	<tr height="90px">
 		<td class="date lineL lineR lineB" colspan="4" width="700px">
 		<%=wrBean.getDate()%>&nbsp&nbsp
 		조회수 <%=wrBean.getLook() %>
 		</td>
 	</tr>
 	</table>
 <%
 	String nWriter = (String)application.getAttribute("id");
 	if((wrBean.getWriter()).equals(nWriter)) {
 %>
	 	<div class="modify">
	 	<input class="input1" type="button" value="수정"
	 			onclick="location.href='writeModify.jsp?num=<%=wrBean.getNum()%>'">
	 	</div>
	 	<div class="modify">
	 	<input class="input1" type="button" value="삭제"
	 			onclick="location.href='writeDelete.jsp?num=<%=wrBean.getNum() %>'">
	 	</div>
<%
	 }
 	else {
%>
 		<div class="reply">
	 	<input class="input1" type="button" value="답변하기"
	 	onclick="location.href='../response/writeRes.jsp?num=<%=wrBean.getNum() %>'">
	 	</div>
	 	
<%
 	}
	int k=0;
	int o=0;
	int look = wrBean.getLook();
	look++;
	wrBean.setLook(look);
	
	for(int i=0; i<re.size(); i++)
	{
		replyBean reBean = re.get(i);
 		if(wrBean.getNum() == reBean.getNum())
 		{
 			o++;
 		}
	}
	wrBean.setrNum(o);
	
 	for(int i=0; i<re.size(); i++)
 	{	
 		replyBean reBean = re.get(i);
 		if(wrBean.getNum() == reBean.getNum())
 		{
 			if(k==0)
 			{
%>
 			<div class="back">
 			<table width="1100px">
 				<tr height="85px">
 					<td class="q aback" width="50px"> A </td>
 					<td class="cTitle aback" width="930px"> <%=o%>개 </td>
 					<td class="aback"></td>
 				</tr>
 <%
				k++;
 			}
 %>
 				<tr height="50px">
 					<td class="pad res lineB tback" colspan="2"> <%=reBean.getResId() %> 님 답변 </td>
 					<td class="tback da"> <%=reBean.getResDate() %></td>
 				</tr>
 				<tr height="70px">
 					<td class="pad Rcontent tback" colspan="3"> <%=reBean.getRes() %> </td>
 				</tr>
 				<tr class="aback" height="50px">
					<td colspan="3">
					</td>
				</tr>
 				
 <%
 		}
 		
 	}
 %>
</table>
</center>
</body>
</html>