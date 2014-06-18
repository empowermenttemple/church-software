
<%@ page import="com.empowerment.Pledges" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pledges.label', default: 'Pledges')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pledges" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pledges" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="datemodified" title="${message(code: 'pledges.datemodified.label', default: 'Datemodified')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'pledges.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'pledges.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'pledges.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="pledges.member.label" default="Member" /></th>
					
						<th><g:message code="pledges.pledge.label" default="Pledge" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pledgesInstanceList}" status="i" var="pledgesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pledgesInstance.id}">${fieldValue(bean: pledgesInstance, field: "datemodified")}</g:link></td>
					
						<td>${fieldValue(bean: pledgesInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: pledgesInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${pledgesInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: pledgesInstance, field: "member")}</td>
					
						<td>${fieldValue(bean: pledgesInstance, field: "pledge")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pledgesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
