<%@include file="include.jsp"%>

<title>Add Actor</title>
</head>
<body>

	<h2>Add Actor</h2>
	<c:url value="/addactorresult" var="form_path"/>
	
	<form:form action="${form_path}" method="post" commandName="actor">
		<table>
			<tr>
				<td>First Name:</td>
				<td><form:input path="first_name" name="first_name" type="text" /></td>
				<td><form:errors  path="first_name"/></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><form:input path="last_name"  name="last_name" type="text" /></td>
				<td><form:errors  path="last_name"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input name="Submit" type="submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>