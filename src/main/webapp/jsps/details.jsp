<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>

	<h3>
		<c:out value="${title}"></c:out>
	</h3>

	<table border="1">
		<tr>
			<td>Actor ID</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Last Update</td>
		</tr>

		<c:forEach var="actor" items="${actors}">
			<tr>
				<td><c:out value="${actor.actor_id}"></c:out></td>
				<td><c:out value="${actor.first_name}"></c:out></td>
				<td><c:out value="${actor.last_name}"></c:out></td>
				<td><c:out value="${actor.last_update}"></c:out></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>