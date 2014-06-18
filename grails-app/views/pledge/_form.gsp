<%@ page import="com.empowerment.Pledge" %>



<div class="fieldcontain ${hasErrors(bean: pledgeInstance, field: 'dateModified', 'error')} ">
	<label for="dateModified">
		<g:message code="pledge.dateModified.label" default="Date Modified" />
		
	</label>
	<g:datePicker name="dateModified" precision="day"  value="${pledgeInstance?.dateModified}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pledgeInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="pledge.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="createdBy" required="" value="${pledgeInstance?.createdBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgeInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="pledge.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${pledgeInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pledgeInstance, field: 'event', 'error')} required">
	<label for="event">
		<g:message code="pledge.event.label" default="Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="event" required="" value="${pledgeInstance?.event}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pledgeInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="pledge.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventDate" precision="day"  value="${pledgeInstance?.eventDate}"  />

</div>

