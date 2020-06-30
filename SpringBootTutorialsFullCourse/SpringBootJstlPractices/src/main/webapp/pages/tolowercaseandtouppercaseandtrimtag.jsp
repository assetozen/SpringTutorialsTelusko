<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:toLowerCase() and fn:toUpperCase() and fn:trim() Tag Example</title>
</head>
<body>
	<h3>fn:toLowerCase() and fn:toUpperCase() and fn:trim() Tag</h3><br>
	<h2>The fn:toLowerCase() function converts all the characters of a string to lowercase.</h2>
		<c:set var = "string1" value = "This is first String."/>
		<p>Original String is:- ${string1} </p>
      	<c:set var = "string2" value = "${fn:toLowerCase(string1)}" />
      	<p>To lower case:-  ${string2}</p>
    <br>
    <h2>The fn:toUpperCase() function converts all the characters of a string to uppercase.</h2>
		<c:set var = "string1" value = "This is first String."/>
		<p>Original String is:- ${string1} </p>
      	<c:set var = "string2" value = "${fn:toUpperCase(string1)}"/>
      	<p>To upper case:-  ${string2}</p>
    <br>
    <h2>The fn:trim() function removes white space from both ends of a string.</h2>
		<c:set var = "string1" value = "           This is first String        ."/>
		<p>Original String is:- ${string1} </p>
		<p>Original String length before trim:- ${fn:length(string1)} </p>
      	<c:set var = "string2" value = "${fn:trim(string1)}" />
      	<p>String after trimmed :-  ${string2}</p>
      	<p>Trimmed String length:- ${fn:length(string2)} </p>
      	
    <br>  
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>