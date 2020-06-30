<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:if Tag Example</title>
</head>
<body>
 <c:set var="salary" scope="session" value="${2000*2}"/>
 <c:if test="${salary > 2000 }">My salary is:- <c:out value="${salary}"></c:out></c:if>

<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>