
<%@ page import="com.empowerment.Pledges" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pledges.label', default: 'Pledges')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pledges" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pledges" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pledges">
			
				<g:if test="${pledgesInstance?.datemodified}">
				<li class="fieldcontain">
					<span id="datemodified-label" class="property-label"><g:message code="pledges.datemodified.label" default="Datemodified" /></span>
					
						<span class="property-value" aria-labelledby="datemodified-label"><g:formatDate date="${pledgesInstance?.datemodified}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pledgesInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="pledges.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${pledgesInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pledgesInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="pledges.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${pledgesInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pledgesInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="pledges.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${pledgesInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pledgesInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="pledges.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${pledgesInstance?.member?.id}">${pledgesInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pledgesInstance?.pledge}">
				<li class="fieldcontain">
					<span id="pledge-label" class="property-label"><g:message code="pledges.pledge.label" default="Pledge" /></span>
					
						<span class="property-value" aria-labelledby="pledge-label"><g:link controller="pledge" action="show" id="${pledgesInstance?.pledge?.id}">${pledgesInstance?.pledge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pledgesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pledgesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
