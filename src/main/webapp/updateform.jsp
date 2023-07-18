<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.center{
justify-content: center;
display: flex;
margin: 50px 10px;
padding: 50px;
}
td {
  text-align: center;
  padding: 5px;
}
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
<title>update form</title>
</head>
<body>
		<%@page import="com.railway.RailDao,com.railway.RailWay"%> 
		
		<%	String id = request.getParameter("id");
		RailWay  rail = RailDao.getRecordById(Integer.parseInt(id));
		%>
		
		<h1>Edit Details</h1>
		
			<div class="right">
		<a href="logout.jsp" class="fake-button" >Logout</a>
		</div>
		<a href="adminDash.jsp" class="fake-button">Home</a>
		<a href="searchadmin.jsp" class="fake-button">Search</a>
		<div class="center">
		<form method="post" action="updateRail.jsp">
			<table >
			
				<tr valign="top">
					<td width="40%">Enter Name</td>
				</tr>
				<tr valign="top">
					<td><input type="text" name="txtRname" maxlength="30" value= "<%=rail.getSName()%>"></td>
					<input type="hidden" name="id" value= "<%=rail.getId()%>"/>
				</tr>
				<tr valign="top">
					<td width="40%">Enter Status</td>
									</tr>
									<tr valign="top">
					<td width="40%">Currently <%=rail.getCstatus()%></td>
									</tr>
					<tr valign="top">
					<td><input type="radio" name="txtstatus" value= "open">open
					<input type="radio" name="txtstatus" value= "close">close</td>
				</tr>
				<tr valign="top">
					<td width="40%">Person In Charge</td>
					</tr>
					<tr valign="top">
					<td><input type="text" name="txtpinc" value= "<%=rail.getPcharge()%>"></td>
				</tr>
				<tr valign="top">
					<td width="40%">Schedule</td>
					</tr>
					<tr valign="top">
					<td><input type="text" name="txtsec" value= "<%=rail.getTschedule()%>"></td>
				</tr>
				<tr valign="top">
					<td width="40%">LandMark</td>
					</tr>
					<tr valign="top">
					<td><input type="text" name="txtlm" value= "<%=rail.getLmark()%>"></td>
				</tr>
				<tr valign="top">
					<td width="40%">Address</td>
					</tr>
					<tr valign="top">
					<td><input type="text" name="txtaddr" value= "<%=rail.getAddr()%>"></td>
				</tr>
				<tr valign="top">
					<td colspan="2" align="center" width="100%">
						<input type="submit" value="update" >
					</td>
				</tr>
				 <tr valign="top">
					<td colspan="2" align="center" width="100%">
					</td>
				</tr>
			</table>
		</form>
		</div>
		
</body>
</html>