<%@include file="common/include.jsp"%>
<html>
<head>
<title>Login Page</title>
</head>
<body onload='document.f.j_username.focus();'>


	<div>
		<h3>Leo Login page</h3>
		<form name='f' action='${j_spring_security_check_url}' method='POST'>
			<table>
				<tr>
					<td>User:</td>
					<td><input type='text' name='j_username' value=''></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='j_password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="Login" /></td>
				</tr>
			</table>
		</form>
	</div>

	<div>
		<a href="<c:url value="/adduser" />">Register a new user</a>
	</div>
</body>
</html>