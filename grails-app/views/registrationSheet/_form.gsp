<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'class_regclass', 'error')} required">
	<label for="class_regclass">
		<g:message code="registrationSheet.class_regclass.label" default="Classregclass" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_regclass" name="class_regclass.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${registrationSheetInstance?.class_regclass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'classes_many_entries', 'error')} ">
	<label for="classes_many_entries">
		<g:message code="registrationSheet.classes_many_entries.label" default="Classesmanyentries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.classes_many_entries?}" var="c">
    <li><g:link controller="registerEntry" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="registrationSheet.date.label" default="Date" />
		
	</label>
	<g:textField name="date" value="${registrationSheetInstance?.date}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="registrationSheet.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${registrationSheetInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentSignature', 'error')} ">
	<label for="studentSignature">
		<g:message code="registrationSheet.studentSignature.label" default="Student Signature" />
		
	</label>
	<g:textField name="studentSignature" value="${registrationSheetInstance?.studentSignature}"/>
</div>

