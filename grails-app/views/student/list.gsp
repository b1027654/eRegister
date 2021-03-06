
<%@ page import="uk.ac.shu.webarch.eregister.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-student" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="studentID" title="${message(code: 'student.studentID.label', default: 'Student ID')}" />
					
						<th><g:message code="student.course.label" default="Course" /></th>
					
						<g:sortableColumn property="height" title="${message(code: 'student.height.label', default: 'Height')}" />
					
						<g:sortableColumn property="learningCentreNumber" title="${message(code: 'student.learningCentreNumber.label', default: 'Learning Centre Number')}" />
					
						<g:sortableColumn property="studentName" title="${message(code: 'student.studentName.label', default: 'Student Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentInstanceList}" status="i" var="studentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "studentID")}</g:link></td>
					
						<td>${studentInstance.course.courseName}</td>
					
						<td>${fieldValue(bean: studentInstance, field: "height")}</td>
					
						<td>${fieldValue(bean: studentInstance, field: "learningCentreNumber")}</td>
					
						<td>${fieldValue(bean: studentInstance, field: "studentName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
