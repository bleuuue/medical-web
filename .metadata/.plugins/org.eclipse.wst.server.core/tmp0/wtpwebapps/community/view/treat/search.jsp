<%@page import="model.writeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sickList</title>
<style>
.list {
	border-collapse: collapse;
	bordr : 0;
	border-bottom : 1px solid rgb(200,200,200);
}
.listT {
	font-size : 17px;
	background-color : rgb(242,242,242);
	color : rgb(89,89,89);
	border : 0;
	border-top : 1px solid rgb(200,200,200);
	border-bottom : 1px solid rgb(200,200,200);
}
.submit{
	position : relative;
	top : 250px;
	left : 1110px;
	background-color : white;
	width : 110px;
	height : 40px;
	box-shadow:none;
	border : 1px solid rgb(68, 114, 196);
	color : rgb(68, 114, 196);
	font-size : 16px;
}
.car{
	position : relative;
	top : 218px;
	right : 270px;
	height : 33px;
	width : 100px;
}
.search {
	background-color : white;
	border : 1px solid rgb(68, 114, 196);
	box-shadow:none;
	color : rgb(68, 114, 196);
	height : 30px;
	width : 60px;
	margin-left : 15px;
}
.inp {
	height : 27px;
	width : 120px;
}
.s {
	position : relative;
	top : 185px;
	right : 545px;
	width : 250px;
}
.lineB{
	border-bottom : 1px solid rgb(242,242,242);
}
a:visited { color: black; text-decoration: none;}
a:link { color: black; text-decoration: none;}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<center>
<input type="button" class="submit" value="작성하기"
onclick="location.href='write.jsp'">

<form action="searchProc.jsp" method="post">
	<select class="car" name="sick">
		<option selected> 카테고리 </option>
  		<option> 두통 </option>
  		<option> 복통 </option>
  		<option> 치통 </option>
  		<option> 기타 </option>
 	</select>

 <div class="s">
 	<input class="inp" type="text" name="search" value="내용" onfocus="this.value=''">
	<input class="search" type="submit" name="sbutton" value="검색">
 </div>
 </form>
 
<table class="list" width="1500">
	<tr>
		<td height="200px"></td>
	</tr>
	<tr class="listT" height = "43px" align="center">
	<td width="20px"> No </td>
	<td width="170px"> 제목 </td>
	<td width="70px"> 작성자 </td>
	<td width="40px"> 조회수 </td>
	<td width="40px"> 답변수 </td>
	<td width="50px"> 작성일 </td>
	</tr>

<jsp:useBean id="wrDao" class="model.writeDao" scope="application" />
<%
	String sick = (String)application.getAttribute("sick");
	String search = (String)application.getAttribute("search");
	ArrayList<writeBean> wr = wrDao.getWrite();
	
	for(int i=0; i<wr.size(); i++)
	{
		writeBean wrBean = wr.get(i);
		if(sick.equals("카테고리")){
			if((wrBean.getTitle()).equals(search)
				|| (wrBean.getWriter()).equals(search)
				|| (wrBean.getDate()).equals(search))
			{
				%>
				<tr height="50px" align="center">
			 		<td class="lineB" width="20px"> <%= wrBean.getNum() %> </td>
			 		<td class="lineB" width="170px">
			 			<a href="writeInfo.jsp?num=<%=wrBean.getNum()%>">
			 			<%= wrBean.getTitle() %></a> </td>
			 		<td class="lineB" width="70px"> <%= wrBean.getWriter()%> </td>
			 		<td class="lineB" width="40px"> 12 </td>
			 		<td class="lineB" width="40px"> 2 </td>
			 		<td class="lineB" width="5px"> <%=wrBean.getDate() %> </td>
			 	</tr>
			 <%		
			}
		}
		else if((wrBean.getSick()).equals(sick)
				|| (wrBean.getTitle()).equals(search)
				|| (wrBean.getWriter()).equals(search)
				|| (wrBean.getDate()).equals(search)) {
		%>
		<tr height="50px" align="center">
	 		<td class="lineB" width="20px"> <%= wrBean.getNum() %> </td>
	 		<td class="lineB" width="170px">
	 			<a href="writeInfo.jsp?num=<%=wrBean.getNum()%>">
	 			<%= wrBean.getTitle() %></a> </td>
	 		<td class="lineB" width="70px"> <%= wrBean.getWriter()%> </td>
	 		<td class="lineB" width="40px"> 12 </td>
	 		<td class="lineB" width="40px"> 2 </td>
	 		<td class="lineB" width="5px"> <%=wrBean.getDate() %> </td>
	 	</tr>
	 <%		
		}
	}
 %>
</table>
</center>
</body>
</html>