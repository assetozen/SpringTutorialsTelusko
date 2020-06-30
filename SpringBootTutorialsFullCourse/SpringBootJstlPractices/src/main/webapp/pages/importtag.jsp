<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:import Tag Example</title>
</head>
<body>

<c:import var="data" url="http://www.google.com"></c:import>
<c:out value="${data}"></c:out>

<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>