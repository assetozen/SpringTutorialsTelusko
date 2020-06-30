<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> c:forEach c:forTokens Tag Example</title>
</head>
<body>
	<p style="font-weight:bold">For Each</p>
 	<c:forEach var="i" begin="1" end="5">
 	Item <c:out value="${i}"></c:out>
 	</c:forEach>
 	
 	<br><br>
 	<p style="font-weight:bold">For Tokens</p>
 	<c:forTokens var="name" items="Zara,nuha,roshy" delims=",">
 	Item <c:out value="${name}"></c:out>
 	</c:forTokens>
 

<br><br>      
<form action="/"><input type="submit"  value="Back to home" ></form>      
      
</body>
</html>