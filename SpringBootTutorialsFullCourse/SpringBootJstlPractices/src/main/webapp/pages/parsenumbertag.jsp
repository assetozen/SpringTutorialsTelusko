<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:parseNumber Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:parseNumber Tag</h3>
	<c:set var="balance" value="1250003.350"></c:set>
	
	<c:out value="The actual number is:- ${balance}"></c:out>
	<fmt:parseNumber var="i" value="${balance}" type="number"/>	
	<p> Parsed Number (1): <c:out value="${i}"/></p>
	<fmt:parseNumber var="i" value="${balance}" type="number" integerOnly="true"/>
	<p> Formatted Number (2): <c:out value="${i}"/> </p>
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>