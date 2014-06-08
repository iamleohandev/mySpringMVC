<%@include file="include.jsp"%>

<div class="menu">
	Menu
	<ul>
		<li><spring:message code="languate_test" /> : <a
			href="?language=en"><spring:message code="english" /> </a>|<a
			href="?language=zh_CN"><spring:message code="chinese" /> </a></li>
		<li><a href="<c:url value="/actors" />"><spring:message
					code="show_all_actor" /></a></li>
		<li><a href="<c:url value="/addactor" />"><spring:message
					code="create_new_actor" /></a></li>
	</ul>
</div>

