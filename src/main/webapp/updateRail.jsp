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
String id = request.getParameter("id");
String name = request.getParameter("txtRname");
String status = request.getParameter("txtstatus");
String pcharge = request.getParameter("txtpinc");
String tschedule = request.getParameter("txtsec");
String lmark = request.getParameter("txtlm");
String addr = request.getParameter("txtaddr");
RailDao.update(id,name,status,pcharge,tschedule,lmark,addr);
response.sendRedirect("adminDash.jsp");   
%>
</body>
</html>