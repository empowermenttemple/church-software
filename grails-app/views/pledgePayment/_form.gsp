<%@ page import="com.empowerment.PledgePayment" %>



<div class="fieldcontain ${hasErrors(bean: pledgePaymentInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="pledgePayment.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: pledgePaymentInstance, field: 'amount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgePaymentInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="pledgePayment.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createdBy" required="" value="${pledgePaymentInstance?.createdBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgePaymentInstance, field: 'dateModified', 'error')} required">
	<label for="dateModified">
		<g:message code="pledgePayment.dateModified.label" default="Date Modified" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateModified" precision="day"  value="${pledgePaymentInstance?.dateModified}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pledgePaymentInstance, field: 'pledges', 'error')} required">
	<label for="pledges">
		<g:message code="pledgePayment.pledges.label" default="Pledges" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pledges" name="pledges.id" from="${com.empowerment.Pledges.list()}" optionKey="id" required="" value="${pledgePaymentInstance?.pledges?.id}" class="many-to-one"/>

</div>

