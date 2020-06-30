<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:formatNumber Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:formatNumber Tag</h3>
	<c:set var="balance" value="120000.2309"></c:set>
	<c:out value="The actual number is:- ${balance}"></c:out>	
	<p> Formatted Number (1): <fmt:formatNumber value="${balance}" type="currency"/> </p>
	<p> Formatted Number (2): <fmt:formatNumber value="${balance}" type="number" maxIntegerDigits="3"/> </p>
	<p> Formatted Number (3): <fmt:formatNumber value="${balance}" type="number" maxFractionDigits="3"/> </p>
	<p> Formatted Number (4): <fmt:formatNumber value="${balance}" type="number" groupingUsed="false"/> </p>
	<p> Formatted Number (5): <fmt:formatNumber value="${balance}" type="percent" maxIntegerDigits="3"/> </p>
	<p> Formatted Number (6): <fmt:formatNumber value="${balance}" type="percent" maxFractionDigits="10"/> </p>
	<p> Formatted Number (7): <fmt:formatNumber value="${balance}" type="percent" maxIntegerDigits="3"/> </p>
	<p> Formatted Number (8): <fmt:formatNumber value="${balance}" type="percent" pattern="###.###E0"/> </p>
	
	<p> Currency in USA : 	<fmt:setLocale value="en_US"/>
							<fmt:formatNumber value="${balance}" type="currency" /> </p>
	
	
	

	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>