<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="true"%>
<html>
<head>
<title>Welcome</title>
</head>
<body>
	<sec:authorize access="isAnonymous()">
		<h1>Welcome to our Bank Account Management System</h1>
		<h3>
			Already user? <a href="/login">Login Here</a>
		</h3>
		<h3>
			<a href="/register">Register Here</a>
		</h3>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<a href="/staff">Go to Staff Page</a><br />
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')">
		<a href="/customer">Go to Customer Page</a><br />
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
	    <a href="<c:url value="/logout" />">Logout</a>
	</sec:authorize>
</body>
</html>
