<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'page8.jsp' starting page</title>
    
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
     <br>
     <% String studentNo=request.getParameter("studentNo");
     
     String studentName=request.getParameter("studentName");
     String URL="page10.jsp?studentNo=" + studentNo;
     URL=response.encodeUrl(URL +  "&studentName=" + studentName);
      %>
      
      <form action="page10.jsp" >
      <a href="<%= URL %>">FinalPage</a>
      <input type="hidden" name="studentNameTest" value="<%=studentName  %>>"/>
      <input type="submit" value="page10" />
      </form>
  </body>
</html>
