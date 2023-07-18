<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="com.railway.RailDao,com.railway.RailWay,java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<style>
.fake-button {
  font: bold 11px Arial;
  text-decoration: none;
  background-color: #EEEEEE;
  color: #333333;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}
.right {
    text-align: right;
    float: right;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Admin Home Page</h1>
		<div class="right">
		<a href="logout.jsp" class="fake-button" >Logout</a>
		</div>
		<a href="AddCrossing.jsp" class="fake-button">Add Railway Crossing </a>
		<a href="searchadmin.jsp" class="fake-button">Search</a>
		<%  	
		List<RailWay> list=RailDao.getAllRecords();  
		request.setAttribute("list",list); 
		%> 
		<br>
		<table border = "1"  width="100%">  
		<tr><th>Sr.No</th><th>Name</th><th>Address</th><th>Landmark</th><th>Train Schedule</th><th>Person In Charge</th><th>Status</th><th colspan="2">Action</th></tr>
	<c:forEach items = "${list}" var ="u" > 
	<tr><td>${u.getId()}</td>
		 <td>${u.getSName()}</td> 
		 <td>${u.getAddr()}</td> 
		 <td>${u.getLmark()}</td>
		 <td>${u.getTschedule()}</td>
		 <td>${u.getPcharge()}</td>
		 <td>${u.getCstatus()}</td>
		<td><a href="updateform.jsp?id=${u.getId()}">Update</a> 
		<a href="deleterail.jsp?id=${u.getId()}">Delete</a></td></tr>  
	</c:forEach>
	</table>
		
</body>
</html>