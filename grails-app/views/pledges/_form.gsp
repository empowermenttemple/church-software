<%@ page import="com.empowerment.Pledges" %>



<div class="fieldcontain ${hasErrors(bean: pledgesInstance, field: 'datemodified', 'error')} ">
	<label for="datemodified">
		<g:message code="pledges.datemodified.label" default="Datemodified" />
		
	</label>
	<g:datePicker name="datemodified" precision="day"  value="${pledgesInstance?.datemodified}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pledgesInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="pledges.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: pledgesInstance, field: 'amount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgesInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="pledges.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createdBy" required="" value="${pledgesInstance?.createdBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgesInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="pledges.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${com.empowerment.Member.list()}" optionKey="id" required="" value="${pledgesInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgesInstance, field: 'pledge', 'error')} required">
	<label for="pledge">
		<g:message code="pledges.pledge.label" default="Pledge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pledge" name="pledge.id" from="${com.empowerment.Pledge.list()}" optionKey="id" required="" value="${pledgesInstance?.pledge?.id}" class="many-to-one"/>

</div>

