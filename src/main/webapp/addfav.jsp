<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.railway.RailDao"%> 
<% 
int id = Integer.parseInt(request.getParameter("id"));
RailDao.addFav(id);
response.sendRedirect("UserDash.jsp");   
%>
</body>
</html>