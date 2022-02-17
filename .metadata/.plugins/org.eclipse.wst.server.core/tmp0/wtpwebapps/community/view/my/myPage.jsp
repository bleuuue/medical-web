<%@page import="java.util.ArrayList"%>
<%@page import="model.writeBean"%>
<%@page import="model.replyBean"%>
<%@page import="model.medicineBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my Page</title>
<style>
.mytable{
	margin-top : 70px;
	border-collapse: collapse;
	bordr : 0;
}
.myname{
	font-size : 30px;
	color : rgb(68, 114, 196);
	padding-left : 30px;
	font-weight : bold;
}
.myid{
	font-size : 25px;
	color : rgb(68, 114, 196);
	position : relative;
	top : 139px;
	right : 30px;
}
.myinfo{
	font-size : 18px;
	color : rgb(127,127,127);
	padding-left : 30px;
	padding-top : 20px;
}
.tab {
	width : 400px;
	text-align : center;
	font-size : 20px;
	padding-top : 13px;
	padding-bottom : 13px;
}
.lineT {
	border-top : 1px solid rgb(68, 114, 196);
}
.lineB{
	border-bottom : 1px solid rgb(68, 114, 196);
}
.lineL{
	border-left : 1px solid rgb(68, 114, 196);
}
.lineR{
	border-right : 1px solid rgb(68, 114, 196);
}
.linet {
	border-top : 1px solid rgb(217,217,217);
}
.lineb{
	border-bottom : 1px solid rgb(217,217,217);;
}
.linel{
	border-left : 1px solid rgb(217,217,217);
}
.liner{
	border-right : 1px solid rgb(217,217,217);
}
</style>
</head>
<body>
<%!	
	int w;
	public int post() {
		int w=1;
		return w;
	}
		
%>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:useBean id="wrDao" class="model.writeDao" scope="application" />
<jsp:useBean id="reDao" class="model.replyDao" scope="application" />
<jsp:useBean id="medDao" class="model.medicineDao" scope="application" />
<%
	ArrayList<writeBean> wr = wrDao.getWrite();
	ArrayList<replyBean> re = reDao.getReply();
	ArrayList<medicineBean> med = medDao.getMed();
	String id = (String)application.getAttribute("id");
%>
<center>
<table width="1200px" class="mytable">
	<tr height="100px" class="lineT">
		<td class="myname lineL lineR" colspan="3"><%=(String)application.getAttribute("name")%></td>
		<div class="myid">( <%=(String)application.getAttribute("id")%> )</div>
	</tr>
	<tr>
		<td class="myinfo lineL lineR" colspan="3"> 나의 글 수 : 1개 </td>
	</tr>
	<tr>
		<td class="myinfo lineL lineR" colspan="3"> 나의 답변 수 </td>
	</tr>
	<tr>
		<td class="myinfo lineL lineR" colspan="3"> 나의 주문 수 </td>
	</tr>
	<tr height="70px">
		<td colspan="3" class="lineL lineR"></td>
	</tr>
	<tr>
		<td class="tab lineL lineT lineB lineR" onclick="<%post();%>"> 글</td>
		<td class="tab lineT lineB lineR" onclick="comment()">답변</td>
		<td class="tab lineR lineT lineB" onclick="order()">주문</td>
	</tr>
	<tr height="350px">
		<td colspan="3" class="lineL lineB lineR"></td>
	</tr>
</table>

<%
if(w==1) {
	for(int i=0; i<wr.size(); i++)
	{
		writeBean wrBean = wr.get(i);
		if((wrBean.getWriter()).equals(id)){
%>
			<table width="900">
				<tr>
					<td class="linet linel" width="750" rowspan="2"><%=wrBean.getTitle()%></td>
					<td class="linet liner">조회수 <%=wrBean.getLook()%></td>
				</tr>
				<tr>
					<td class="liner">답변수 <%=wrBean.getrNum()%></td>
				</tr>
				<tr>
					<td class="linel liner" height="100px" colspan="2"><%=wrBean.getContent()%></td>
				</tr>
				<tr>
					<td class="linel lineb linercolspan="2"><%=wrBean.getDate()%>날짜</td>
				</tr>
			</table>
<%
			}
		}
}
%>
</script>
</center>
</body>
</html>