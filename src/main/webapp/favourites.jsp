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
.open { 
    background-color: green; 
}
.close { 
    background-color: red; 
}
</style>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
</head>
<body> 
		<h1>User Home Page</h1>
		<div class="right">
		<a href="logout.jsp" class="fake-button" >Logout</a>
		</div>
		<a href="UserDash.jsp" class="fake-button">Home</a>
		<a href="searchuser.jsp" class="fake-button">Search</a>
		<%  	
		List<RailWay> list= RailDao.getAllfav();  
		request.setAttribute("list",list); 
		%> 
		<br>
<table  border = "1" width="100%">  
	<c:forEach items = "${list}" var ="u" > 
	<tr><td>
		 <h1>${u.getSName()}</h1><br>
		 <c:choose>
		 	<c:when test ="${u.getCstatus()=='open'}">
		 Crossing Status : <span class = "open">${u.getCstatus()}</span> <br>
		 	</c:when>
		 	<c:otherwise>
		 	Crossing Status : <span class = "close">${u.getCstatus()}</span> <br>
		 	</c:otherwise>
		 	</c:choose>
		 Person In Charge : ${u.getPcharge()} <br>
		 Train Schedule : ${u.getTschedule()} <br>
		 Landmark : ${u.getLmark()} <br>
		 Address : ${u.getAddr()}<br>
		<c:choose>
		<c:when test ="${u.getFav()=='no'||u.getFav()==null}">
		<a href="addfav.jsp?id=${u.getId()}" class="fake-button">Add  Favourite</a>
		</c:when>
		<c:otherwise>
		<a href="delfav.jsp?id=${u.getId()}" class="fake-button">Remove Favourite</a>
		</c:otherwise>
		</c:choose>
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>