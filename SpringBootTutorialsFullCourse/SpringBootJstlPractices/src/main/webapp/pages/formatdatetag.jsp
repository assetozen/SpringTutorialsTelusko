<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fmt:formatDate Tag Example</title>
</head>
<body>
	<h3>JSTL fmt:formatDate Tag</h3>
	
      <c:set var = "now" value = "<%= new java.util.Date()%>" />

	  <c:out value="The default value of the date is: ${now}"></c:out>	
      <p>Formatted Date (1): <fmt:formatDate type = "time" value = "${now}" /></p>
      <p>Formatted Date (2): <fmt:formatDate type = "date" value = "${now}" /></p>
      <p>Formatted Date (3): <fmt:formatDate type = "both" value = "${now}" /></p>
      <p>Formatted Date (4): <fmt:formatDate type = "both" value = "${now}" dateStyle = "short" timeStyle = "short" /></p>
      <p>Formatted Date (5): <fmt:formatDate type = "both" value = "${now}" dateStyle = "medium" timeStyle = "medium" /></p>
      <p>Formatted Date (6): <fmt:formatDate type = "both" value = "${now}" dateStyle = "long" timeStyle = "long" /></p>
      <p>Formatted Date (7): <fmt:formatDate pattern = "yyyy-MM-dd" 
         value = "${now}" /></p>
	<br>
	<br>
	<form action="/">
		<input type="submit" value="Back to home">
	</form>

</body>
</html>