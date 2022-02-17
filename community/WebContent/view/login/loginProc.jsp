<%@page import="model.loginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="jdao" class="model.loginDao" scope="application" />

<%
String id = request.getParameter("email");
String pwd = request.getParameter("password");
request.setCharacterEncoding("utf-8");

	ArrayList<loginBean> l = jdao.getJoin();
	
	for(int i=0; i<l.size(); i++)
	{
		loginBean jbean = l.get(i);
		
		if((jbean.getEmail()).equals(id)) {
			if((jbean.getPassword()).equals(pwd)) {
				application.setAttribute("id", jbean.getEmail());
				application.setAttribute("name", jbean.getName());
				response.sendRedirect("../main/main.jsp");		
				break;
			}
%>
			<script language=javascript>
			alert("비밀번호가 틀렸습니다.");
			document.location.href="loginForm.jsp"; 
			</script>
<%
			break;
		}
		else{
			if((jbean.getPassword()).equals(pwd)) {
				if(i==l.size()-1) {
%>
					<script language=javascript>
					alert("아이디가 틀렸습니다.");
					document.location.href="loginForm.jsp"; 
					</script>
<%							
					break;
				}
			}
		}
	}
%>
<script language=javascript>
alert("아이디와 비밀번호가 틀렸습니다");
document.location.href="loginForm.jsp"; 
</script>
</body>
</html>