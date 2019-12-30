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
<% session.setAttribute("studentNo", request.getParameter("studentNo")); %>
	<form action="page3.jsp" >
	<%-- Student No
	<input type="text" name="studentNo" value="<%=request.getParameter("studentNo") %>">
	<br>
		<%=request.getParameter("studentNo") %> --%>
		<br>
		
		<%-- <%Cookie cookie=new Cookie("studentNo",request.getParameter("studentNo"));
		response.addCookie(cookie);
		 %> --%>
		<br>
		
		<br>
		StudentName : <input type="text" name="studentName"/>
		<br>
		<input type="submit" value="review"/>
	</form>

</body>
</html>
