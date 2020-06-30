<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:substring() and fn:substringBefore() and fn:substringAfter() Tag Example</title>
</head>
<body>
	<h3>fn:substring() and fn:substringBefore() and fn:substringAfter() Tag</h3><br>
	<h2>The fn:substring() function returns a subset of a string specified by start and end indices.</h2>
		<c:set var = "string1" value = "This is first String."/>
		<p>Original String is:- ${string1} </p>
      	<c:set var = "string2" value = "${fn:substring(string1, 5, 15)}" />
      	<p>Pick its substring from 5th to 15th chars:-  ${string2}</p>
    <br>
    <h2>The fn:substringAfter() function returns the part of a string after a specified substring.</h2>
		<c:set var = "string1" value = "This is first String."/>
		<p>Original String is:- ${string1} </p>
      	<c:set var = "string2" value = "${fn:substringAfter(string1, 'is')}"/>
      	<p>Pick its substring after 'is':-  ${string2}</p>
    <br>
    <h2>The fn:substringBefore() function returns the part of a string before a specified substring.</h2>
		<c:set var = "string1" value = "This is first String."/>
		<p>Original String is:- ${string1} </p>
      	<c:set var = "string2" value = "${fn:substringBefore(string1, 'first')}" />
      	<p>Pick its substring before 'first':-  ${string2}</p>
    <br>  
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>