
<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-enrollment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="courseID" title="${message(code: 'enrollment.courseID.label', default: 'Course ID')}" />
					
						<g:sortableColumn property="courseName" title="${message(code: 'enrollment.courseName.label', default: 'Course Name')}" />
					
						<g:sortableColumn property="studentID" title="${message(code: 'enrollment.studentID.label', default: 'Student ID')}" />
					
						<g:sortableColumn property="studentName" title="${message(code: 'enrollment.studentName.label', default: 'Student Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${enrollmentInstanceList}" status="i" var="enrollmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${enrollmentInstance.id}">${fieldValue(bean: enrollmentInstance, field: "courseID")}</g:link></td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "courseName")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "studentID")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "studentName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${enrollmentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
