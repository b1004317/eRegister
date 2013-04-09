<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'classes_no_of_Regclass_on_course', 'error')} ">
	<label for="classes_no_of_Regclass_on_course">
		<g:message code="course.classes_no_of_Regclass_on_course.label" default="Classesnoof Regclassoncourse" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.classes_no_of_Regclass_on_course?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseID', 'error')} ">
	<label for="courseID">
		<g:message code="course.courseID.label" default="Course ID" />
		
	</label>
	<g:textField name="courseID" value="${courseInstance?.courseID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="course.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${courseInstance?.instructor?.id}" class="many-to-one"/>
</div>

