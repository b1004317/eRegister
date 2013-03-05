
<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'RegistrationSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registrationSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationSheet">
			
				<g:if test="${registrationSheetInstance?.class_regclass}">
				<li class="fieldcontain">
					<span id="class_regclass-label" class="property-label"><g:message code="registrationSheet.class_regclass.label" default="Classregclass" /></span>
					
						<span class="property-value" aria-labelledby="class_regclass-label"><g:link controller="regClass" action="show" id="${registrationSheetInstance?.class_regclass?.id}">${registrationSheetInstance?.class_regclass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.classes_many_entries}">
				<li class="fieldcontain">
					<span id="classes_many_entries-label" class="property-label"><g:message code="registrationSheet.classes_many_entries.label" default="Classesmanyentries" /></span>
					
						<g:each in="${registrationSheetInstance.classes_many_entries}" var="c">
						<span class="property-value" aria-labelledby="classes_many_entries-label"><g:link controller="registerEntry" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="registrationSheet.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:fieldValue bean="${registrationSheetInstance}" field="date"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.studentName}">
				<li class="fieldcontain">
					<span id="studentName-label" class="property-label"><g:message code="registrationSheet.studentName.label" default="Student Name" /></span>
					
						<span class="property-value" aria-labelledby="studentName-label"><g:fieldValue bean="${registrationSheetInstance}" field="studentName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.studentSignature}">
				<li class="fieldcontain">
					<span id="studentSignature-label" class="property-label"><g:message code="registrationSheet.studentSignature.label" default="Student Signature" /></span>
					
						<span class="property-value" aria-labelledby="studentSignature-label"><g:fieldValue bean="${registrationSheetInstance}" field="studentSignature"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registrationSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${registrationSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
