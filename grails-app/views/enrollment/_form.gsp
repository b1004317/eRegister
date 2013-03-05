<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="enrollment.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${enrollmentInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="enrollment.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${enrollmentInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'studentID', 'error')} ">
	<label for="studentID">
		<g:message code="enrollment.studentID.label" default="Student ID" />
		
	</label>
	<g:textField name="studentID" value="${enrollmentInstance?.studentID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="enrollment.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${enrollmentInstance?.studentName}"/>
</div>

