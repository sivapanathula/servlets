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

	<%-- StudentNo :
	<%=request.getParameter("studentNo") %>
	<br>
	StudentName	:
	<%=request.getParameter("studentName") %> --%>
	<br>
	
	<%-- <% Cookie[] cookies=request.getCookies();
	
	Cookie cookie=null;
	for(int i=0;i<cookies.length;i++){
	cookie=cookies[i];
	out.println(cookie.getName() + " : " + cookie.getValue());
	}
	 %> --%>
	
	<br>
	StudentNo:
	<%=session.getAttribute("studentNo") %>
	<br>
	StudentName :
	<%=session.getAttribute("studentName") %>
	

</body>
</html>
