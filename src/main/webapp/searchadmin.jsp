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
<title>Search</title>
</head>
<body>
	<h1>Admin Home Page</h1>
		<div class="right">
		<a href="logout.jsp" class="fake-button" >Logout</a>
		</div>
		<a href="adminDash.jsp" class="fake-button">Home</a>
		<a href="AddCrossing.jsp" class="fake-button">Add Railway Crossing </a>
		<form method="post" action="searchrailadmin.jsp">
		<div class="center">
			<table >
				<tr valign="top">
					<td width="40%">Enter Name</td>
					<td><input type="text" name="txtRname" maxlength="30" "></td>
				</tr>
				<tr valign="top">
					<td colspan="2" align="center" width="100%">
						<input type="submit" value="search" >
					</td>
				</tr>
				</table>
				</div>
				</form>
</body>
</html>