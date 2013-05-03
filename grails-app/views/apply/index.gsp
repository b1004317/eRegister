<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>SHU Register </title>

	</head>
	<body>
		<p> Use this to sign in </p>


		<g:form name="Register" id="registration" action="processAttendance"  >

		<p>Student Number:</p><g:textField name="student" id="student" value="${studentNumber}" />
		<p> Class Name:</p><g:textField name="class" id="class" value="${courseName}" />
		<p><g:submitButton name="Register" value="Register" /></p>
		<br>
		</g:form>



	</body>
</html>

