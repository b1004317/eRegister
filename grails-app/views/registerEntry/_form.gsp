<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>



<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'class_registrationsheet', 'error')} required">
	<label for="class_registrationsheet">
		<g:message code="registerEntry.class_registrationsheet.label" default="Classregistrationsheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_registrationsheet" name="class_registrationsheet.id" from="${uk.ac.shu.webarch.eregister.RegistrationSheet.list()}" optionKey="id" required="" value="${registerEntryInstance?.class_registrationsheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'class_student', 'error')} required">
	<label for="class_student">
		<g:message code="registerEntry.class_student.label" default="Classstudent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_student" name="class_student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${registerEntryInstance?.class_student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="registerEntry.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${registerEntryInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'studentID', 'error')} ">
	<label for="studentID">
		<g:message code="registerEntry.studentID.label" default="Student ID" />
		
	</label>
	<g:textField name="studentID" value="${registerEntryInstance?.studentID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="registerEntry.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${registerEntryInstance?.studentName}"/>
</div>

