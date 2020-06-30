<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:length() and fn:replace() Tag Example</title>
</head>
<body>
	<h3>fn:length() and fn:replace() Tag</h3><br>
	<h2>The fn:length() function returns the string length or the number of items in a collection.</h2><br>
	<h2>The fn:replace() function replaces all occurrences of a string with another string.</h2>



	<br>
	<h2>Length</h2>
     <c:set var = "string1" value = "This is first String."/>
      <c:set var = "string2" value = "This is second String." />
      <p>Length of '${string1}' : ${fn:length(string1)}</p>
      <p>Length of '${string2}' : ${fn:length(string2)}</p>
      
    <br>
    <h2>Replace</h2>
      <c:set var = "string1" value = "This is first String."/>
      <c:set var = "string2" value = "${fn:replace(string1, 'first', 'second')}" />
      <p>Original String:- ${string1}</p>
      <p>Replce the word 'first' with 'second' and Final String : ${string2}</p>
      
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>