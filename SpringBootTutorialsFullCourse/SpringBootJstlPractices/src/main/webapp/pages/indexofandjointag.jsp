<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:indexOf() and fn:join() Tag Example</title>
</head>
<body>
	<h3>fn:indexOf() and fn:join() Tag</h3><br>
	<h2>The fn:indexOf() function returns the index within a string of a specified substring.</h2><br>
	<h2>The fn:join() function concatenates all the elements of an array into a string with a specified separator.</h2>



	<br>
	<h2>IndexOf</h2>
    <c:set var = "string1" value = "This is first String."/>
      <c:set var = "string2" value = "This <abc>is second String.</abc>"/>
      <p><c:out value="${string1}:- index of word 'first':"/> Index (1) : ${fn:indexOf(string1, "first")}</p>
      <p><c:out value="${string2}:- index of word 'second':- "/> Index (2) : ${fn:indexOf(string2, "second")}</p>
      
    <br>
    <h2>Join and Split</h2>
   
      <c:set var = "string1" value = "This is first String."/>
    		 <c:out value="Original:- ${string1}"></c:out><br>
      <c:set var = "string2" value = "${fn:split(string1, ' ')}" />
      <c:set var = "string3" value = "${fn:join(string2, '-')}" />
      		 <p>Final String splitted by space ' ' and joined using '-' : ${string3}</p>
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>