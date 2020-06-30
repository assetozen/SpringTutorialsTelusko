<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:parseDate Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:parseDate Tag</h3>
	
      <c:set var = "now" value = "20-10-2010" />
      <fmt:parseDate value = "${now}" var = "parsedEmpDate" pattern = "dd-MM-yyyy" />
      <p>Parsed Date: <c:out value = "${parsedEmpDate}" /></p>

	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>