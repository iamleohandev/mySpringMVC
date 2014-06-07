<%@include file="include.jsp"%>

<title>Home</title>
</head>
<body>

	<h2>Welcome to Home Page!!</h2>

	<div>
		<spring:message code="languate_test" />
		: <a href="?language=en"><spring:message code="english" /> </a>|<a
			href="?language=zh_CN"><spring:message code="chinese" /></a>
	</div>

	<p>
		<a href="<c:url value="/actors" />"><spring:message code="show_all_actor" /></a>
	</p>


	<p>
		<a href="<c:url value="/addactor" />"><spring:message code="create_new_actor" /></a>
	</p>

</body>
</html>