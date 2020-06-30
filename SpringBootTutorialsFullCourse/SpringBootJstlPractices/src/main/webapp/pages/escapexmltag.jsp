<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> fn:ecapeXml Tag Example</title>
</head>
<body>
	<h3>fn:escapeXml Tag</h3><br>
	<h2>The fn:escapeXml() function escapes characters that can be interpreted as XML markup.</h2>


	<br>
	<c:set var = "string1" value = "This is first String."/>
      <c:set var = "string2" value = "This <abc>is second String.</abc>"/>

      <p>With escapeXml() Function:</p>
      <p>string (1) : ${fn:escapeXml(string1)}</p>
      <p>string (2) : ${fn:escapeXml(string2)}</p>

      <p>Without escapeXml() Function:</p>
      <p>string (1) : ${string1}</p>
      <p>string (2) : ${string2}</p>
      
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>