<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:choose Tag Example</title>
</head>
<body>
<h2> choose tag also contains when and otherwise tags in it, acts like switch case in java</h2>

<c:set var="salary" scope="session" value="${2000*2}"></c:set>
	<p>Your salary is: <c:out value="${salary}"></c:out></p>
<c:choose>
<c:when test="${salary < 1000 }">Salary is too low</c:when>
<c:when test="${salary > 2000 }">Salary is very good</c:when>
<c:otherwise>No Comment</c:otherwise>
</c:choose>

<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>