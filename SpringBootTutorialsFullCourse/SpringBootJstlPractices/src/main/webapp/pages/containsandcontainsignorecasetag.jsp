<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:contains and fn:containsIgnoreCase Tag Example</title>
</head>
<body>
	<h3>fn:contains and fn:containsIgnoreCase Tag</h3><br>
	<h2>The fn:contains() function determines whether an input string contains a specified substring.</h2><br>
	<h2>The fn:containsIgnoreCase() function determines whether an input string contains a specified substring. While doing search it ignores the case.</h2>


	<br>
	<h2>Contains</h2>
	 <c:set var = "theString" value = "I am a test String"/>

      <c:if test = "${fn:contains(theString, 'test')}">
         <p>Found test string<p>
      </c:if>

      <c:if test = "${fn:contains(theString, 'TEST')}">
         <p>Found TEST string<p>
      </c:if>
      <br>
      
      <h2>Contains Ignore case</h2>
      <c:set var = "theString" value = "I am a test String"/>

      <c:if test = "${fn:containsIgnoreCase(theString, 'test')}">
         <p>Found test string<p>
      </c:if>

      <c:if test = "${fn:containsIgnoreCase(theString, 'TEST')}">
         <p>Found TEST string<p>
      </c:if>
      
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>