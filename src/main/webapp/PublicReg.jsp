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
.fcc-btn {
  background-color: #199319;
  color: white;
  padding: 15px 25px;
  text-decoration: none;
}
td {
  text-align: center;
  padding: 5px;
}
</style>
<meta charset="ISO-8859-1">
<title>UserRegistration</title>
</head>
<body>
<h2 align="center">Railway Crossing</h2>
<h2 align="center">User Register</h2>
	<div class="center">
		<form method="post" action="Register">
			<table >
				<tr valign="top">
					<td width="40%">Enter Name</td>
				</tr>
				<tr valign="top">
					<td><input type="text" name="txtname" maxlength="30" required=""></td>
				</tr>
				<tr valign="top">
					<td width="40%">Enter Email</td>
									</tr>
					<tr valign="top">
					<td><input type="email" name="txtemail" required=""></td>
				</tr>
				<tr valign="top">
					<td width="40%">Enter Password</td>
					</tr>
					<tr valign="top">
					<td><input type="password" name="txtpwd" required=""></td>
				</tr>
				<tr valign="top">
					<td colspan="2" align="center" width="100%">
						<input type="submit" value="Register"  class = "fcc-btn">
					</td>
				</tr>
				 <tr valign="top">
					<td colspan="2" align="center" width="100%">
					</td>
				</tr>
				<tr valign="top">
					<td colspan="2" align="center" width="100%">
						Already have an account ? <a href="UserLogin.jsp">Sign in instead</a> 
					</td>
				</tr>
			</table>
		</form>
		</div>
</body>
</html>