<%@include file="include.jsp"%>

<title>Add Actor</title>
</head>
<body>

	<h2>Add Actor</h2>
	<form action="<c:url value="/addactorresult" />" method="post">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input name="first_name" type="text" /></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input name="last_name" type="text" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input name="Submit" type="submit" /></td>
			</tr>
		</table>
	</form>

</body>
</html>