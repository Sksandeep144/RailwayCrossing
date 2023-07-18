<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
.center{
justify-content: center;
display: flex;
margin: 50px 10px;
padding: 50px;
}
tcenter {
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
</head>
<body>
	<h1>User Home Page</h1>
		<div class="right">
		<a href="logout.jsp" class="fake-button" >Logout</a>
		</div>
		<a href="UserDash.jsp" class="fake-button">Home</a>
		<a href="favourites.jsp" class="fake-button">Favourites </a>
		<form method="post" action="searchrailuser.jsp">
		<div class="center">
			<table >
				<tr valign="top">
					<td class ="tcenter" width="40%">Enter Name</td>
					<td class ="tcenter"><input type="text" name="txtRname" maxlength="30" "></td>
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