<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>SHU Register </title>

	</head>
	<body>
		<p> Use this to sign in </p>


		<g:form name="Register" id="registration"  action="processAttendance" method="GET"  >

		<p>Student Number:</p><g:textField name="student" id="student" value="" />
		<p> Class Name:</p><g:textField name="course" id="course" value="" />
		<p><g:submitButton name="Register" value="Register" /></p>
		<br>
		</g:form>




	</body>
</html>

