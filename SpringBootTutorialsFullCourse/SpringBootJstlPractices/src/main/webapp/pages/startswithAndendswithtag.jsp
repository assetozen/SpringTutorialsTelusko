<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:startsWith() and fn:endsWith() Tag Example</title>
</head>
<body>
	<h3>fn:startsWith() and fn:endsWith() Tag</h3><br>
	<h2>The fn:startsWith() function determines if an input string starts with a specified substring.</h2>
	<h2>The fn:endsWith() function determines if an input string ends with a specified suffix.</h2>


	<h2>Starts with</h2>
	  <c:set var = "string" value = "Second: This is first String."/>
      		<c:out value="The String to be checked: ' ${string} ' "></c:out>
      <c:if test = "${fn:startsWith(string, 'First')}">
         <p>String starts with First</p>
      </c:if>
      <br />
      <c:if test = "${fn:startsWith(string, 'Second')}">
         <p>String starts with Second</p>
      </c:if>	


	<br>
	<h2>Ends With</h2>

	 <c:set var = "theString" value = "I am a test String 123"/>
		<c:out value="The String to be checked: ' ${theString} ' "></c:out><br>
      <c:if test = "${fn:endsWith(theString, '123')}">
         <p>String ends with 123<p>
      </c:if>

      <c:if test = "${fn:endsWith(theString, 'TEST')}">
         <p>String ends with TEST<p>
      </c:if>
      
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>