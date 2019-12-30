<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
<% session.setAttribute("studentName", request.getParameter("studentName")); %>
	<form action="page4.jsp" >

	<%-- StudentNo :
	<%=request.getParameter("studentNo") %>
	<br>
	StudentName	:
	<%=request.getParameter("studentName") %> --%>
	<br>
	<%-- <input type="hidden" name="studentNo" value="<%=request.getParameter("studentNo") %>">
	<input type="hidden" name="studentName" value="<%=request.getParameter("studentName") %>"> --%>
	
	<br>
	<%-- <% Cookie cookie=new Cookie("studentName",request.getParameter("studentName"));
	response.addCookie(cookie);
	
	 %> --%>
	 <br>
	 
	
	<input type="submit" value="final">
	
		
	</form>

</body>
</html>
