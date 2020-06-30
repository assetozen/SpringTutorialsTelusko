<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:catch Tag Example</title>
</head>
<body>
 <c:url var="myURL" value="/">
    <c:param name="aid" value="101"></c:param>
    <c:param name="aname" value="Assegd"></c:param>
    <c:param name="lang" value="Java"></c:param>
 </c:url>
 <c:import url="${myURL}"/>
 <c:out value="${myURL}"></c:out>
<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>