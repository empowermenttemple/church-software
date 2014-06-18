
<%@ page import="com.empowerment.PledgePayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pledgePayment.label', default: 'PledgePayment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pledgePayment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pledgePayment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="amount" title="${message(code: 'pledgePayment.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'pledgePayment.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'pledgePayment.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="dateModified" title="${message(code: 'pledgePayment.dateModified.label', default: 'Date Modified')}" />
					
						<th><g:message code="pledgePayment.pledges.label" default="Pledges" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pledgePaymentInstanceList}" status="i" var="pledgePaymentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pledgePaymentInstance.id}">${fieldValue(bean: pledgePaymentInstance, field: "amount")}</g:link></td>
					
						<td>${fieldValue(bean: pledgePaymentInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${pledgePaymentInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${pledgePaymentInstance.dateModified}" /></td>
					
						<td>${fieldValue(bean: pledgePaymentInstance, field: "pledges")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pledgePaymentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
